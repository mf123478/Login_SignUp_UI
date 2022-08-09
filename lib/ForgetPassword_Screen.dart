import 'package:flutter/material.dart';
import 'package:signup_ui/resetPassword.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.grey.shade700,
                  size: 30,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Image(
                image: AssetImage('assets/forgotPassword.png'),
                width: 500,
                height: 280,
              ),
              const Text(
                "Forgot",
                style: TextStyle(
                    fontFamily: 'Roboto Medium',
                    color: Color(0xff091E42),
                    fontSize: 35,
                    fontWeight: FontWeight.w600),
              ),
              const Text(
                "Password?",
                style: TextStyle(
                    fontFamily: 'Roboto Medium',
                    color: Color(0xff091E42),
                    fontSize: 35,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Don't worry! It happens, Please enter the address associated with your account.",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontFamily: "Roboto Regular",
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.alternate_email_outlined,
                    color: Color(0xff7F8B9D),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(
                        fontFamily: "Roboto Medium",
                        color: Color(0xff091E42),
                      ),
                      decoration: InputDecoration(
                          hintText: 'Email ID / Mobile Number',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.withOpacity(0.2)),
                          )),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                child: Container(
                  width: 400,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                      child: Text(
                    "Submit",
                    style: TextStyle(
                        fontFamily: 'Roboto Medium',
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResetPassword()));
                },
              )
            ],
          ),
        )),
      ),
    );
  }
}
