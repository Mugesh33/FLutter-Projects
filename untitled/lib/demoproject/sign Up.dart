import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() =>_SignupState();
}

class _SignupState extends State<Signup> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final userController = TextEditingController();
  bool passToggle = true;

  String _def = '';
  String _share ="6";

  @override
  void initState() {
    _hlo();
    // _share;
    }
  void _hlo() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _def = (prefs.getString('email') ?? '');
      _share =(prefs.getString('password') ?? "0");
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign up"),
      centerTitle: true,),
      body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 100
      ),
      child:  Form(
      key: _formfield,

      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      const SizedBox(
      height: 15,
      ),
        TextFormField(
            controller:userController ,
            decoration:
            const InputDecoration(
                hintText: "Enter User Name",
                prefixIcon: Icon(Icons.supervised_user_circle)
            ),
            validator: (value){
              if(value!.isEmpty){
                return"Enter user Name";
              }
              bool emailValid = RegExp(  r" ^[a-zA-Z0-9]+$").hasMatch(value);
              if(value.isEmpty){
                return "Enter Correct user Name";
              }
              else if(!emailValid){
                return "Enter Correct user Name";
              }
            }

        ),
        const SizedBox(
          height: 15,),
      TextFormField(
      controller:emailController ,
      decoration:
      const InputDecoration(
      hintText: "Enter  E-mail",
      prefixIcon: Icon(Icons.email)
      ),
      validator: (value){
      if(value!.isEmpty){
      return"Enter Email";
      }
      bool emailValid = RegExp(  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
      if(value.isEmpty){
      return "Enter  Email";
      }
      else if(!emailValid){
      return "Enter Valid Email";
      }
      }

    ),
    const SizedBox(
    height: 15,
    ),
    TextFormField(
    controller:passController ,
    obscureText: passToggle,
    decoration:
    InputDecoration(
    hintText: "Enter Password",
    prefixIcon: Icon(Icons.lock),
    suffix: InkWell(
    onTap: (){
    setState(() {
    passToggle = ! passToggle;
    });
    },
    child: Icon(
    passToggle ? Icons.visibility: Icons.visibility_off
    ),
    )

    ),
    validator: (value){
    if(value!.isEmpty){
    return"Enter Password";
    }
    else if(passController.text.length<6){
    return "password Length should be more than 6 characters";
    }
    },
    ),
    const SizedBox(
    height: 15,
    ),
    InkWell(
    onTap:() async{
    if(_formfield.currentState!.validate()){
    final prefs = await SharedPreferences.getInstance();
    setState(() {
    _def = (prefs.getString('email') ?? "") + emailController.text.trim() ;
    //_def= prefs.setString('email', emailController.text.trim());
    _share = (prefs.getString("password") ?? "" + passController.text );
    });

    print("Success");
    print("email is $_def");
    print("password is $_share");
    emailController.clear();
    passController.clear();
    }
    },
    child:   Container(
    margin: const EdgeInsets.only(top: 20),
    alignment: Alignment.center,
    height: 40,
    width: 150,
    decoration: BoxDecoration(
    gradient:
    const  LinearGradient(colors: [Colors.green,Colors.red],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft),
    color: const Color.fromARGB(255, 3, 68, 247),
    borderRadius: BorderRadius.circular(50)),
    child: const Text(
    "SIGN UP",
    style: TextStyle(color: Colors.white),
    ),
    ),
    ),
    const SizedBox(
    height:10,
    ),
        // const  Text("Forgot Password?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    //  const SizedBox(height: 30,),

    ],
    ),
    ),
      )
    );
  }
}
