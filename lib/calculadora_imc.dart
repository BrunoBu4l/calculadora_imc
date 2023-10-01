import 'dart:io';

import 'package:calculadora_imc/models/pessoa.dart';

String lerNome() {
  while (true) {
    try {
      print('Digite seu nome:');
      var nome = stdin.readLineSync();

      if (nome == null || nome.isEmpty) {
        throw ArgumentError('Nome não pode ser vazio');
      }

      return nome;
    } catch (e) {
      print('Entrada inválida. Certifique-se de digitar um nome válido.');
    }
  }
}

double lerPeso() {
  while (true) {
    try {
      print('Digite seu peso:');
      var peso = double.parse(stdin.readLineSync()!);

      if (peso <= 0) {
        throw ArgumentError('Peso não pode ser menor ou igual a zero');
      }

      return peso;
    } catch (e) {
      print('Entrada inválida. Certifique-se de digitar um número válido.');
    }
  }
}

double lerAltura() {
  while (true) {
    try {
      print('Digite sua altura:');
      var altura = double.parse(stdin.readLineSync()!);

      if (altura <= 0) {
        throw ArgumentError('Altura não pode ser menor ou igual a zero');
      }

      return altura;
    } catch (e) {
      print('Entrada inválida. Certifique-se de digitar uma altura válida.');
    }
  }
}

String calcularImc(String nome, double peso, double altura) {
  if (nome.isEmpty) {
    throw ArgumentError('Nome não pode ser vazio');
  }
  if (peso <= 0) {
    throw ArgumentError('Peso não pode ser menor ou igual a zero');
  }
  if (altura <= 0) {
    throw ArgumentError('Altura não pode ser menor ou igual a zero');
  }
  var pessoa = Pessoa(nome, peso, altura);
  return pessoa.toString();
}
