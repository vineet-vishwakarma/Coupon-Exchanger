import 'package:coupon_exchanger/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool _obscureText = true;
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
      setState(() {
        changeButton = false;
      });
    }
  }

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
            child: Text(
              'Loginpage',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 200,
                ),
                Text(
                  "Welcome",
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
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
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.mail),
                          label: Text("Email"),
                          hintText: "Enter Email",
                        ),
                      ),
                      TextFormField(
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          icon: GestureDetector(
                            onTap: () {
                              _toggleObscureText();
                            },
                            child: Icon(
                              _obscureText
                                  ? Icons.remove_red_eye
                                  : Icons.remove_red_eye_outlined,
                            ),
                          ),
                          label: const Text("Password"),
                          hintText: "Enter Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password length must be 6";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          alignment: Alignment.center,
                          duration: const Duration(milliseconds: 500),
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                            color: changeButton ? Colors.green : Colors.black,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                  size: 40,
                                )
                              : Text(
                                  "Login",
                                  style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
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
          ),
        ),
      ),
    );
  }
}
