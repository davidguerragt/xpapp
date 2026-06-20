import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:xpapp/core/consts/api_consts.dart';
import 'package:xpapp/features/ecommerce/data/models/payment_method_model.dart';

class CreditCardsGetCardsDataSource {
  final dio = Dio(BaseOptions(headers: {'Content-Type': 'application/json'}));

  Future<List<PaymentMethodModel>> getCards() async {
    try {
      final response = await dio.get(ApiConsts.getCards);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> testCards = response.data["testCards"];
        final List<PaymentMethodModel> listResult = testCards
            .map(
              (item) =>
                  PaymentMethodModel.fromJson(item as Map<String, dynamic>),
            )
            .toList();
        return listResult;
      }

      final rawData = response.data;
      final message = rawData is Map<String, dynamic>
          ? rawData['message']?.toString()
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
