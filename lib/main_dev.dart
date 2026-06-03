import 'package:xpapp/core/environment/env.dart';
import 'package:xpapp/main.dart';

void main(List<String> args) {
  Env.environment = Environment.development;
  runProject();
}
