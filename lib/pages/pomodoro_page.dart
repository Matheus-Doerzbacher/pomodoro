import 'package:flutter/material.dart';
import 'package:pomodoro/widgets/entrada_tempo.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text("Pomodoro"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EntradaTempo(
                titulo: "Trabalho",
                valor: 25,
              ),
              EntradaTempo(
                titulo: "Descanso",
                valor: 5,
              ),
            ],
          )
        ],
      ),
    );
  }
}
