import 'dart:convert';

import 'package:xpapp/core/local/local_storage.dart';
import 'package:xpapp/features/ecommerce/data/models/payment_method_model.dart';

class LocalPaymentMethodDataSource {
  final LocalStorage _localStorage;

  LocalPaymentMethodDataSource([LocalStorage? localStorage])
    : _localStorage = localStorage ?? LocalStorage();

  static const _paymentMethodsKey = 'payment_methods';

  Future<List<PaymentMethodModel>> getPaymentMethods() async {
    final rawJson = _localStorage.prefs.getString(_paymentMethodsKey);
    if (rawJson == null || rawJson.isEmpty) {
      return [];
    }

    final decoded = jsonDecode(rawJson) as List<dynamic>;
    return decoded
        .cast<Map<String, dynamic>>()
        .map(PaymentMethodModel.fromJson)
        .toList();
  }

  Future<void> savePaymentMethods(
    List<PaymentMethodModel> paymentMethods,
  ) async {
    final rawJson = jsonEncode(
      paymentMethods.map((method) => method.toJson()).toList(),
    );
    await _localStorage.prefs.setString(_paymentMethodsKey, rawJson);
  }
}
