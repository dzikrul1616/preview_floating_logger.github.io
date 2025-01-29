import 'package:floating_logger/floating_logger.dart';
import 'package:preview_flutter_floating_logger/main.dart';
import 'package:preview_flutter_floating_logger/utils/preferences.dart';

class DevelopperMode extends StatefulWidget {
  static const routeName = '/developper';
  const DevelopperMode({super.key});

  @override
  State<DevelopperMode> createState() => _DevelopperModeState();
}

class _DevelopperModeState extends State<DevelopperMode> {
  final ValueNotifier<bool> isShowDebuggerNotifier = ValueNotifier<bool>(true);
  bool preferences = false;
  @override
  void initState() {
    getSettings();
    super.initState();
  }

  Future<void> getSettings() async {
    try {
      bool pref = await newMethod();
      setState(() {
        isShowDebuggerNotifier.value = pref;
        preferences = true;
      });
    } catch (e) {
      Exception(e);
    }
  }

  Future<bool> newMethod() async {
    return await CustomSharedPreferences.getDebugger();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingLoggerControl(
      /// get local preference hide and unhide in global state
      getPreference: newMethod,

      /// ValueListenable for change visibility on/off
      isShow: isShowDebuggerNotifier,
      child: PopScope(
        canPop: false,
        // ignore: deprecated_member_use
        onPopInvoked: (_) {
          /// Need this for restart state of local storage
          Navigator.pushReplacementNamed(context, MyHomePage.routeName);
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text("Developper Test"),
          ),
          body: preferences
              ? Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Debugger API",
                            style: GoogleFonts.inter(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Switch(
                            activeTrackColor: Colors.blue,
                            value: isShowDebuggerNotifier.value,
                            onChanged: (value) {
                              setState(() {
                                /// ValueListenable for change visibility on/off
                                isShowDebuggerNotifier.value = value;
                                CustomSharedPreferences.saveDebugger(value);
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                )
              : const SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
    );
  }
}
