import 'dart:convert';

class Person {
  String name;
  String surname;
  DateTime birthDay;

  Person(this.name, this.surname, this.birthDay);

  Person.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        surname = json['surname'],
        birthDay = DateTime.parse(json['birthDay']);

  static Map<String, dynamic> toMap(Person person) => {
        'name': person.name,
        'surname': person.surname,
        'birthDay': person.birthDay.toString(),
      };
  static String encode(List<Person> person) => jsonEncode(
    person.map<Map<String, dynamic>>((s) => Person.toMap(s)).toList(),
    );
  static List<Person> decode(String person) => 
      (json.decode(person) as List<dynamic>)
        .map((s) => null)
  ;
}
