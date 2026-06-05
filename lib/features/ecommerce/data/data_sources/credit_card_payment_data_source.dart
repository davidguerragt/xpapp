import 'package:dio/dio.dart';
import 'package:xpapp/core/consts/api_consts.dart';
import 'package:xpapp/features/ecommerce/data/models/credit_card_payment_model.dart';
import 'package:xpapp/features/ecommerce/data/models/payment_process_response_model.dart';

class CreditCardPaymentDataSource {
  final dio = Dio(BaseOptions(headers: {'Content-Type': 'application/json'}));

  /// Envía los datos de pago al servicio y devuelve el resultado parseado.
  Future<CreditCardPaymentResponseModel> processPayment(
    CreditCardPaymentModel paymentModel,
  ) async {
    try {
      final response = await dio.post(
        ApiConsts.processPayment,
        data: paymentModel.toJson(),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final json = Map<String, dynamic>.from(response.data as Map);
        final result = CreditCardPaymentResponseModel.fromJson(json);
        if (!result.success) {
          throw Exception(result.message);
        }
        return result;
      }

      final rawData = response.data;
      final message = rawData is Map<String, dynamic>
          ? rawData['message']?.toString() ??
                'Failed to process payment: ${response.statusCode} ${response.statusMessage}'
          : 'Failed to process payment: ${response.statusCode} ${response.statusMessage}';
      throw Exception(message);
    } on DioException catch (error) {
      final responseData = error.response?.data;
      final message = responseData is Map<String, dynamic>
          ? responseData['message']?.toString() ?? error.message
          : responseData?.toString() ?? error.message;
      throw Exception('Payment request failed: $message');
    }
  }
}
