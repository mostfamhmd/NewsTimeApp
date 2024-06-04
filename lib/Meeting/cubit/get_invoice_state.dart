part of 'get_invoice_cubit.dart';

sealed class GetInvoiceState {}

final class GetInvoiceInitial extends GetInvoiceState {}

final class GetInvoiceLoading extends GetInvoiceState {}

final class GetInvoiceLoaded extends GetInvoiceState {
  final GetInVoice getInVoice;

  GetInvoiceLoaded({required this.getInVoice});
}

final class GetInvoiceError extends GetInvoiceState {
  final ServerFailure serverFailure;

  GetInvoiceError({required this.serverFailure});
}
