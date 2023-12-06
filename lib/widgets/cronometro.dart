import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/store/pomodoro_store.dart';
import 'package:pomodoro/widgets/cronometro_botao.dart';
import 'package:provider/provider.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Container(
      color: store.estaTrabalhando() ? Colors.red : Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            store.estaTrabalhando() ? "Hora de Trabalhar" : "Hora de descansar",
            style: const TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "${store.minutos.toString().padLeft(2, '0')}:${store.segundos.toString().padLeft(2, '0')}",
            style: const TextStyle(
              fontSize: 100,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Observer(
            builder: (_) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (!store.iniciado)
                  CronometroBotao(
                    texto: "Iniciar",
                    icone: Icons.play_arrow,
                    click: store.iniciar,
                  ),
                if (store.iniciado)
                  CronometroBotao(
                    texto: "Parar",
                    icone: Icons.stop,
                    click: store.parar,
                  ),
                CronometroBotao(
                  texto: "Reiniciar",
                  icone: Icons.refresh,
                  click: store.reiniciar,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
