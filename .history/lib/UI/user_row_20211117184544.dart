import 'package:flutter/material.dart';

class UserRow extends StatelessWidget {
  UserRow(
      {Key? key,
      required this.name,
      required this.surname,
      required this.birthDay})
      : super(key: key);

  String? name;
  String? surname;
  String? birthDay;

  @override
  _UserRowState createState() => _UserRowState();
}

class _UserRowState extends State<UserRow> {
  int colorChange = 0;
  List<Color> colors = <Color>[
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.purple,
  ];
  colorIndex() {
    setState(() {
      if (colorChange == colors.length - 1) {
        colorChange = 0;
      } else {
        colorChange++;
      }
    });
  }
}

@override
Widget build(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
        onPressed: () {
          setState(() {
            colorIndex();
          });
        },
        child: Text('name'),
      ),
      ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
        onPressed: () {
          setState(() {
            colorIndex();
          });
        },
        child: Text('surname'),
      ),
      ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
        onPressed: () {
          colorIndex();
        },
        child: Text('birthday'),
      ),
      ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
        onPressed: () {
          colorIndex();
        },
        child: Text('y.o.'),
      ),
    ],
  );
}
