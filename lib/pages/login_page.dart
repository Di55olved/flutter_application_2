import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = false;
  String name = "";
  bool changedButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_img.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter Username", labelText: "Usermane"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: passwordVisible,
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                              icon: Icon(passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off))),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changedButton = true;
                        });
                        await Future.delayed(const Duration(seconds: 1));
                        // ignore: use_build_context_synchronously
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: 150,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            shape: changedButton
                                ? BoxShape.circle
                                : BoxShape.rectangle,
                          ),
                          child: changedButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )),
                    ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   style: TextButton.styleFrom(
                    //       minimumSize: const Size(150, 40)),
                    //   child: const Text("Login"),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
