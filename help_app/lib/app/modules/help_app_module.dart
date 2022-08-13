// ignore_for_file: avoid_classes_with_only_static_members

import 'package:base_dependencies/main.dart';
import 'package:flutter/material.dart';
import 'package:help_app/app/modules/features/help/help_module.dart';

class HelpAppModule {
  static void setupDI() {
    HelpModule.setupDI();
  }

  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    ...HelpModule.getRoutes(),
  };

  static List<BlocProvider> providers() => <BlocProvider>[
        ...HelpModule.providers(),
      ];
}
