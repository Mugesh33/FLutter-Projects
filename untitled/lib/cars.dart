

    import 'package:flutter/material.dart';

    class Share extends StatefulWidget {
    const Share({Key? key}) : super(key: key);

    @override
    State<Share> createState() => _ShareState();
    }

    class _ShareState extends State<Share> {
    final _formfield = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passController = TextEditingController();
    bool passToggle = true;

    @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: const Text("My Form"),
    centerTitle: true,
    ),
    body: SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 100
    ),
    child: Form(
    key: _formfield,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    const SizedBox(height: 50,),
    TextFormField(
    keyboardType: TextInputType.emailAddress,
   // controller:emailController ,
    decoration: const InputDecoration(
    labelText: "E-Mail",
    border: OutlineInputBorder(),
    prefixIcon: Icon(Icons.email)
    ),
    // validator: (value){
    // if(value!.isEmpty){
    // return"Enter Email";
    // }
    // bool emailValid = RegExp(  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
    // if(value.isEmpty){
    // return "Enter  Email";
    // }
    // else if(!emailValid){
    // return "Enter Valid Email";
    // }
    // }
    ),
    const     SizedBox(height: 80,),
    TextFormField(
    keyboardType: TextInputType.emailAddress,
   // controller:passController ,
    obscureText: passToggle,
    decoration:  InputDecoration(
    labelText: "Password",
    border: OutlineInputBorder(),
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
    // validator: (value){
    // if(value!.isEmpty){
    // return"Enter Password";
    // }
    // else if(passController.text.length<6){
    // return "password Length should be more than 6 characters";
    // }
    // },
    ),
    SizedBox(height: 80,),
    InkWell(
    onTap:() {
    // if(_formfield.currentState!.validate()){
    // print("Success");
    // emailController.clear();
    // passController.clear();
    // }
    },
    child: Container(
    height: 40,
    width: 150,
    decoration: BoxDecoration(
    color: Colors.indigo,
    borderRadius: BorderRadius.circular(7)
    ),
    child: Center(
    child: Text("LOG IN",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
    ),
    ),
    ),
    SizedBox(height: 10,),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("Already have an account ?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
    TextButton(onPressed: () {

    }, child: Text("Sign Up",style:TextStyle(fontSize:20,fontWeight: FontWeight.bold),))
    ],
    ),

    ],
    ),
    ),
    ),
    )
    );




  }
}
