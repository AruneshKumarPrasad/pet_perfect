part of 'bottom_nav_bar_state_cubit.dart';

abstract class BottomNavBarStateCubitState extends Equatable {
  const BottomNavBarStateCubitState();

  @override
  List<Object> get props => [];
}

class BottomNavBarStateCubitHome extends BottomNavBarStateCubitState {
  final int pageState;
  const BottomNavBarStateCubitHome(this.pageState);

  @override
  List<Object> get props => [pageState];
}

class BottomNavBarStateCubitUsers extends BottomNavBarStateCubitState {
  final int pageState;
  const BottomNavBarStateCubitUsers(this.pageState);

  @override
  List<Object> get props => [pageState];
}
