import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_nav_bar_state_cubit_state.dart';

class BottomNavBarStateCubit extends Cubit<BottomNavBarStateCubitState> {
  BottomNavBarStateCubit() : super(const BottomNavBarStateCubitHome(0));
  void home() {
    print("Ran home");
    return emit(const BottomNavBarStateCubitHome(0));
  }

  void users() {
    print("Ran users");
    emit(const BottomNavBarStateCubitUsers(1));
  }
}
