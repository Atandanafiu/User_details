import 'package:flutter/material.dart';
import 'package:linkable/linkable.dart';


class SecondScreen extends StatelessWidget {

  String fullname, email, username, address, phone;


  SecondScreen({
    required  this.fullname,required this.email,required this.username,required this.address,required this.phone});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Full Name: ${fullname}'),
            Text('Email: ${email}'),
            Text('Username: ${username}'),

            Text('Address: ${address}'),
            Text('Phone:  ${phone}'),
           const SizedBox(height: 30.0),
            Linkable(
              text:
              "Hi!\nFor more info visit:\nhttps://training.zuri.team/enrollment\nhttps://hng.tech/",
            ),
          ],
        ),
      ),
    );
  }
}
