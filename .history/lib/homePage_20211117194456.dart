// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_shared_preferences_training/person.dart';
import 'UI/user_row.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? name;
  String? surname;
  DateTime? birthDay;
  int? age;
  List<Person> personList = [];
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();

  getValues() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance()
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Name',
                labelText: 'Name',
              ),
              controller: null,
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Surname',
                labelText: 'Surname',
              ),
              controller: null,
              textInputAction: TextInputAction.next,
            ),
            DateTimePicker(
              initialValue: DateTime.now().toString(),
              firstDate: DateTime(1914),
              lastDate: DateTime(2100),
              dateLabelText: 'Birthday',
              onChanged: null,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.save),
              label: const Text('Save'),
              onPressed: null,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: 300,
                color: Colors.yellow[200],
                child: const SizedBox.expand(
                  child: Text('Data will be print here!'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
