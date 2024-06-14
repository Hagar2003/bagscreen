import 'package:bags/bag_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bags());
}

class Bags extends StatelessWidget {
  const Bags({super.key});

  @override
  Widget build(BuildContext context) {
    return  OurBags();
  }
}
  