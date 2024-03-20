import 'package:habittracker/models/habit.dart';

bool isHabitCompletedToday(List<DateTime> completeDay) {
  final today = DateTime.now();

  return completeDay.any((date) => 
    date.year == today.year && 
    date.month == today.month &&
    date.day == today.day
  );
}

Map<DateTime,int> prepHeaetMapDataset(List<Habit> habits){
  Map<DateTime,int> dataset ={};

  for(var habit in habits){
    for(var date in habit.completedDays){
      final normalizedDate = DateTime(date.year,date.month,date.day);

      if(dataset.containsKey(normalizedDate)){
        dataset[normalizedDate] = dataset[normalizedDate]! + 1;
      }else{
        dataset[normalizedDate] = 1;
      }
    }
  }
  return dataset;
}