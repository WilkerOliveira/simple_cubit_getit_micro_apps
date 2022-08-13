import 'package:base_dependencies/main.dart';

abstract class HelpState extends Equatable {}

class InitialHelpState extends HelpState {
  @override
  List<Object?> get props => <Object?>[];
}

class SuccessHelpState extends HelpState {
  SuccessHelpState(this.value);

  final String value;

  @override
  List<Object?> get props => <Object>[value];
}

class ErrorHelpState extends HelpState {
  @override
  List<Object?> get props => <Object?>[];
}
