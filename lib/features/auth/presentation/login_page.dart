import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_bank_app/features/auth/application/auth_bloc.dart';
import 'package:mini_bank_app/core/bloc/bloc_actions_listener.dart';
import 'package:mini_bank_app/core/widgets/app_text.dart';
import 'package:mini_bank_app/core/widgets/app_text_field.dart';
import 'package:mini_bank_app/core/widgets/app_button.dart';
import 'package:mini_bank_app/l10n/l10n.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController(text: 'user@test.com');
  final TextEditingController _password = TextEditingController(text: '123456');

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final strings = S.of(context);
    return BlocActionsListener<AuthBloc>(
      child: Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            final bool loading = state.maybeWhen(loading: () => true, orElse: () => false);
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 32),
                  Icon(Icons.account_balance, size: 72, color: colorScheme.primary),
                  const SizedBox(height: 12),
                  AppText(text: strings.appTitle, color: colorScheme.primary, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        AppTextField(
                          controller: _email,
                          hintText: strings.emailLabel,
                        ),
                        const SizedBox(height: 12),
                        AppTextField(
                          controller: _password,
                          hintText: strings.passwordLabel,
                          obscureText: true,
                        ),
                        const SizedBox(height: 32),
                        AppButton(
                          title: strings.loginButton,
                          onTap: loading
                              ? null
                              : () {
                                  context.read<AuthBloc>().add(AuthEvent.loginRequested(
                                        email: _email.text.trim(),
                                        password: _password.text.trim(),
                                      ));
                                },
                          backgroundColor: colorScheme.primary,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    ));
  }
}


