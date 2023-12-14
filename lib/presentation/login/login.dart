import 'package:agora/presentation/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static String name = "";
  static String userId = "";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text("Login"),
      ),
      body: Container(
        margin:const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (val) {
                name = val;
              },
              decoration:const InputDecoration(
                  hintText: "Name", border: OutlineInputBorder()),
            ),
        const    SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (val) {
                userId = val;
              },
              decoration:const InputDecoration(
                  hintText: "UserId", border: OutlineInputBorder()),
            ),
          const  SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
                },
                child: const Text("Submit"))
          ],
        ),
      ),
    );
  }
}