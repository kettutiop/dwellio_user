import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Center(
            child: SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'dwellio',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 128, 124, 124),
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text('Create your account',
                      style: TextStyle(
                          color: Color.fromARGB(255, 106, 149, 184),
                          fontSize: 30)),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'New Password',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Confirm Password',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: Color.fromARGB(255, 106, 149, 184),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text('I agree with the privacy and policy')
                    ],
                  ),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 106, 149, 184),
                          foregroundColor: Colors.white),
                      onPressed: () {},
                      child: const Text('SIGNUP'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 320,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/google.jpeg',
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Continue with google',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 320,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/facebook.jpeg',
                            height: 33,
                            width: 33,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          const Text(
                            'Continue with facebook',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
