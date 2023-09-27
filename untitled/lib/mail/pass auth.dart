import 'package:flutter/material.dart';
import 'package:untitled/Functions/authfunctions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {

  // final Auth auth = Auth();
  final Authfire auth = Authfire();
  final _formkey = GlobalKey<FormState>();
  bool isLogin = false;
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
  String username = "";

  void authlogin(String emailauth , String passwordauth) async{

    await auth.signup(emailauth , passwordauth);
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
  Future<void>_register()async{
    // try{
    //   final UserCredential userCredential= await FirebaseAuth instance.createWithEmailAndpassword(email:_email.text,password:_password.text);
    // }
  }


  @override
  Widget build(BuildContext context) {
    void main() async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      runApp(Auth());
    }

    return Scaffold(
        appBar: AppBar(
            title: const Text("Login"),
            centerTitle: true,
            backgroundColor: Colors.blue),
        body: Form(
            key: _formkey,
            child: Container(
              margin: const EdgeInsets.all(50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // !isLogin
                  //     ? TextFormField(
                  //     // key: const ValueKey("Username"),
                  //     decoration:
                  //     const InputDecoration(hintText: "Enter Username"),
                  //     validator: (Value){
                  //       if(Value.toString().length<3){
                  //         return 'User name is so small';
                  //       }
                  //       else{
                  //         return null;
                  //       }
                  //     },
                  //     // onSaved: (Value)
                  //     // {
                  //     //   setState(() {
                  //     //     username = Value!;
                  //     //   });
                  //     // }
                  // )
                       const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                      // key: const ValueKey("email"),
                      decoration:
                      const InputDecoration(hintText: "Enter  E-mail"),
                      validator: (Value){
                        if(!(Value.toString().contains('@'))){
                          return 'Invalid Email';
                        }
                        else{
                          return null;
                        }
                      },
                      // onSaved: (Value)
                      // {
                      //   setState(() {
                      //     email = Value!;
                      //   });
                      // }
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                      obscureText: true,
                      // key: const ValueKey("password"),
                      decoration:
                      const InputDecoration(hintText: "Enter Password"),
                      validator: (Value){
                        if(Value.toString().length<6){
                          return 'Password is so small';
                        }
                        else{
                          return null;
                        }
                      },
                      // onSaved: (Value)
                      // {
                      //   setState(() {
                      //     password = Value!;
                      //   });
                      // }
                      //
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,),
                        onPressed: () {
                          if(_formkey.currentState!.validate()){
                            _formkey.currentState!.save();
                            authlogin(email.text, password.text);
                           //signup(email,password);
                          }
                         //signup(email, password);
                        },
                        child: isLogin ? const Text("Login", style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20,color:Colors.white),): const Text(
                          "Signup",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20,color:Colors.white),
                        ),
                      )),
                  const SizedBox(

                    height: 15,
                  ),
                  TextButton(
                    onPressed: () async {
                      try {
                        UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: 'email@example.com',
                          password: 'password',
                        );
                      } catch (e) {
                        print('Error: $e');
                      }

                      setState(() {
                        isLogin = !isLogin;
                      });
                    },
                    child: isLogin
                        ? const Text("Don't have an account? SignUp")
                        :
                    const Text("Already Signed Up?Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                  ),
                ],
              ),
            )));
  }
}