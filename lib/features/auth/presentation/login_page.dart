import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_bank_app/features/auth/application/auth_bloc.dart';
import 'package:mini_bank_app/core/bloc/bloc_actions_listener.dart';

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
    return BlocActionsListener<AuthBloc>(
      child: Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            failure: (msg) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg))),
            orElse: () {},
          );
        },
        builder: (context, state) {
          final bool loading = state.maybeWhen(loading: () => true, orElse: () => false);
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _email,
                  decoration: const InputDecoration(labelText: 'Email'),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _password,
                  obscureText: true,
                  decoration: const InputDecoration(labelText: 'Password'),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: loading
                        ? null
                        : () {
                            context.read<AuthBloc>().add(AuthEvent.loginRequested(
                                  email: _email.text.trim(),
                                  password: _password.text.trim(),
                                ));
                          },
                    child: loading ? const CircularProgressIndicator.adaptive() : const Text('Sign in'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ));
  }
}


