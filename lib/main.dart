import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landig_page/providers/page_provider.dart';
import 'package:vertical_landig_page/router/router.dart';
import 'package:vertical_landig_page/ui/pages/home_page.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => PageProvider())],
      child: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Flurorouter.configureRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Landing Page',
      initialRoute: '/Home',
      onGenerateRoute: Flurorouter.router.generator,
    );
  }
}
