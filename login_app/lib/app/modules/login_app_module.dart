// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';
import 'package:login_app/app/modules/features/login/login_module.dart';

class LoginAppModule {
  static void setupDI() {
    LoginModule.setupDI();
  }

  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    ...LoginModule.getRoutes(),
  };
}
