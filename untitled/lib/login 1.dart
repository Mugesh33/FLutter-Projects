import 'package:flutter/material.dart';



class New extends StatefulWidget {
  const New({super.key});
  @override
  State<New> createState() => _NewState();
}

_NewState() {
}

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class _LoginState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              IconButton(onPressed:(){Navigator.pop(context);}, icon:const Icon(Icons.arrow_back_ios)),
              Container(
                  alignment: Alignment.center,
                  child:  Column(
                    children: [
                      Image(image: AssetImage("assets/customer.jpg")),
                      Text('Welcome Back!',
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Text("log in to your account of Allure")
                    ],
                  )),
              Container(
                height: 60,
                width: double.infinity,
                alignment: Alignment.center,
                margin:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: const BoxDecoration(),
                child: TextFormField(
                  //   validator: (value){

                  //   },
                    controller: emailController,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        hintText: 'E-mail',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                        ))),
              ),
              Container(
                height: 60,
                width: double.infinity,
                alignment: Alignment.center,
                margin:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: const BoxDecoration(),
                child: TextFormField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'Password',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                        ))),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: const Text("Forgot Password?"),
              ),
              InkWell(
                onTap: () {
                  final bool emailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(emailController.text.trim());
                  final bool phoneValid = RegExp(
                      r'^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[!@#\$&*~]).{8,}$')
                      .hasMatch(passwordController.text.trim());
                  if (emailValid || phoneValid == true) {
                    SnackBar(
                      content: const Text('Yay! A SnackBar! success'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          // Some code to undo the change.
                        },
                      ),
                    );
                    print("success");
                  } else {
                    print("Failed");
                  }
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 3, 68, 247),
                      borderRadius: BorderRadius.circular(50)),
                  child: const Text(
                    "LOG IN",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                child: const Text("Or connect using"),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Facebook',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 17, 74, 231),
                    ),
                  ),


                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Google'),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 255, 75, 3),
                    ),
                  ),

                  const SizedBox(
                    width: 20,
                  ),
                  Center(
                    child: InkWell(
                      onTap: (){
                        //  Navigator.push(context,MaterialPageRoute(builder: (context)=>Candy()));
                      },
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.black
                        ),
                        child: Text("Navigate"),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                  ),
                  Text(" Sign Up",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}




