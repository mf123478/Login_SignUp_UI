import 'package:flutter/material.dart';
import 'package:signup_ui/Login.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_back_rounded,
                color: Colors.grey.shade700,
                size: 30,
              ),
              const Image(image: AssetImage('assets/signup.png')),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Sign up",
                style: TextStyle(
                    fontFamily: 'Roboto Medium',
                    color: Color(0xff091E42),
                    fontSize: 35,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 30,
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
                          hintText: 'Email ID',
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
                height: 20,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.perm_identity_outlined,
                    color: Color(0xff7F8B9D),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: const TextStyle(
                        fontFamily: "Roboto Medium",
                        color: Color(0xff091E42),
                      ),
                      decoration: InputDecoration(
                          hintText: 'Full Name',
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
                height: 20,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.local_phone_outlined,
                    color: Color(0xff7F8B9D),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                        fontFamily: "Roboto Medium",
                        color: Color(0xff091E42),
                      ),
                      decoration: InputDecoration(
                          hintText: 'Mobile',
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
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "By Signing up, you're agree to our ",
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontFamily: "Roboto Regular",
                        fontSize: 13),
                  ),
                  const Text(
                    'Terms & Conditions',
                    style: TextStyle(
                        color: Colors.blue, fontFamily: "Roboto Medium"),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "and ",
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontFamily: "Roboto Regular",
                        fontSize: 13),
                  ),
                  const Text(
                    "Privacy Policy",
                    style: TextStyle(
                        fontFamily: 'Roboto Medium', color: Colors.blue),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                    child: Text(
                  "Continue",
                  style: TextStyle(
                      fontFamily: 'Roboto Medium',
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Joined us before? ',
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontFamily: 'Roboto Regular '),
                  ),
                  GestureDetector(
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontFamily: 'Roboto Medium', color: Colors.blue),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                  )
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
