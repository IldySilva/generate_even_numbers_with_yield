import 'package:benchmark_harness/benchmark_harness.dart';

Iterable<int> gerarNumerosParesComYield(int quantidade) sync* {
  for (int i = 0; i < quantidade; i++) {
    if (i % 2 == 0) {
      yield i;
    }
  }
}

List<int> gerarNumerosParesSemYield(int quantidade) {
  List<int> resultado = [];
  for (int i = 0; i < quantidade; i++) {
    if (i % 2 == 0) {
      resultado.add(i);
    }
  }
  return resultado;
}

class A extends BenchmarkBase {
  const A() : super('A');

  @override
  void run() => gerarNumerosParesComYield(10000); // here

  @override
  void exercise() {
    for (var i = 0; i < 100000; i++) {
      run();
    }
  }
}

class B extends BenchmarkBase {
  const B() : super('B');

  @override
  void run() => gerarNumerosParesSemYield(10000); // here

  @override
  void exercise() {
    for (var i = 0; i < 100000; i++) {
      run();
    }
  }
}

void main() {
  A().report();
  B().report();
}
