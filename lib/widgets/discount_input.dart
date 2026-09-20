import 'package:flutter/material.dart';

class DiscountInput extends StatelessWidget {
  final TextEditingController controller;

  const DiscountInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        labelText: 'Procent reducere (%)',
        border: OutlineInputBorder(),
      ),
    );
  }
}