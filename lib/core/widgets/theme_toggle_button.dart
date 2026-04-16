import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../theme/logic/theme_cubit.dart';

class ThemeToggleButton extends StatelessWidget {
  const ThemeToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, mode) {
        IconData icon;
        String tooltip;

        switch (mode) {
          case ThemeMode.light:
            icon = Icons.light_mode;
            tooltip = 'Switch to Dark Mode';
            break;
          case ThemeMode.dark:
            icon = Icons.dark_mode;
            tooltip = 'Switch to System Mode';
            break;
          case ThemeMode.system:
            icon = Icons.settings_brightness;
            tooltip = 'Switch to Light Mode';
            break;
        }

        return IconButton(
          icon: Icon(icon),
          tooltip: tooltip,
          onPressed: () {
            context.read<ThemeCubit>().toggleTheme();
          },
        );
      },
    );
  }
}
