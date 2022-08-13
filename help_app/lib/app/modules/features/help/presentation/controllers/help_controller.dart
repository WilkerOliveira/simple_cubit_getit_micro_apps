import 'package:base_dependencies/main.dart';
import 'package:help_app/app/modules/features/help/domain/usecases/help_usecase.dart';
import 'package:help_app/app/modules/features/help/presentation/controllers/states/help_state.dart';

class HelpController extends Cubit<HelpState> {
  HelpController(this._helpUsecase) : super(InitialHelpState());

  final HelpUsecase _helpUsecase;

  Future<void> changeName() async {
    final Either<Exception, String> result = await _helpUsecase();

    result.fold((Exception error) {
      emit(ErrorHelpState());
    }, (String response) {
      emit(SuccessHelpState(response));
    });
  }
}
