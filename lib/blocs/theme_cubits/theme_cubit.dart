import '../../utils/shared_utils.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(lightTheme);

  void toggleTheme() {
    emit(state.brightness == Brightness.light ? darkTheme : lightTheme);
  }
}
