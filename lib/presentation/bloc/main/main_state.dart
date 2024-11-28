part of 'main_bloc.dart';

class MainState  extends Equatable{
  final int bottomNavigationIndex;
  final int notificationCount;
  final Status status;

  factory MainState.initial() {
    return const MainState(
      bottomNavigationIndex: 0,
      notificationCount: 0,
      status: Status.success,
    );
  }

  const MainState({
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

  @override
  // TODO: implement props
  List<Object?> get props => [bottomNavigationIndex, notificationCount, status];
}
