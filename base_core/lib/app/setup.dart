import 'package:base_commons/main.dart';
import 'package:base_dependencies/main.dart';

Future<void> startGetIt() async {
  await setInstance(GetIt.instance);
}
