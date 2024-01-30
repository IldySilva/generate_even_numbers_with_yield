import 'package:benchmarks/benchmarks.dart';
import 'package:test/test.dart';

void main() {
  group('Benchmark Tests', () {
    test('Benchmark A should run without errors', () {
      expect(() => A().report(), returnsNormally);
    });

    test('Benchmark B should run without errors', () {
      expect(() => B().report(), returnsNormally);
    });
  });
}
