import 'package:fitnesss_app/constants/colors.dart';
import 'package:flutter/material.dart';

class ForgotPassward extends StatefulWidget {
  const ForgotPassward({super.key});

  @override
  State<ForgotPassward> createState() => _ForgotPasswardState();
}

class _ForgotPasswardState extends State<ForgotPassward> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.only(
            top: size.height * 0.06,
            left: size.width * 0.05,
            right: size.width * 0.05,
            bottom: size.height * 0.03,
          ),
          child: Column(
            children: [
              Text(
                'Forgot Password'.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * .07,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Text(
                'Enter your email address to receive a link to reset your password.',
                style: TextStyle(color: Colors.white70, fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: size.width * 0.04,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade800),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade800),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              Spacer(),
              Container(
                width: size.width * .9,
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Try Another Way",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: size.width * 0.04,
                    ),
                  ),
                ),
              ),
                SizedBox(height: size.height * 0.02),
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.02,
                      horizontal: size.width * 0.3,
                    ),
                  ) ,
                  child: Text(
                    'Send ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: size.width * 0.04,
                    ),
                  ),
                )
              )          
            ],
          ),
        ),
      ),
    );
  }
}
