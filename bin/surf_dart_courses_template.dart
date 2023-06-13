import 'package:surf_dart_courses_template/surf_dart_courses_template.dart'
    as surf_dart_courses_template;

void main() {
// Вам пришла очередная задача.
// Для аналитика потребовалось узнать средний возраст всей техники
// и средний возраст техники для 50% самой старой техники
// (нужно отсортировать всю технику по возрасту,
// взять 50% самой старой техники и вычислить их средний возраст).
//
// При этом помните, что одна единица техники может быть приписана к нескольким территориям.
//
// Для решения задачи воспользуйтесь знаниями, полученными по каждой из коллекций в этом модуле.
    final items =  <surf_dart_courses_template.AgriculturalMachinery> {};
    List itemList = <surf_dart_courses_template.AgriculturalMachinery>[];

    //формируем SET со списком техники
    surf_dart_courses_template.mapBefore2010.forEach((country, territory) {
        for (var element in territory) {
            items.addAll(element.machineries);
        }
    });

    surf_dart_courses_template.mapAfter2010.forEach((country, territory) {
        for (var element in territory) {
            items.addAll(element.machineries);
        }
    });

    //сортируем технику по году
    itemList = items.toList();
    itemList.sort((a,b) {
        var aDate = a.releaseDate;
        var bDate = b.releaseDate;
        return aDate.compareTo(bDate);
    });

    print('средний возраст всей техники ${calcAverageAge(itemList)}');
    print('средний возраст 50% техники ${calcAverageAge(itemList.take((itemList.length / 2).toInt()).toList())}');
}

double calcAverageAge (items) {
    final int currentYear =  DateTime.now().year;
    var averageAge = 0.0;
    num totalAge = 0;

    items.forEach((element) {
        var itemAge = currentYear - element.releaseDate.year;
        totalAge += itemAge;
    });
    averageAge = (totalAge/items.length);
    return averageAge;
}
