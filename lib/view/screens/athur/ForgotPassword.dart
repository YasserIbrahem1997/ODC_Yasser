
import 'package:courses_orange/view/screens/athur/loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constract.dart';
import '../../../controller/fetchForgetPass.dart';
import '../../wdiget/myboutton.dart';

 class ForgetPassword extends StatefulWidget {
   const ForgetPassword({Key? key}) : super(key: key);

   @override
   State<ForgetPassword> createState() => _ForgetPasswordState();
 }
final formKey = GlobalKey<FormState>();
class _ForgetPasswordState extends State<ForgetPassword> {
   @override
   Widget build(BuildContext context) {
     final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
     return Scaffold(
       key: _scaffoldKey,
       backgroundColor: Colors.white,
       appBar: AppBar(
         elevation: 0,
         backgroundColor: colorText,
         leading: IconButton(
           icon: Icon(
             Icons.arrow_back,
             color: Colors.black,
           ),
           onPressed: () =>Navigator.of(context).pushReplacement(
               MaterialPageRoute(builder: (context) => LoginPage())),
         ),
         title: Text(
           'Forgot Password',
           style: TextStyle(color: Colors.black, fontSize: 19),
         ),
         centerTitle: true
       ),
       body: SingleChildScrollView(
         child: Form(
             key: formKey,
             child: FutureBuilder(
               future: fetchForgetpass(emailForgetcontroller.text, context),
               builder: (BuildContext context,
                   AsyncSnapshot<dynamic> snapshot) {
                 return Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       SizedBox(height: 141),
                       Center(
                         child: Image.asset(
                           'assets/images/ImageForget.png',
                           height: 197,
                           width: 197,
                         ),
                       ),
                       SizedBox(height: 50),
                       Text(
                         'Please enter your email address to \n recieve vervication code',
                         style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.bold,
                           color: Colors.black,
                         ),
                         textAlign: TextAlign.center,
                       ),
                       SizedBox(height: 47),
                       Container(
                         width: 335,
                         height: 55,
                         child: TextFormField(
                           controller: emailForgetcontroller,
                           validator: (value) {
                             if (value!.isEmpty ||
                                 !RegExp(r'^[\w-\,]+@[\w-]+[\w-]{2,4}').hasMatch(value)) {
                               return "This field is required";
                             } else {
                               return null;
                             }
                           },
                           keyboardType: TextInputType.emailAddress,
                           decoration: InputDecoration(
                             // this text plucholder in butten
                               hintText: " Email",
                               hintStyle: const TextStyle(
                                 color: Color(0xffa7a7a7),
                               ),
                               // icone befor text email

                               //this broder betton email
                               focusedBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(10),
                                   borderSide: const BorderSide(width: 1.0, color: colorText)),
                               enabledBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(10),
                                   borderSide: const BorderSide(
                                     width: 1.0,
                                     color: colorText,
                                   ))),
                         ),
                       ),
                       SizedBox(
                         height: 35,
                       ),
                       Container(
                         width: 335,
                         height: 55,
                         child: MyButton(lable: "Send", onTap: (){
                           print('click');
                           if (formKey.currentState!.validate()) {
                             print('fetchForgetpass');
                             fetchForgetpass(emailForgetcontroller.text, context);
                           }
                         }, width: 330, height: 50),
                       ),
                     ],
                   ),
                 );
               },)
         ),
       )
     );
   }
 }
