import 'package:hyper_ui/service/auth_service/auth_service.dart';
import 'package:hyper_ui/state_util.dart';
import 'package:flutter/widgets.dart';
import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

void main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Diointerceptors.init();
  await DBService.init();
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      Navigator.of(context).pushReplacementNamed('/profile');
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget mainView = LoginView();
    if (isLoggedIn) {
      if (isEmployee) {
        mainView = EmployeeMainNavigationView();
      } else if (isHRD) {
        mainView = HrdMainNavigationView();
      }
    }

    return MaterialApp(
      title: 'Capek Ngoding',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: getDefaultTheme(),
      home: mainView,
      onGenerateRoute: (routeSettings) {
        print(routeSettings.name);
        return null;
      },
    );
  }
}
