import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {

  //  return 'ITERPRETATION';
     if (_bmi >= 25) {
      return 'You present a higher than normal weight try to reduce it my friend.';
    } else if (_bmi > 18.5) {
      return 'You present a normal body weight good job my friend. ';
    } else {
      return 'You present a lower than normal weight you better eat more my friend.';
    }

  }
}
//}
