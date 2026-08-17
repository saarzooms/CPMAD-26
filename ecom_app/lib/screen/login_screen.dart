import 'dart:developer';

import 'package:ecom_app/screen/dashboard_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController txtUnm = TextEditingController();

  TextEditingController txtPwd = TextEditingController();

  bool isHide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ecom')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: txtUnm,
              decoration: InputDecoration(
                hintText: "Enter username",
                labelText: "Username",
                prefix: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 50),
            TextField(
              controller: txtPwd,
              obscureText: isHide,
              decoration: InputDecoration(
                hintText: "Enter password",
                labelText: "Password",
                prefix: Icon(Icons.key),
                suffix: IconButton(
                  onPressed: () {
                    isHide = !isHide;
                    setState(() {});
                  },
                  icon: Icon(isHide ? Icons.visibility_off : Icons.visibility),
                ),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                log('Login Button clicked ${txtUnm.text} ${txtPwd.text}');
                if (txtUnm.text.isEmpty || txtPwd.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Please enter credentials',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                } else if (txtUnm.text == txtPwd.text) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Welcome ${txtUnm.text}')),
                  );
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Invalid credentials',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
