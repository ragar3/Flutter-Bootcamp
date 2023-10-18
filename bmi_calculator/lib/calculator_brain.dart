import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});

  final int weight;
  final int height;
  double? _bmi;

  String getBMI() {
    _bmi = weight / pow(height, 2) * 703;
    return _bmi?.toStringAsFixed(1) ?? '';
  }

  String getResult() {
    switch (_bmi!) {
      case >= 25:
        return 'OVERWEIGHT';
      case > 18.5:
        return 'NORMAL';
      default:
        return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    switch (_bmi!) {
      case >= 25:
        return 'You have a higher than normal body weight. Try to exercise more.';
      case > 18.5:
        return 'You have a normal body weight. Good job!';
      default:
        return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
