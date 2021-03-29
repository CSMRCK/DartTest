import 'package:yield/yield.dart' as yield;
import 'package:trotter/trotter.dart';

int chooseBestDistance(int t, int k, List<int> ls) {
  if (ls.length > 2) {
    final combos = Combinations(k, ls);
    List<int> result;

    for (final combo in combos()) {
      var summ = combo.reduce((value, element) => value + element);
      if (summ < t) {
        result = combo;
      }
    }

    var summ = result.reduce((value, element) => value + element);
    print(summ);
    print(result);
    return summ;
  } else {
    print("Error! The lists length is not acceptable!");
    return -1;
  }
}

void main(List<String> arguments) {
  chooseBestDistance(174, 3, [51, 56, 58, 59, 61]);
  chooseBestDistance(163, 3, [50]);

  chooseBestDistance(44, 2, [11, 15, 18, 20, 27]);
  chooseBestDistance(195, 3, [44, 50, 52, 67, 70]);
}
