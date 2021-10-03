import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:zena_tamkin/config/locator.dart';
import 'package:zena_tamkin/config/router.dart' as router;
import 'package:zena_tamkin/config/setup_snackbar_ui.dart';
import 'package:zena_tamkin/views/views.dart';

/// init Screen bool
/// check if it is first time App is launched by user
int? initScreen;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = prefs.getInt('initScreen');
  await prefs.setInt('initScreen', 1);

  setupLocator();
  setupSnackbarUi();

  runApp(const MyApp());
}

/// MyApp is the Parent Widget of the App
class MyApp extends StatelessWidget {
  /// MyApp Constructor
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zena Tamkin',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Poppins',
      ),
      initialRoute: initScreen == 0 || initScreen == null
          ? IntroScreen.route
          : HomeView.route,
      onGenerateRoute: router.Router.generateRoute,
      navigatorKey: StackedService.navigatorKey,
    );
  }
}
