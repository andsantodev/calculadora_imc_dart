import 'package:test/test.dart';
import '../bin/calculadora_imc.dart';

void main() {
  test('teste_1', () {
    Pessoa pessoa1 = Pessoa("Adriano", 70, 1.75);
    expect(calcularIMC(pessoa1).toStringAsFixed(2), '22.86');
  });

  test('teste_2', () {
    Pessoa pessoa2 = Pessoa("Ana", 90, 1.60);
    expect(classificacao(calcularIMC(pessoa2)), "Obesidade Grau II (severa)");
  });
}
