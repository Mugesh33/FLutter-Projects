// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//
// class Login extends StatefulWidget {
//   const Login({Key? key}) : super(key: key);
//
//   @override
//   State<Login> createState() => _LoginState();
// }
// final TextEditingController passwordController = TextEditingController();
// final TextEditingController nameController = TextEditingController();
// //final TextEditingController dateofbirthController = TextEditingController();
// final TextEditingController emailController = TextEditingController();
//
//
// class _LoginState extends State<Login> {
//   TextEditingController _date= TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           height:MediaQuery.of(context).size.height ,
//
//
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//             Container(
//               alignment: Alignment.center,
//
//
//                 child:const Text("Create New Account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),)
//             ),
//                 const  SizedBox(
//             height: 20,
//             ),
//
//             const Text("Already Registered? Login here.",style: TextStyle(fontSize:15,fontWeight:FontWeight.bold),),
//                 const  SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.8,
//                   //alignment: Alignment.topLeft,
//
//                   child: Text("NAME:",style:TextStyle(fontSize:15,fontWeight: FontWeight.bold ),),
//
//                 ),
//                   Container(
//               width: MediaQuery.of(context).size.width * 0.8,
//               child:const TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                // hintText: 'Name',
//               ),
//             ),
//             ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.8,
//                   //alignment: Alignment.topLeft,
//
//                   child: Text("E-Mail:",style:TextStyle(fontSize:15,fontWeight: FontWeight.bold ),),
//
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width * 0.8,
//                   child:const TextField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                     //  hintText: 'E-Mail',
//                     ),
//                   ),
//                 ),
//                 const    SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.8,
//                   //alignment: Alignment.topLeft,
//
//                   child: Text("PASSWORD:",style:TextStyle(fontSize:15,fontWeight: FontWeight.bold ),),
//
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width * 0.8,
//                   child:const TextField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                      // hintText: 'Password',
//                     ),
//                   ),
//                 ),
//                 const  SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.8,
//                   //alignment: Alignment.topLeft,
//
//                   child: Text("DATE OF BIRTH:",style:TextStyle(fontSize:15,fontWeight: FontWeight.bold ),),
//
//                 ),
//                  Container(
//                   width: MediaQuery.of(context).size.width * 0.8,
//                   child:  TextField(
//                     controller: _date,
//                     decoration: InputDecoration(prefixIcon:Icon(Icons.calendar_today) ,
//                       border: OutlineInputBorder(),
//                     //  icon: Icon(Icons.calendar_today),
//                      // hintText: 'Date of birth',
//                     ),
//                     // readOnly: true,  // when true user cannot edit text
//                     onTap: () async {
//                       DateTime? pickeddate = await showDatePicker(
//                           context: context,
//                           initialDate: DateTime.now(),
//                           firstDate: DateTime(2000),
//                           lastDate: DateTime(2101));
//
//
//                           if(pickeddate !=null){
//                             setState((){
//                                _date.text=DateFormat("yyyy-MM-dd").format();
//                             });
//                       }
//
//
//
//                     }  ),
//                 ),
//                 const  SizedBox(
//                   height: 20,
//                 ),
//                 // Container(decoration: BoxDecoration(
//                 //   borderRadius: BorderRadius.all(Radius.circular()),
//                 // ),
//                 //   height: 54,
//                 //   width: 150,
//                 //   color: Colors.blueAccent,
//                 // ),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.black,
//                       fixedSize: Size(159, 50)),
//                   onPressed: () {
//                     // Respond to button press
//                   },
//                   child: Text('Sign up',style: TextStyle(fontSize: 20),),
//                 )
//               ]),
//         ),
//       ),
//     ));
//   }
// }
