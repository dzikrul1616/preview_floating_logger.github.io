import 'package:floating_logger/floating_logger.dart';
import 'package:device_preview/device_preview.dart';
import 'package:preview_flutter_floating_logger/pages/pages.dart';
import 'utils/route.dart';
import 'package:floating_draggable_widget/floating_draggable_widget.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: MyHomePage.routeName,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const routeName = '/myPage';
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ListDataModel> listData = [];

  @override
  void initState() {
    super.initState();
    listData = [
      ListDataModel(
        message: 'Test Fetch Success 1',
        buttonText: 'Fetch Facts',
        onPressed: () => fetchSuccess(),
      ),
      ListDataModel(
        message: 'Test Fetch Success 2',
        buttonText: 'Failure',
        onPressed: () => fetchFailure(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Floating Testing"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...listData.map((data) {
              return Column(
                children: [
                  Text(data.message),
                  ElevatedButton(
                    onPressed: data.onPressed,
                    child: Text(
                      data.buttonText,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              );
            }),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, DevelopperMode.routeName),
              child: const Text(
                "Developper mode",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> fetchSuccess() async {
    try {
      final response = await DioLogger.instance.get(
        'https://api.genderize.io',
        options: Options(headers: {
          "content-type": "application/json",
        }),
        queryParameters: {
          "name": "james",
        },
      );

      if (response.statusCode == 200) {
        // your's management data
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.green,
            content: Text(
              'Success Fectch',
            ),
          ),
        );
      }
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to fetch facts')),
      );
    }
  }

  Future<void> fetchFailure() async {
    try {
      /// Use DIO LOGGER to Request Rest api
      final response = await DioLogger.instance.get(
        'https://api.genderize.io',
        options: Options(headers: {
          "content-type": "application/json",
        }),
      );

      if (response.statusCode == 200) {
        // your's management data
      }
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to fetch facts')),
      );
    }
  }
}

class ListDataModel {
  final String message;
  final String buttonText;
  final void Function()? onPressed;

  ListDataModel({
    required this.message,
    required this.buttonText,
    this.onPressed,
  });
}
