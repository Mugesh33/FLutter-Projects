import 'package:flutter/material.dart';

//import 'package:flutter_project/Functions/sharedpref/shared.dart';
//import 'home screen.dart';
import 'home.dart';
import 'sign Up.dart';
import 'splash.dart';
//import 'signup.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;
  String? email;

  @override
  void initState() {
    super.initState();
    setUserInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LOGIN"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 100),
        child: Form(
          key: _formfield,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                  padding: EdgeInsets.all(21.0),
                  child: Icon(
                    Icons.supervised_user_circle_outlined,
                    size: 100,
                    color: Colors.blue,
                  )),

              const SizedBox(
                height: 15,
              ),
              TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      hintText: "Enter  E-mail", prefixIcon: Icon(Icons.email)),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Email";
                    }
                    bool emailValid = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value);
                    if (value.isEmpty) {
                      return "Enter  Email";
                    } else if (!emailValid) {
                      return "Enter Valid Email";
                    }
                  }),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: passController,
                obscureText: passToggle,
                decoration: InputDecoration(
                    hintText: "Enter Password",
                    prefixIcon: const Icon(Icons.lock),
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Icon(
                          passToggle ? Icons.visibility : Icons.visibility_off),
                    )),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Password";
                  } else if (passController.text.length < 6) {
                    return "password Length should be more than 6 characters";
                  }
                },
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () async {
                  {
                    if (_formfield.currentState!.validate()) {
                      print("email is not empty");
                      setUserEmail(emailController.text.trim());


                      // emailController.clear();
                      // passController.clear();
                    }
                  }
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [Colors.green, Colors.red],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft),
                      color: const Color.fromARGB(255, 3, 68, 247),
                      borderRadius: BorderRadius.circular(50)),
                  child: const Text(
                    "LOG IN",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "or",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account ?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Signup()),
                        );
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ))
                ],
              ),

              // const  Text("Forgot Password?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              //  const SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }

  void setUserInfo() async {
    email = getUserEmail();
  }
}

void setUserEmail(String trim) {
}
