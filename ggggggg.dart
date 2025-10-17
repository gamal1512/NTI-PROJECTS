void main() {
  // إنشاء خريطة (Map) لتخزين الطلاب ودرجاتهم في المواد
  Map<String, Map<String, double>> students = {
    'Ahmed': {
      'Math': 85.5,
      'Science': 90.0,
      'English': 78.0,
    },
    'Sara': {
      'Math': 95.0,
      'Science': 88.5,
      'English': 92.0,
    },
    'Omar': {
      'Math': 60.0,
      'Science': 55.0,
      'English': 70.0,
    },
  };

  // 🔹 طباعة درجات كل طالب
  print('--- Students and their grades ---');
  students.forEach((name, subjects) {
    print('\n$name\'s grades:');
    subjects.forEach((subject, grade) {
      print('  $subject: $grade');
    });
  });

  // 🔹 حساب المتوسط لكل طالب وتحديد هل نجح أم لا
  print('\n--- Student Results ---');
  students.forEach((name, subjects) {
    double total = 0;
    subjects.forEach((_, grade) => total += grade);
    double average = total / subjects.length;

    String result = average >= 60 ? 'Passed ✅' : 'Failed ❌';
    print('$name -> Average: ${average.toStringAsFixed(2)} ($result)');
  });

  // 🔹 الوصول لدرجة معينة لطالب محدد
  print('\n--- Specific Access Example ---');
  print("Sara's grade in English: ${students['Sara']?['English']}");
}