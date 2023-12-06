import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  final void Function()? click;

  const CronometroBotao({
    super.key,
    required this.texto,
    required this.icone,
    this.click,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: click,
      icon: Icon(
        icone,
        size: 30,
      ),
      label: Text(
        texto,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
