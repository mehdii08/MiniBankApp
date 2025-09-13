import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_bank_app/features/account/application/account_bloc.dart';
import 'package:mini_bank_app/features/auth/application/auth_bloc.dart';
import 'package:mini_bank_app/features/transfer/application/transfer_form_cubit.dart';
import 'package:mini_bank_app/core/bloc/bloc_actions_listener.dart';
import 'package:mini_bank_app/core/widgets/app_text_field.dart';
import 'package:mini_bank_app/core/widgets/app_button.dart';
import 'package:mini_bank_app/i18n/strings.g.dart';

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
    final colorScheme = Theme.of(context).colorScheme;
    final strings = t;
    return BlocActionsListener<TransferFormCubit>(
      child: Scaffold(
      appBar: AppBar(title: Text(strings.transferTitle), leading: IconButton(onPressed: () => context.pop(), icon: const Icon(Icons.arrow_back),)),
      body: BlocBuilder<TransferFormCubit, TransferFormState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                AppTextField(
                  controller: _beneficiary,
                  hintText: strings.beneficiaryLabel,
                  errorText: state.beneficiaryError,
                  onChanged: (v) => context.read<TransferFormCubit>().beneficiaryChanged(v),
                ),
                const SizedBox(height: 12),
                AppTextField(
                  controller: _accountNumber,
                  hintText: strings.accountNumberLabel,
                  errorText: state.accountNumberError,
                  onChanged: (v) => context.read<TransferFormCubit>().accountNumberChanged(v),
                ),
                const SizedBox(height: 12),
                AppTextField(
                  controller: _amount,
                  hintText: strings.amountLabel,
                  errorText: state.amountError,
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  onChanged: (v) => context.read<TransferFormCubit>().amountChanged(v),
                ),
                const SizedBox(height: 24),
                AppButton(
                  title: strings.submitButton,
                  onTap: () => context.read<TransferFormCubit>().submit(),
                  backgroundColor: colorScheme.primary,
                ),
              ],
            ),
          );
        },
      ),
    ));
  }
}


