import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_bank_app/core/router/routes.dart';
import 'package:mini_bank_app/features/account/application/account_bloc.dart';
import 'package:mini_bank_app/features/auth/application/auth_bloc.dart';
import 'package:mini_bank_app/features/transfer/application/transfer_form_cubit.dart';
import 'package:mini_bank_app/core/bloc/bloc_actions_listener.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  final TextEditingController _beneficiary = TextEditingController();
  final TextEditingController _accountNumber = TextEditingController();
  final TextEditingController _amount = TextEditingController();

  @override
  void dispose() {
    _beneficiary.dispose();
    _accountNumber.dispose();
    _amount.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<AuthBloc>().state;
    String? accountId;
    double currentBalance = 0;
    // Fetch balance for validation display
    context.select((AccountBloc b) => b.state).maybeWhen(
      loaded: (b) => currentBalance = b,
      orElse: () {},
    );
    return BlocActionsListener<TransferFormCubit>(
      child: Scaffold(
      appBar: AppBar(title: const Text('Transfer'), leading: IconButton(onPressed: () => context.pop(), icon: Icon(Icons.arrow_back),)),
      body: BlocConsumer<TransferFormCubit, TransferFormState>(
        listener: (context, state) {
          if (state.submissionStatus == SubmissionStatus.success) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Transfer successful')));
          } else if (state.submissionStatus == SubmissionStatus.failure && state.error != null) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error!)));
          }
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _beneficiary,
                  decoration: const InputDecoration(labelText: 'Beneficiary name'),
                  onChanged: (v) => context.read<TransferFormCubit>().beneficiaryChanged(v),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _accountNumber,
                  decoration: const InputDecoration(labelText: 'Account number'),
                  onChanged: (v) => context.read<TransferFormCubit>().accountNumberChanged(v),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _amount,
                  decoration: const InputDecoration(labelText: 'Amount'),
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  onChanged: (v) => context.read<TransferFormCubit>().amountChanged(v),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: state.isValid
                        ? () => context.read<TransferFormCubit>().submit(
                              accountId: accountId ?? 'acc_1',
                              currentBalance: currentBalance,
                            )
                        : null,
                    child: state.submissionStatus == SubmissionStatus.inProgress
                        ? const CircularProgressIndicator.adaptive()
                        : const Text('Submit'),
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


