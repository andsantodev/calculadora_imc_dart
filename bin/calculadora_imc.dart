import 'dart:convert';
import 'dart:io';

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);
}

void main(List<String> arguments) {
  try {
    print("Calculadora IMC");

    print("Digite seu nome:");
    String nome = stdin.readLineSync(encoding: utf8)!;

    print("Digite seu peso:");
    var peso = double.parse(stdin.readLineSync(encoding: utf8)!);

    print("Digite a sua altura:");
    var altura = double.parse(stdin.readLineSync(encoding: utf8)!);

    Pessoa pessoa = Pessoa(nome, peso, altura);
    double imc = calcularIMC(pessoa);

    String imcFormatado = imc.toStringAsFixed(2);

    String resultado = classificacao(imc);

    print("$nome, o seu IMC é: $imcFormatado");
    print("Resultado: $resultado");
  } catch (e) {
    print("Erro: $e");
  }
}

double calcularIMC(Pessoa pessoa) {
  return pessoa.peso / (pessoa.altura * pessoa.altura);
}

String classificacao(double imc) {
  if (imc < 16) {
    return "Magreza grave";
  } else if (imc >= 16 && imc < 17) {
    return "Magreza moderada";
  } else if (imc >= 17 && imc < 18.5) {
    return "Magreza leve";
  } else if (imc >= 18.5 && imc < 25) {
    return "Saudável";
  } else if (imc >= 25 && imc < 30) {
    return "Sobrepeso";
  } else if (imc >= 30 && imc < 35) {
    return "Obesidade Grau I";
  } else if (imc >= 35 && imc < 40) {
    return "Obesidade Grau II (severa)";
  } else {
    return "Obesidade Grau III (mórbida)";
  }
}
