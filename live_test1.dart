void main() {
  List<Map<String, dynamic>> students = [
    {
      "name": "Alice",
      "scores": [85, 90, 78],
    },
    {
      "name": "Bob",
      "scores": [88, 76, 95],
    },
    {
      "name": "Charlie",
      "scores": [90, 92, 85],
    },
  ];

  Map<String, double> averages = {};
  for (var student in students) {
    List<int> scores = List<int>.from(student['scores']);
    double avg = scores.reduce((i, j) => i + j) / scores.length;
    averages[student['name']] = double.parse(avg.toStringAsFixed(2));
  }

  var sortedNumbers =
      averages.entries.toList()..sort((i, j) => j.value.compareTo(i.value));
  Map<String, double> sortedAverages = {
    for (var entry in sortedNumbers) entry.key: entry.value,
  };

  print('{');
  for (var entry in sortedAverages.entries) {
    print(' "${entry.key}": ${entry.value},');
  }
  print('}');
}
