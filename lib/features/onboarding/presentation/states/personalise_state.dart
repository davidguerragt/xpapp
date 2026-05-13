import 'package:freezed_annotation/freezed_annotation.dart';

part 'personalise_state.freezed.dart';

@freezed
abstract class PersonaliseState with _$PersonaliseState {
  const factory PersonaliseState({required List<String> interests}) =
      _PersonaliseState;
}
