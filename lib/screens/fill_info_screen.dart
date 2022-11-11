import 'package:flutter/material.dart';


class FillingInfoScreen extends StatelessWidget {
  const FillingInfoScreen({super.key});

  static const route = '/filling-info-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Fill information')),
        body: const Center(child: CircularProgressIndicator()));
  }
}
