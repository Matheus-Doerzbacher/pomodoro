// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contador_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ContadorStore on _ContadorStore, Store {
  late final _$contadorAtom = Atom(name: '_ContadorStore.contador', context: context);

  @override
  int get contador {
    _$contadorAtom.reportRead();
    return super.contador;
  }

  @override
  set contador(int value) {
    _$contadorAtom.reportWrite(value, super.contador, () {
      super.contador = value;
    });
  }

  late final _$_ContadorStoreActionController = ActionController(name: '_ContadorStore', context: context);

  @override
  void incremetar() {
    final _$actionInfo = _$_ContadorStoreActionController.startAction(name: '_ContadorStore.incremetar');
    try {
      return super.incremetar();
    } finally {
      _$_ContadorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
contador: ${contador}
    ''';
  }
}
