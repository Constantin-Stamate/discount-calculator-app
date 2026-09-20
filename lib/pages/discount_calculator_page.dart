import 'package:flutter/material.dart';

import '../models/discount_result.dart';
import '../services/discount_calculator.dart';
import '../widgets/calculate_button.dart';
import '../widgets/discount_input.dart';
import '../widgets/discount_result_card.dart';
import '../widgets/preset_percent_selector.dart';
import '../widgets/price_input.dart';

class DiscountCalculatorPage extends StatefulWidget {
  const DiscountCalculatorPage({super.key});

  @override
  State<DiscountCalculatorPage> createState() => _DiscountCalculatorPageState();
}

class _DiscountCalculatorPageState extends State<DiscountCalculatorPage> {
  final TextEditingController _priceController = TextEditingController();

  final TextEditingController _percentController = TextEditingController();

  final DiscountCalculator _calculator = DiscountCalculator();

  DiscountResult? _result;
  int _selectedPresetPercent = 0;

  void _calculateDiscount() {
    final price = double.tryParse(_priceController.text) ?? 0.0;
    final percent = double.tryParse(_percentController.text) ?? 0.0;

    setState(() {
      _result = _calculator.calculate(price: price, percent: percent);
    });
  }

  void _applyPresetPercent(int? value) {
    if (value == null) {
      return;
    }

    setState(() {
      _selectedPresetPercent = value;
      _percentController.text = value.toString();
    });
  }

  @override
  void dispose() {
    _priceController.dispose();
    _percentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculator de Reducere',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.indigo],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PriceInput(controller: _priceController),
            const SizedBox(height: 16),
            DiscountInput(controller: _percentController),
            const SizedBox(height: 16),
            PresetPercentSelector(
              selectedPercent: _selectedPresetPercent,
              onChanged: _applyPresetPercent,
            ),
            const SizedBox(height: 16),
            CalculateButton(onPressed: _calculateDiscount),
            const SizedBox(height: 24),
            if (_result != null)
              DiscountResultCard(
                discountAmount: _result!.discountAmount,
                finalPrice: _result!.finalPrice,
              ),
          ],
        ),
      ),
    );
  }
}