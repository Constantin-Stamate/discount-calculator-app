import 'package:flutter/material.dart';

class PriceInput extends StatelessWidget {
  final TextEditingController controller;

  const PriceInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        labelText: 'Preț inițial (MDL)',
        border: OutlineInputBorder(),
      ),
    );
  }
}