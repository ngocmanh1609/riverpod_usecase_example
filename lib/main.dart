import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_usecase_example/di/di.dart';
import 'package:riverpod_usecase_example/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  return runZonedGuarded(() async {
    runApp(
      ProviderScope(
        child: MyApp(),
      ),
    );
  }, (error, stack) {
    print("error: $error\nstack: $stack");
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: Routes.routes,
    );
  }
}
