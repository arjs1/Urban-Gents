import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urban_gents_app/features/loginpage/widgets/input_text_field.dart';
import 'package:urban_gents_app/features/loginpage/widgets/my_button.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});
  final usernamecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailcontroller.text,
      password: passwordcontroller.text,
    );
  }

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    //wrong email message popup

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "UrbanGents",
              style: GoogleFonts.bebasNeue(
                  color: Colors.black, letterSpacing: 5.0, fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Welcome back you've been missed",
              style: GoogleFonts.poppins(color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),

            InputTextField(
              controller: widget.emailcontroller,
              hinttext: "Email",
              obscuretext: false,
            ),
            SizedBox(
              height: 15,
            ),
            InputTextField(
              controller: widget.passwordcontroller,
              hinttext: "password",
              obscuretext: true,
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget Password?",
                    style: GoogleFonts.poppins(
                      color: Colors.grey.shade600,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MyButton(
              buttontext: 'Sign In',
              onTap: widget.signUserIn,
            ),
            SizedBox(
              height: 20,
            ),
            // Text(
            //   "or continue with",
            //   style: GoogleFonts.poppins(
            //     fontSize: 10,
            //     color: Colors.grey.shade700,
            //   ),
            // ),
            // SizedBox(
            //   height: 40,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     GestureDetector(
            //       onTap: () {
            //         AuthService().signInWithGoogle();
            //       },
            //       child: MySquareTile(
            //           imagePath:
            //               "https://imgs.search.brave.com/vTCwcACTcg2o4L_XU9oOIfkA6VLpBo1CJ618ShAOhSI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly8xMDAw/bG9nb3MubmV0L3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDE2LzEx/L05ldy1Hb29nbGUt/TG9nby00OTd4NTAw/LmpwZw"),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
