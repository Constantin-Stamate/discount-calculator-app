import 'package:flutter/material.dart';

class DiscountResultCard extends StatelessWidget {
  final double discountAmount;
  final double finalPrice;

  const DiscountResultCard({
    super.key,
    required this.discountAmount,
    required this.finalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.indigo.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.indigo.shade200, width: 1.5),
      ),
      child: Column(
        children: [
          Text(
            'Valoarea reducerii: '
            '${discountAmount.toStringAsFixed(2)} MDL',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18, color: Colors.black87),
          ),
          const SizedBox(height: 8),
          Text(
            'Preț final: ${finalPrice.toStringAsFixed(2)} MDL',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
        ],
      ),
    );
  }
}