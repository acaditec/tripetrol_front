import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tripetrol_application_1/menu/menu.dart';
import 'package:tripetrol_application_1/screens/start/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Tripetrol',
      routerConfig: router,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
    );
  }
}

final router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const HomePage(), routes: [
    for (final option in menuOptions)
      GoRoute(
        path: option.route,
        builder: (context, state) => option.builder(context),
      )
  ])
]);
