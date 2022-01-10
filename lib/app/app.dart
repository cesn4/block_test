import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      initialBinding: BindingsBuilder(
        () {
          Get.put(AuthenticationRepository());
        },
      ),
      title: 'Flutter Bloc Test',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark()
            .copyWith(primary: Colors.amber, secondary: Colors.black),
      ),
    );
  }
}
