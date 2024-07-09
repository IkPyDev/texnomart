part of 'main_bloc.dart';

class MainState {
  final int bottomNavigationIndex;
  final int notificationCount;
  final Status status;

  factory MainState.initial() {
    return MainState(
      bottomNavigationIndex: 0,
      notificationCount: 0,
      status: Status.success,
    );
  }

  MainState({
    required this.bottomNavigationIndex,
    required this.notificationCount,
    required this.status,
  });
  MainState copyWith({
    int? bottomNavigationIndex,
    BasketHive? data,
    int? notificationCount,
    Status? status,
  }) {
    return MainState(
      bottomNavigationIndex: bottomNavigationIndex ?? this.bottomNavigationIndex,
      notificationCount: notificationCount ?? this.notificationCount,
      status: status ?? this.status,
    );
  }

  @override
  String toString() =>
      'MainState(bottomNavigationIndex: $bottomNavigationIndex)';
}
