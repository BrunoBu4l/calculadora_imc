class Pessoa {
  String _nome = '';
  double _peso = 0;
  double _altura = 0;

  Pessoa(this._nome, this._peso, this._altura);

  String getNome() {
    return _nome;
  }

  set nome(String value) {
    _nome = value;
  }

  double getPeso() {
    return _peso;
  }

  set peso(double value) {
    _peso = value;
  }

  double getAltura() {
    return _altura;
  }

  set altura(double value) {
    _altura = value;
  }

  double calcularIMC() {
    return _peso / (_altura * _altura);
  }
}
