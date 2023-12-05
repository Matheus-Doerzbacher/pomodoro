import 'package:flutter/material.dart';
import 'package:pomodoro/widgets/cronometro_botao.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hora de trabalhar",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "25:00",
            style: TextStyle(
              fontSize: 100,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CronometroBotao(
                texto: "Iniciar",
                icone: Icons.play_arrow,
              ),
              /*
              CronometroBotao(
                texto: "Parar",
                icone: Icons.stop,
              ),
              */
              CronometroBotao(
                texto: "Reiniciar",
                icone: Icons.refresh,
              ),
            ],
          )
        ],
      ),
    );
  }
}
