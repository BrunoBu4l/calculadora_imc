import 'dart:math';

import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:test/test.dart';

void main() {
  group('Teste de Calculadora de IMC', () {
    test('calcularImc deve retornar valores válidos', () {
      final nome = 'Jose';
      final peso = 70.0;
      final altura = 1.75;

      final result = calcularImc(nome, peso, altura);

      expect(result, contains('Nome: Jose'));
      expect(result, contains('Peso: 70.0'));
      expect(result, contains('Altura: 1.75'));
      expect(result, contains('IMC: 22.86'));
      expect(result, contains('Classificação: Saudavel'));
    });
  });
}
