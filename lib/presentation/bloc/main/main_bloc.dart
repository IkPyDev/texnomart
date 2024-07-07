import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState.initial()) {
    on<ChangeBottomNavigation>(
      (event, emit) => _changeBottomNavigation(event, emit),
    );
  }

  _changeBottomNavigation(
    ChangeBottomNavigation event,
    Emitter<MainState> emit,
  ) {
   emit( state.copyWith(bottomNavigationIndex: event.chosenIndex));
  }
}
