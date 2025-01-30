import 'package:device_preview/device_preview.dart';
import 'package:floating_logger/floating_logger.dart';
import '../pages/detail_item.dart';
import '../pages/home_page.dart';
import '../pages/list_page.dart';
import '../pages/developper_page.dart';
import 'frame.dart';
import 'preferences.dart';

class RouteGenerator {
  static MaterialPageRoute<dynamic> pageRoute(
    Widget page, {
    bool isWithoutTest = false,
  }) =>
      MaterialPageRoute(
        builder: (_) => isWithoutTest
            ? page
            : FloatingLoggerControl(
                getPreference: () async =>
                    await CustomSharedPreferences.getDebugger(),
                child: page,
              ),
      );

  static Route<dynamic> generateRoute(
    RouteSettings settings,
  ) {
    final args = settings.arguments;
    switch (settings.name) {
      case MyHomePage.routeName:
        return pageRoute(
          const MyHomePage(),
        );
      case ListPage.routeName:
        return pageRoute(
          const ListPage(),
        );
      case DetailItem.routeName:
        if (args is DetailModel) {
          return pageRoute(
            DetailItem(
              param: args,
            ),
          );
        }
        return MaterialPageRoute(builder: (context) {
          return const MyHomePage();
        });
      case DevelopperMode.routeName:
        return pageRoute(
          const DevelopperMode(),
          isWithoutTest: true,
        );

      default:
        return MaterialPageRoute(builder: (context) {
          return const MyHomePage();
        });
    }
  }
}

class CustomDeviceFrame extends StatelessWidget {
  const CustomDeviceFrame({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final bounds = info.screenPath.getBounds();
    final frameSize = info.frameSize;
    var stack = Center(
      child: ClipRect(
        child: SizedBox(
          width: frameSize.width,
          height: frameSize.height,
          child: Stack(
            children: [
              Positioned.fill(
                key: const Key('frame'),
                child: CustomPaint(
                  key: ValueKey(info.identifier),
                  painter: const FramePainter(),
                ),
              ),
              Positioned(
                key: const Key('Screen'),
                left: bounds.left,
                top: bounds.top,
                width: bounds.width,
                height: bounds.height,
                child: ClipPath(
                  clipper: _ScreenClipper(
                    info.screenPath,
                  ),
                  child: FittedBox(
                    child: SizedBox(
                      width: info.screenSize.width,
                      height: info.screenSize.height,
                      child: MediaQuery(
                        data: MediaQueryData(
                          size: Size(
                              info.screenSize.width, info.screenSize.height),
                          padding: info.safeAreas,
                          viewPadding: info.safeAreas,
                          viewInsets: EdgeInsets.zero,
                          devicePixelRatio: info.pixelRatio,
                        ),
                        child: Theme(
                          data: ThemeData(
                              platform: info.identifier.platform,
                              visualDensity: [
                                DeviceType.desktop,
                                DeviceType.laptop,
                              ].contains(info.identifier.type)
                                  ? VisualDensity.compact
                                  : null),
                          child: child,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    return FittedBox(
      child: RotatedBox(
        quarterTurns: 0,
        child: stack,
      ),
    );
  }
}

class _ScreenClipper extends CustomClipper<Path> {
  const _ScreenClipper(this.path);

  final Path? path;

  @override
  Path getClip(Size size) {
    final path = (this.path ?? (Path()..addRect(Offset.zero & size)));
    final bounds = path.getBounds();
    var transform = Matrix4.translationValues(-bounds.left, -bounds.top, 0);

    return path.transform(transform.storage);
  }

  @override
  bool shouldReclip(_ScreenClipper oldClipper) {
    return oldClipper.path != path;
  }
}
