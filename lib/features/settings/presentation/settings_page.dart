import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_bank_app/features/settings/application/theme_cubit.dart';
import 'package:mini_bank_app/core/bloc/bloc_actions_listener.dart';
import 'package:mini_bank_app/i18n/strings.g.dart';
import 'package:mini_bank_app/features/settings/application/biometric_cubit.dart';
import 'package:mini_bank_app/core/di/di.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeCubit>().state;
    return BlocActionsListener<ThemeCubit>(
      child: Scaffold(
      appBar: AppBar(title: Text(t.settingsTitle)),
      body: ListView(
        children: <Widget>[
          SwitchListTile(
            title: Text(t.darkMode),
            value: isDark,
            onChanged: (v) => context.read<ThemeCubit>().setDark(v),
          ),
          BlocProvider(
            create: (_) => getIt<BiometricCubit>()..init(),
            child: BlocBuilder<BiometricCubit, BiometricState>(
              builder: (context, state) {
                if (!state.isSupported) {
                  return ListTile(
                    title: Text(t.biometricAuth),
                    subtitle: Text(t.biometricNotSupported),
                    enabled: false,
                  );
                }
                return SwitchListTile(
                  title: Text(t.biometricAuth),
                  value: state.isEnabled,
                  onChanged: (v) => context.read<BiometricCubit>().setEnabled(v),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}


