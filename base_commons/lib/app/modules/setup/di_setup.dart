import 'package:base_dependencies/main.dart';

GetIt? getId;

Future<void> setInstance(GetIt newInstance) async {
  getId = newInstance;
}
