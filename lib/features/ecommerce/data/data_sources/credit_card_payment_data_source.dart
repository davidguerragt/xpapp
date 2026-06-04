import 'package:dio/dio.dart';
import 'package:xpapp/core/consts/api_consts.dart';
import 'package:xpapp/features/ecommerce/data/models/credit_card_payment_model.dart';

class CreditCardPaymentDataSource {
  final dio = Dio(BaseOptions(headers: {'Content-Type': 'application/json'}));

  Future<void> processPayment(CreditCardPaymentModel paymentModel) async {
    try {
      final response = await dio.post(
        ApiConsts.processPayment,
        data: paymentModel.toJson(),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        print('Payment processed successfully: ${response.data}');
        return;
      }

      throw Exception(
        'Failed to process payment: ${response.statusCode} ${response.statusMessage}',
      );
    } on DioError catch (error) {
      final message = error.response?.data ?? error.message;
      throw Exception('Payment request failed: $message');
    }
  }
}
