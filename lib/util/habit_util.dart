bool isHabitCompletedToday(List<DateTime> completeDay) {
  final today = DateTime.now();

  return completeDay.any((date) => 
    date.year == today.year && 
    date.month == today.month &&
    date.day == today.day
  );
}
