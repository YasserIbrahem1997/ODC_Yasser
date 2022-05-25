import 'package:courses_orange/constract.dart';
import 'package:courses_orange/controller/fetchlogin.dart';
import 'package:courses_orange/view/screens/athur/ForgotPassword.dart';
import 'package:courses_orange/view/screens/athur/singup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final formKey = GlobalKey<FormState>();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Form(
            key: formKey,
            child: FutureBuilder(
              future: fetchLogin(
                  emailcontroller.text, passwordcontroller.text, context),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // this image logo orang
                    Container(
                        padding: EdgeInsets.only(left: 30, top: 180),
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          "assets/images/splash.png",
                          width: 100,
                        )),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 40,
                          left: 20,
                        ),
                        child: ListTile(
                          title: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Welcome ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontTitleB,
                                      color: colorBlack)),
                              TextSpan(
                                  text: " Back!",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontTitleB,
                                      color: colorTxetOrange))
                            ]),
                          ),
                          subtitle: Text(
                            "Login",
                            style: TextStyle(
                              color: colorBlack,
                              fontSize: fontTitleC,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    // input email and sing to contant
                    _FormLogin(),
                  ],
                );
              },
            )),
      ),
    );
  }
// this Widget Form login

  Widget _FormLogin() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),

          // this text fild emil
          TextFormField(
            controller: emailcontroller,
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
          const SizedBox(
            height: 35,
          ),
          // text pass up button
          TextFormField(
            controller: passwordcontroller,
            // here is check
            validator: (value) {
              if (value!.isEmpty || value.length < 6) {
                return "This field is pass required";
              } else {
                return null;
              }
            },
            // onSaved: (value) => passwordcontroller.text = value!,

            decoration: InputDecoration(
                // this text plucholder in butten
                hintText: " Password",
                hintStyle: const TextStyle(
                  color: Color(0xffa7a7a7),
                ),
                // icone befor text pass

                //this broder betton pass
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1.0, color: colorText)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: colorText,
                    ))),
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>  ForgetPassword(),
                  ),
                );
              },
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: fontDescA,
                  color: colorTxetOrange,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              child: ElevatedButton(
                onPressed: () {
                  print('click');
                  if (formKey.currentState!.validate()) {
                    print('Validate');
                    print(emailcontroller.text);
                    print(passwordcontroller.text);
                    fetchLogin(
                        '{$emailcontroller}', '{$passwordcontroller}', context);
                  }
                },
                child: const Text(
                  " SIGN UP",
                  style: TextStyle(
                    color: colorText,
                    fontSize: 15,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(
                      left: 110, right: 110, top: 15, bottom: 15),
                  primary: colorButton,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don’t Have an Account? ",
                    style: TextStyle(
                        fontSize: fontDescA,
                        fontWeight: FontWeight.bold,
                        color: colorBlack),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: fontDescA,
                        fontWeight: FontWeight.bold,
                        color: colorTxetOrange,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const SingUp()),
                      );
                    },
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
