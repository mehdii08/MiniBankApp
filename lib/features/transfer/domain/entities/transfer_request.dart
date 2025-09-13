import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_request.freezed.dart';

@freezed
class TransferRequest with _$TransferRequest {
  const factory TransferRequest({
    required String beneficiaryName,
    required String accountNumber,
    required double amount,
  }) = _TransferRequest;
}


