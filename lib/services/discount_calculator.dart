import '../models/discount_result.dart';

class DiscountCalculator {
  DiscountResult calculate({required double price, required double percent}) {
    final discountAmount = (price * percent) / 100;
    final finalPrice = price - discountAmount;

    return DiscountResult(
      discountAmount: discountAmount,
      finalPrice: finalPrice,
    );
  }
}