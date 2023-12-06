import 'package:flutter/material.dart';
import 'package:pomodoro/store/pomodoro_store.dart';
import 'package:pomodoro/widgets/cronometro.dart';
import 'package:pomodoro/widgets/entrada_tempo.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Cronometro(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Observer(
                builder: (_) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    EntradaTempo(
                      titulo: "Trabalho",
                      valor: store.tempoTrabalho,
                      incrementar: store.iniciado && store.estaTrabalhando() ? null : store.incrementarTempoTrabalho,
                      decrementar: store.iniciado && store.estaTrabalhando() ? null : store.decremenarTempoTrabalho,
                    ),
                    EntradaTempo(
                      titulo: "Descanso",
                      valor: store.tempoDescanso,
                      incrementar: store.iniciado && store.estaDescansando() ? null : store.incrementarTempoDescanso,
                      decrementar: store.iniciado && store.estaDescansando() ? null : store.decremenarTempoDescanso,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
