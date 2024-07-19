import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:foodappui/binding/initialBinding.dart';
import 'package:foodappui/core/services/services.dart';
import 'package:foodappui/routes.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const Onboarding(),
      initialBinding: InitialBinding(),
      getPages: routes,
    );
  }
}
