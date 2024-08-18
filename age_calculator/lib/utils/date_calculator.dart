class DateCalculator {
  List<double> calculateData(DateTime currentDate, DateTime birthDate) {
    Duration difference = currentDate.difference(birthDate);
    int monthDiff = 0;
    double yearDiff = (currentDate.year - birthDate.year).toDouble();
    while (birthDate.isBefore(currentDate)) {
      birthDate = DateTime(birthDate.year, birthDate.month + 1, birthDate.day);
      monthDiff++;

      // Adjust for leap year if necessary
      if (birthDate.month == 2 && birthDate.day == 29) {
        birthDate = DateTime(birthDate.year, 3, 1);
      }
    }
    List<double> data = [];
    data.addAll([
      difference.inMinutes.toDouble(),
      difference.inHours.toDouble(),
      difference.inDays.toDouble(),
      (difference.inDays / 7),
      monthDiff.toDouble(),
      yearDiff,
    ]);

    return data;
  }
}
