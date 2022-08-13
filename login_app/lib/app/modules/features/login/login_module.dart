// ignore_for_file: avoid_classes_with_only_static_members

import 'package:base_commons/app/modules/routes/common_routes.dart';
import 'package:flutter/material.dart';
import 'package:login_app/app/modules/features/login/presentation/screens/login_screen.dart';

class LoginModule {
  static void setupDI() {}

  static Map<String, WidgetBuilder> getRoutes() => <String, WidgetBuilder>{
        loginScreen: (BuildContext context) => const LoginScreen()
      };
}
