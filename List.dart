// void main() {
//   List<int> numbers1 = [1,2,3,4,5]; //انا هنا عملت اينت دي علشان عايز اكون محدد النوع طيب لو شيلتها هيتعامل معاملة الديناميك 
//   List<int> numbers2 = List.filled(5,3);//(length, fill); // بتخليني ادخل قيم مكان الينث علشان اعمل عدد كذا رقم والفيل بكتب فيها الرقم اللي عايزه يكون موجود في اليست بتاعتي 
//   List<int> numbers3 = List.generate(5,(int idex)=>idex+1);//(length, generator); // بكتب اللينث العدد اللي عايزه والجينتور ده بعمل فيه اندكس بيبداء من الصفر وكل مرة يزود واحد او الرقم اللي عايزه عادي 
// print(numbers1);
// print(numbers2);
// print(numbers3);
// List<int> numbers4 = [10,20,30,40,50];
// numbers4.addAll([60,70,80,90]); // هيضيف لارقام دي علي الليست الي عاملهاااا
// numbers4.insert(1, 0); // بتضيف رقم انا عايزه ف الاول 
// numbers4.remove(70); // يمسح الرقم اللي انا عايزه 
// print(numbers4);
// print(numbers4.remove(50)); // لو عايز اشوف الرقم اللي انا كتبه ينفع امسحه ولا لا 
// print(numbers4.removeAt(1)); // لو عايز اطلع قيم عنصر ب اني اكتب الرقم بتاعها ف الليست 
// print(numbers4.contains(30));
// numbers4.forEach((item){item =0;}); //
//   for (int item in numbers4){
//     print(item);
//   }
// }
// void main(){
//   List<int> x = [1,2,3,4,5];
//   // x = x.map((int item)=> item*2).toList();
//   List<String> res = x.map((int element) => "number is ${element*2}").toList();
//   print(res);
// }
void main()
{
Map<String,Map<String,double>>
Students = 
{
  "gamal" : {
    "Math" : 95,
    "Science" : 90,
    "History" : 100,
  },
  "amal" : {
    "Math" : 85,
    "Science" : 70,
    "History" : 90,
  },
  "ahmed" : {
    "Math" : 75,
    "Science" : 90,
    "History" : 80,
  },
};
// print(' Students and their grades ');
//   Students.forEach((name, subjects) {
//     print('\n$name\'s grades:');
//     subjects.forEach((subject, grade) {
//       print('  $subject: $grade');
//     });
//   });
// print('\n--- Student Results ---');
//   Students.forEach((name, subjects) {
//     double total = 0;
//     subjects.forEach((_, grade) => total += grade);
//     double average = total / subjects.length;

//     String result = average >= 60 ? 'Passed ✅' : 'Failed ❌';
//     print('$name -> Average: ${average.toStringAsFixed(2)} ($result)');
//   });
//   print('\n Specific Access Example ');
//   print("amal is grade in English: ${Students['amal']?['History']}")Students;
}
for (var entry in m.entries){
  double average = 0;
  for(var valueEntry)
}