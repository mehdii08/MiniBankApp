import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_bank_app/features/settings/application/theme_cubit.dart';
import 'package:mini_bank_app/core/bloc/bloc_actions_listener.dart';
import 'package:mini_bank_app/i18n/strings.g.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeCubit>().state;
    return BlocActionsListener<ThemeCubit>(
      child: Scaffold(
      appBar: AppBar(title: Text(t.settingsTitle)),
      body: SwitchListTile(
        title: Text(t.darkMode),
        value: isDark,
        onChanged: (v) => context.read<ThemeCubit>().setDark(v),
      ),
    ));
  }
}


