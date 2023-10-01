import 'package:calculadora_imc/enum/classificacao.dart';

class Pessoa {
  String _nome = '';
  double _peso = 0;
  double _altura = 0;

  Pessoa(this._nome, this._peso, this._altura);

  String getNome() {
    return _nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  double getPeso() {
    return _peso;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getAltura() {
    return _altura;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double calcularIMC() {
    return _peso / (_altura * _altura);
  }

  Classificacao classificarIMC() {
    var imc = calcularIMC();
    if (imc < 16) {
      return Classificacao.magrezaGrave;
    } else if (imc < 17) {
      return Classificacao.magrezaModerada;
    } else if (imc < 18.5) {
      return Classificacao.magrezaLeve;
    } else if (imc < 25) {
      return Classificacao.saudavel;
    } else if (imc < 30) {
      return Classificacao.sobrepeso;
    } else if (imc < 35) {
      return Classificacao.obesidadeGrauI;
    } else if (imc < 40) {
      return Classificacao.obesidadeGrauII;
    } else {
      return Classificacao.obesidadeGrauIII;
    }
  }

  @override
  String toString() {
    return {
      'Nome': _nome,
      'Peso': _peso,
      'Altura': _altura,
      'IMC': calcularIMC().toStringAsFixed(2),
      'Classificação': enumToString(classificarIMC())
    }.toString();
  }
}
