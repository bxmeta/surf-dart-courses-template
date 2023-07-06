import 'package:surf_dart_courses_template/surf_dart_courses_template.dart';

void main() {
  PowerUnit powerUnit = PowerUnit(1000);
  Motherboard motherboard = Motherboard(null, 20, 200);
  VideoCard videoCard = VideoCard(16, 100);
  Cpu cpu = Cpu(25000, 50);
  Ram ram = Ram(16, 500);
  Hdd hdd = Hdd(15000, 200);

  Desktop desktop = Desktop(motherboard, videoCard, cpu, ram, hdd, powerUnit);
  print(desktop.powerTesting());
}
