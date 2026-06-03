import 'package:dio/dio.dart';
import 'package:xpapp/core/consts/api_consts.dart';
import 'package:xpapp/features/ecommerce/data/models/credit_card_payment_model.dart';

class CreditCardPaymentDataSource {
  final dio = Dio();

  Future<void> processPayment(CreditCardPaymentModel paymentModel) async {
    final response = await dio.post(
      ApiConsts.processPayment,
      data: paymentModel.toJson(),
    );

    if (response.statusCode == 200) {
      print('Payment processed successfully: ${response.data}');
    } else {
      print('Failed to process payment: ${response.statusMessage}');
    }
    return;
  }
}
