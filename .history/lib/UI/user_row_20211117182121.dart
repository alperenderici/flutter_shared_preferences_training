import 'package:flutter/material.dart';

class UserRow extends StatelessWidget {
  const UserRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty
          ),
          onPressed: onPressed, 
          child: Text('name'),
          ),
      ],
    );
  }
}