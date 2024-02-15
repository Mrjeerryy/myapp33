// ignore: depend_on_referenced_packages

import 'package:myapp33/routes.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  var name = "";

  // ignore: non_constant_identifier_names
  bool Change = false;
  final _from = GlobalKey<FormState>();
  movetohome(BuildContext context) async {
    if (_from.currentState!.validate()) {
      setState(() {
        Change = true;
      });
      await Future.delayed(const Duration(seconds: 2));
      // ignore: use_build_context_synchronously
      Navigator.pushNamed(context, Myroutes.Homepage);
      setState(() {
        Change = false;
      });
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: SingleChildScrollView(
          child: Center(
              child: Form(
            key: _from,
            child: Column(
              children: [
                Image.asset("assets/images/login.png"),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  "Welcome $name",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 50.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter your Name",
                            labelText: "Enter Name "),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "user name is Required";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter password",
                            labelText: "Enter your Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "passwaordx is required";
                          } else if (value.length < 6) {
                            return "Password must be 6 charachter ";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(Change ? 15 : 5),
                        child: InkWell(
                          onTap: () => movetohome(context),
                          child: AnimatedContainer(
                            height: 40,
                            width: 60,
                            alignment: Alignment.center,
                            duration: const Duration(seconds: 1),
                            child: Center(
                              child: Change
                                  ? const Icon(Icons.done)
                                  : const Text(
                                      "login",
                                      style: TextStyle(color: Colors.white),
                                    ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
