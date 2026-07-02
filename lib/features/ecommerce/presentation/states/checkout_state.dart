import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_state.freezed.dart';

@freezed
abstract class CheckoutState with _$CheckoutState {
  // Initial state
  const factory CheckoutState.initial() = _Initial;

  // Loading state
  const factory CheckoutState.loading() = _Loading;

  // Loaded state
  const factory CheckoutState.loaded() = _Loaded;

  // Selecting state
  const factory CheckoutState.selecting() = _Selecting;
  const factory CheckoutState.selected() = _Selected;

  // Paying state
  const factory CheckoutState.paying() = _Paying;
  const factory CheckoutState.payed() = _Payed;

  // Error state
  const factory CheckoutState.error({required String error}) = _Error;
}
