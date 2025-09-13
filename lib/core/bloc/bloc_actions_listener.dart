import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_bank_app/core/bloc/ui_action.dart';
import 'package:mini_bank_app/core/constants/messages.dart';
import 'package:mini_bank_app/l10n/l10n.dart';

class BlocActionsListener<B> extends StatefulWidget {
  const BlocActionsListener({
    super.key,
    required this.child,
    this.dialogBuilder,
    this.bottomSheetBuilder,
  });
  final Widget child;
  final Widget Function(BuildContext context, String title, String message, Object? payload)? dialogBuilder;
  final Widget Function(BuildContext context, String title, String? message, Object? payload)? bottomSheetBuilder;

  @override
  State<BlocActionsListener<B>> createState() => _BlocActionsListenerState<B>();
}

class _BlocActionsListenerState<B> extends State<BlocActionsListener<B>> {
  StreamSubscription<UiAction>? _sub;

  @override
  void initState() {
    super.initState();
    final bloc = context.read<B>();
    final stream = (bloc as dynamic).actions as Stream<UiAction>;
    _sub = stream.listen((action) async {
      await action.map(
        navigate: (a) async {
          if (a.replace) {
            context.go(a.location, extra: a.extra);
          } else {
            context.push(a.location, extra: a.extra);
          }
        },
        showSnackbar: (a) async {
          final String msg = _resolveMessage(context, a.message);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
        },
        showDialog: (a) async {
          if (widget.dialogBuilder != null) {
            await showDialog<void>(
              context: context,
              builder: (ctx) => widget.dialogBuilder!(ctx, a.title, a.message, a.payload),
            );
          } else {
            await showGeneralDialog(
              context: context,
              barrierDismissible: true,
              barrierLabel: 'dialog',
              pageBuilder: (context, _, __) => AlertDialog(title: Text(a.title), content: Text(a.message)),
            );
          }
        },
        showBottomSheet: (a) async {
          if (widget.bottomSheetBuilder != null) {
            await showModalBottomSheet<void>(
              context: context,
              builder: (ctx) => widget.bottomSheetBuilder!(ctx, a.title, a.message, a.payload),
            );
          } else {
            await showModalBottomSheet<void>(
              context: context,
              builder: (_) => SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(a.title, style: Theme.of(context).textTheme.titleLarge),
                      if (a.message != null) ...[
                        const SizedBox(height: 8),
                        Text(a.message!),
                      ],
                    ],
                  ),
                ),
              ),
            );
          }
        },
      );
    });
  }

  @override
  void didUpdateWidget(covariant BlocActionsListener<B> oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

String _resolveMessage(BuildContext context, String message) {
  final s = S.of(context);
  switch (message) {
    case MessageKeys.invalidEmail:
      return s.invalidEmail;
    case MessageKeys.passwordTooShort:
      return s.passwordTooShort;
    case MessageKeys.invalidCredentials:
      return s.invalidCredentials;
    case MessageKeys.userNotFound:
      return s.userNotFound;
    default:
      return message;
  }
}


