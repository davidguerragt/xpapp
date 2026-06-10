import 'package:xpapp/core/environment/env.dart';

abstract class ApiConsts {
  static final String base = Env.apiBaseUrl;
  static final String processPayment = "$base/processPayment";
}

abstract class TestCredentials {
  static final String testEmail = "david.guerra.gt@gmail.com";
  static final String testPassword = "1234567";
}
