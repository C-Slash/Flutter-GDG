import 'dart:io';

void main() {
  // Q.1
  stdout.write("Enter anny number: ");
  int? num = int.parse(stdin.readLineSync().toString());
  if (num % 2 == 0){
    print("Even number");
  }
  else{
    print("Odd number");
  }

  // Q.2
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  a.forEach((element) {
    if (element < 5){
        print(element);
    }
  });

  // Q.3
  List<int> myList = [1, 5, 9, 8, 5, 4, 2, 1, 7, 8, 9, 5, 1, 2, 6, 10, 70, 100];
  List<int> newList = removeDuplicates(myList);
  print(newList);

  // Q.4
  Car myCar = Car("Toyota","Camry",2020);
  myCar.displayInfo();
}

// function to remove all duplicates in the list (question 3)
List<int> removeDuplicates(List<int> list1) {
  Set<int> convertedList = list1.toSet();
  return convertedList.toList();
}

// car class (question 4)
class Car {
  String? brand;
  String? model;
  int? year;

  Car(this.brand, this.model, this.year);

  void displayInfo() {
    print("Brand: $brand");
    print("Model: $model");
    print("Year: $year");
  }
}
