import 'package:flutter/material.dart';

import 'pages/discount_calculator_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator Reducere',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const DiscountCalculatorPage(),
    );
  }
}