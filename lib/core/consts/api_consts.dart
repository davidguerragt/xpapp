import 'package:xpapp/core/environment/env.dart';

abstract class ApiConsts {
  static final String base = Env.apiBaseUrl;
  static final String processPayment = "$base/processPayment";
}
