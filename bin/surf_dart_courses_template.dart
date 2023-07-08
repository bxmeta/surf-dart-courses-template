// Если вы просто скопируете этот код, он не скомпилируется, это нормально!
//
// 1. Сейчас типа Strategy не существует, вам требуется описать его так, чтобы программа работала (изменять другой код вам при этом не требуется). Подсказка по реализации находится в теории, которую вы прошли.
//
// 2. Опишите эту стратегию так, чтобы карты противников выводились в консоль!
typedef Strategy = double Function (List<String> p0, List<String> p1);

class PokerPlayer {
  /// Список текущих карт в руке у игрока
  List<String> _currentHand = ['King of clubs', 'Nine of hearts'];

  /// Субъективная оценка выигрыша
  double _surenessInWin = 0;

  /// Вычислить шансы на выигрыш
  void calculateProbabilities(
      List<String> cardOnDesk,
      Strategy strategy,
      ) =>
      _surenessInWin = strategy(cardOnDesk, _currentHand);
}

void main() {
  final opponent = PokerPlayer();
  final Strategy fakeStrategy = (p0, p1) {
    print(p0);
    return 1.0;
  };

  opponent.calculateProbabilities(
    ['Nine of diamonds', 'king of hearts'],
    fakeStrategy,
  );
}
