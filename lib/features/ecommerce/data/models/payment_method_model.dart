class PaymentMethodModel {
  final String id;
  final String cardHolderName;
  final String cardNumber;
  final String expirationDate;
  final String cardBrand;

  PaymentMethodModel({
    required this.id,
    required this.cardHolderName,
    required this.cardNumber,
    required this.expirationDate,
    required this.cardBrand,
  });

  factory PaymentMethodModel.fromJson(Map<String, dynamic> json) {
    return PaymentMethodModel(
      id: json['id'] as String,
      cardHolderName: json['cardHolderName'] as String,
      cardNumber: json['cardNumber'] as String,
      expirationDate: json['expirationDate'] as String,
      cardBrand: json['cardBrand'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'cardHolderName': cardHolderName,
      'cardNumber': cardNumber,
      'expirationDate': expirationDate,
      'cardBrand': cardBrand,
    };
  }
}
