import 'package:xpapp/core/environment/env.dart';

abstract class ApiConsts {
  static final String paymentBase = Env.apiBaseUrl;
  static final String processPayment = "$paymentBase/processPayment";
  static final String cardsBase = Env.cardsApiUrl;
  static final String getCards = "$cardsBase/testCards";
}

abstract class TestCredentials {
  static final String testEmail = "david.guerra@gmail.com";
  static final String testPassword = "1234567";
}
