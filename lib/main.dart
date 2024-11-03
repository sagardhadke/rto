import 'Exports/myExports.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'eRTO',
        themeMode: ThemeMode.system,
        theme: ThemeData(
          primaryColor: MyAppColors.primary,
          secondaryHeaderColor: MyAppColors.secondary,
          scaffoldBackgroundColor: MyAppColors.primaryBackground,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MySplashScreen());
  }
}
