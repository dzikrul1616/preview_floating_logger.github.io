import 'package:floating_logger/floating_logger.dart';
import 'package:preview_flutter_floating_logger/main.dart';
import '../pages/pages.dart';
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
    switch (settings.name) {
      case MyHomePage.routeName:
        return pageRoute(
          const MyHomePage(),
        );
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
