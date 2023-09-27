import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

class Oppo extends StatefulWidget {
  const Oppo({Key? key}) : super(key: key);
  @override
  State<Oppo> createState() => _OppoState();
}
class _OppoState extends State<Oppo> {
  late final TextEditingController _email;
  late final TextEditingController _password;
 // late final TextEditingController _Login;
  @override
  void initState() {
    _email=TextEditingController();
    _password=TextEditingController();
  //  _Login=TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
  //  _Login.dispose();
    super.dispose();
  }
  Future<void> _register() async{
    try{
      final UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email.text, password: _password.text);
      print("User created : ${userCredential.user}");
      await userCredential.user!.sendEmailVerification();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Registration successful please check your Email for Verification"))
      );
    }
    on FirebaseAuthException catch(e){
      print("Error:e");
      ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(content: Text("Registration failed: $e")),
      //  duration:Duration(seconds: 5),
      );
    }
    catch(e){
      print("Error:$e");
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Registration failed: $e")),
      );
      }
 }
 @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(title: const Text('Login form'),
        centerTitle: true,
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child:  TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller:_email ,
                decoration: const InputDecoration(
                    labelText: "E-Mail",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email)
                ),
              ),
            ),
            const  SizedBox(height: 30,),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller:_password ,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                  border:  OutlineInputBorder(),
                  prefixIcon:  Icon(Icons.lock),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
           onPressed: () async {
             try {
               WidgetsFlutterBinding.ensureInitialized();
               await Firebase.initializeApp(
                 options: DefaultFirebaseOptions.currentPlatform,
               );

               UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                 email: 'email@example.com',
                 password: 'Hello',
               );
             } catch (e) {
               print('Error: $e');
             }
           },
            style: TextButton.styleFrom(
              primary: Colors.white,  // Text color
              backgroundColor: Colors.blue, // Button background color
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20), // Padding
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Border radius
              ),
            ),
            child: Text("Login",style: TextStyle(fontSize: 15,color:Colors.white,fontWeight: FontWeight.bold),),
          ),
         const   SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: _register,
              style: TextButton.styleFrom(
                primary: Colors.white,  // Text color
                backgroundColor: Colors.blue, // Button background color
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20), // Padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Border radius
                ),
              ),
              child: const Text(
                "Register",
                style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}