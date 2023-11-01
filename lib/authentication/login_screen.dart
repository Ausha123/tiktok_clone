import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiktok_clone/widgets/input_text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  bool showProgressBar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                "images/tiktok.png",
                width: 200,
              ),
              Text(
                "Welcome",
                style: GoogleFonts.acme(
                    fontSize: 34,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Glad to see you!",
                style: GoogleFonts.acme(
                  fontSize: 34,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              //email input

              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: InputTextWidget(
                  textEditingController: emailTextEditingController,
                  labelString: 'Email',
                  iconData: Icons.email_outlined,
                  isObscure: false,
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              //password input

              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: InputTextWidget(
                  textEditingController: passwordTextEditingController,
                  labelString: 'Password',
                  iconData: Icons.lock_outlined,
                  isObscure: true,
                ),
              ),


              const SizedBox(
                height: 25,
              ),

              //login button
              //not have an account, signup now button
              showProgressBar == false ?
              Column(
                children: [

                  //login button
                  Container(
                    width: MediaQuery.of(context).size.width - 30,
                    height: 54,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10)
                      )
                    ),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          showProgressBar = true;
                        });
                        //login user now
                      },
                      child: const Center(
                        child: Text("Login",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                        ),

                      ),
                    ),
                  ),

                  //not have an account, signup now button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Dont have an Account?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,

                      ),),
                      InkWell(
                        onTap: ()
                        {

                        },
                        child: const Text(
                          "signUp Now",
                          style: TextStyle(
                            fontSize: 18,
                            color:Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ],
                  )

                ],
              ) : Container(
                //show animations
              )
            ],
          ),
        ),
      ),
    );
  }
}
