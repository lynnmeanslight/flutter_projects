class DateFormatter {
  List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  String convertMonth(int monthInNum) {
    return months[monthInNum - 1];
  }

  String toString({day = int, month = String, year = int}) {
    return "${day} ${months[month - 1]} ${year}";
  }

  String getTodayString(DateTime now) {
    return "${now.day} ${months[now.month - 1]} ${now.year}";
  }
}
