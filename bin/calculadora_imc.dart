import 'dart:io';

import 'package:calculadora_imc/models/pessoa.dart';

void main(List<String> arguments) {
  print('BEM-VINDO A CALCUADORA DE IMC');
  print('=============================');
  print('');
  print('Digite seu nome:');
  var nome = stdin.readLineSync();
  print('Digite seu peso:');
  var peso = double.parse(stdin.readLineSync()!);
  print('Digite sua altura:');
  var altura = double.parse(stdin.readLineSync()!);
  var pessoa = Pessoa(nome!, peso, altura);
  print('=============================');
  print(pessoa.toString());
}
