abstract class Computer
{
  final Motherboard motherboard;
  final VideoCard videoCard;
  final Cpu cpu;
  final Ram ram;
  final Hdd hdd;
  final PowerUnit powerUnit;

  Computer(
      this.motherboard,
      this.videoCard,
      this.cpu,
      this.ram,
      this.hdd,
      this.powerUnit
  );

  bool powerTesting()
  {
    bool result = true;
    int wattAmount = motherboard.watts + videoCard.watts + cpu.watts + ram.watts + hdd.watts;
    if (wattAmount > powerUnit.watts) {
      result = false;
    }
    return result;
  }
}

class Desktop extends Computer
{
  Desktop(super.motherboard, super.videoCard, super.cpu, super.ram, super.hdd, super.powerUnit);
}

class PowerUnit {
  final int watts;
  PowerUnit(this.watts);
}


class Motherboard {
  final String? socket;
  final int? voltage;
  final int watts;
  Motherboard(this.socket, this.voltage, this.watts);
}

class VideoCard
{
  final double ram;
  final int watts;
  VideoCard(this.ram, this.watts);
}

class Cpu
{
  final double frequency;
  final int watts;
  Cpu(this.frequency, this.watts);
}

class Ram
{
  final double amount;
  final int watts;
  Ram(this.amount, this.watts);
}

class Hdd
{
  final double byteAmount;
  final int watts;
  Hdd(this.byteAmount, this.watts);
}

