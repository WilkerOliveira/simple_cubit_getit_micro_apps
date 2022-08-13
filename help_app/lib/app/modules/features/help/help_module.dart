// ignore_for_file: avoid_classes_with_only_static_members

import 'package:base_commons/app/modules/routes/common_routes.dart';
import 'package:base_commons/main.dart';
import 'package:base_dependencies/main.dart';
import 'package:flutter/material.dart';
import 'package:help_app/app/modules/features/help/data/datasources/help_datasource.dart';
import 'package:help_app/app/modules/features/help/data/repositories/help_repository_impl.dart';
import 'package:help_app/app/modules/features/help/domain/repositories/help_repository.dart';
import 'package:help_app/app/modules/features/help/domain/usecases/help_usecase.dart';
import 'package:help_app/app/modules/features/help/presentation/controllers/help_controller.dart';
import 'package:help_app/app/modules/features/help/presentation/screens/help_screen.dart';

class HelpModule {
  static void setupDI() {
    _setupDatabase();
    _setupDatasources();
    _setupRepositories();
    _setupUsecases();
  }

  static void _setupDatabase() {}

  static void _setupDatasources() {
    getId?.registerFactory<HelpDatasource>(() => HelpDatasourceImpl());
  }

  static void _setupRepositories() {
    getId?.registerFactory<HelpRepository>(
        () => HelpRepositoryImpl(getId!.get()));
  }

  static void _setupUsecases() {
    getId?.registerFactory<HelpUsecase>(() => HelpUsecaseImpl(getId!.get()));
  }

  static Map<String, WidgetBuilder> getRoutes() => <String, WidgetBuilder>{
        helpScreen: (BuildContext context) => const HelpScreen()
      };

  static List<BlocProvider> providers() => <BlocProvider>[
        BlocProvider<HelpController>(
          create: (BuildContext context) => HelpController(getId!.get()),
        ),
      ];
}
