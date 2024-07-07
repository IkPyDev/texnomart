part of 'main_bloc.dart';

class MainState {
  final int bottomNavigationIndex;

  factory MainState.initial() {
    return MainState(bottomNavigationIndex: 0);
  }

  MainState({
    required this.bottomNavigationIndex,
  });

  MainState copyWith({
    int? bottomNavigationIndex,
  }) {
    return MainState(
      bottomNavigationIndex:
          bottomNavigationIndex ?? this.bottomNavigationIndex,
    );
  }

  @override
  String toString() =>
      'MainState(bottomNavigationIndex: $bottomNavigationIndex)';
}
