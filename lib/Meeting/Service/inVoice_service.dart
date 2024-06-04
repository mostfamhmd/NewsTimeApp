import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_time/Meeting/dio_helper.dart';
import 'package:news_time/Meeting/models/get_invoice.dart';
import 'package:news_time/Meeting/server_failure.dart';

class InVoiceService {
  DioHelper dioHelper = DioHelper();

  Future<Either<ServerFailure, GetInVoice>> getInvoice() async {
    try {
      Map<String, dynamic> response = await dioHelper.getRequest(
        endPoint: '/InvoiceDetail',
      );
      final data = GetInVoice.fromJson(response);
      return right(data);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(dioException: e));
    } catch (e) {
      print(e);
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
