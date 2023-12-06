import 'package:mobx/mobx.dart';

part 'pomodoro_store.g.dart';

// ignore: library_private_types_in_public_api
class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum TipoIntervalo { trabalho, descanso }

abstract class _PomodoroStore with Store {
  @observable
  bool iniciado = false;

  @observable
  int minutos = 2;

  @observable
  int segundos = 0;

  @observable
  int tempoTrabalho = 2;

  @observable
  int tempoDescanso = 1;

  @observable
  TipoIntervalo tipoIntervalo = TipoIntervalo.trabalho;

  @action
  void iniciar() {
    iniciado = true;
  }

  @action
  void parar() {
    iniciado = false;
  }

  @action
  void reiniciar() {
    minutos = 0;
    segundos = 0;
    iniciado = false;
  }

  @action
  void incrementarTempoTrabalho() => tempoTrabalho++;

  @action
  void decremenarTempoTrabalho() => tempoTrabalho--;

  @action
  void incrementarTempoDescanso() => tempoDescanso++;

  @action
  void decremenarTempoDescanso() => tempoDescanso--;

  bool estaTrabalhando() => tipoIntervalo == TipoIntervalo.trabalho;

  bool estaDescansando() => tipoIntervalo == TipoIntervalo.descanso;
}
