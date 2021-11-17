import 'dart:convert';

class Person {
  String name;
  String surname;
  DateTime birthDay;

  Person(this.name, this.surname, this.birthDay);

  Person.fromJson()

}
