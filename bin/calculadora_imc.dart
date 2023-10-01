import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:calculadora_imc/models/pessoa.dart';

void main(List<String> arguments) {
  print(
      '=============================BEM-VINDO A CALCULADORA DE IMC==============================');
  print(
      '=========================================================================================');
  print('');
  var nome = lerNome();
  var peso = lerPeso();
  var altura = lerAltura();
  var pessoa = Pessoa(nome, peso, altura);
  print('');
  print(
      '=========================================================================================');
  print('');
  print(pessoa.toString());
  print('');
  print(
      '=========================================================================================');
}
