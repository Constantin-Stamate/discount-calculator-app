import 'package:flutter/material.dart';

class PresetPercentSelector extends StatelessWidget {
  final int selectedPercent;
  final ValueChanged<int?> onChanged;

  const PresetPercentSelector({
    super.key,
    required this.selectedPercent,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Selectează reducere rapidă:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Expanded(
              child: RadioListTile<int>(
                title: const Text('10%'),
                value: 10,
                groupValue: selectedPercent,
                onChanged: onChanged,
              ),
            ),
            Expanded(
              child: RadioListTile<int>(
                title: const Text('20%'),
                value: 20,
                groupValue: selectedPercent,
                onChanged: onChanged,
              ),
            ),
            Expanded(
              child: RadioListTile<int>(
                title: const Text('50%'),
                value: 50,
                groupValue: selectedPercent,
                onChanged: onChanged,
              ),
            ),
          ],
        ),
      ],
    );
  }
}