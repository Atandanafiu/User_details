import 'package:flutter/material.dart';
import 'package:user_info_collector/display_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
 final TextEditingController _fullname =  TextEditingController();
 final TextEditingController _email = TextEditingController();
 final TextEditingController _username = TextEditingController();
 final TextEditingController _address = TextEditingController();
 final TextEditingController _phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Image.asset('assets/images/download.png', height:96.0,),
                Image.asset('assets/images/main.png', height: 94.0,),
              ],
            ),
           const SizedBox (height: 50.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _fullname,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your full name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _email,
                decoration: const  InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Email'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _username,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Username'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(controller: _address,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your home address',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your Phone number',
                ),
              ),
            ),
           const SizedBox (height: 50.0,),

            ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen(
                    fullname: _fullname.text,
                    email: _email.text,
                    username: _username.text,
                    address: _username.text,
                    phone: _phone.text)));
              },

              child: const Text('Send Details'),
            )
          ],
        ),
      ),
    );
  }
}
