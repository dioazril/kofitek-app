import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/theme_cubits/shared_cubits.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({
    super.key,
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: isDarkMode,
        thumbIcon: isDarkMode
            ? const MaterialStatePropertyAll(
                Icon(Icons.dark_mode),
              )
            : const MaterialStatePropertyAll(
                Icon(Icons.light_mode),
              ),
        onChanged: (value) {
          context.read<ThemeCubit>().toggleTheme();
        });
  }
}