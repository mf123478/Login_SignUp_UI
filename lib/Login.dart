import 'package:flutter/material.dart';
import 'package:signup_ui/ForgetPassword_Screen.dart';
import 'package:signup_ui/Signup_screen.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(
                image: AssetImage('assets/login.png'),
                height: 280,
                width: 500,
              ),
              const Text(
                "Login",
                style: TextStyle(
                    fontFamily: 'Roboto Medium',
                    color: Color(0xff091E42),
                    fontSize: 35,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
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
                    Icons.lock_outline,
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
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          suffixIcon: const Icon(Icons.visibility_off_outlined),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.withOpacity(0.2)),
                          )),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(
                      fontFamily: 'Roboto Medium',
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPassword()),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
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
                    "Login",
                    style: TextStyle(
                        fontFamily: 'Roboto Medium',
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                  child: Text(
                "OR",
                style: TextStyle(
                    fontFamily: 'Roboto Regular',
                    color: Colors.grey.shade600,
                    fontSize: 16),
              )),
              const SizedBox(
                height: 15,
              ),
              Container(
                  width: 400,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xffF1F6F7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                          image: AssetImage('assets/google.png'),
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Text(
                          "Login with Google",
                          style: TextStyle(
                              fontFamily: 'Roboto Regular',
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'New to Logistics? ',
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontFamily: 'Roboto Regular '),
                  ),
                  GestureDetector(
                    child: const Text(
                      'Register',
                      style: TextStyle(
                          fontFamily: 'Roboto Medium', color: Colors.blue),
                    ),
                    onTap: () {
                      Navigator.pop(context);
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
