import 'package:flutter/material.dart';
import 'package:signup_ui/OTP.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

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
                  image: AssetImage(
                    'assets/resetPassword.png',
                  ),
                  height: 250,
                  width: 500,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Reset",
                  style: TextStyle(
                      fontFamily: 'Roboto Medium',
                      color: Color(0xff091E42),
                      fontSize: 35,
                      fontWeight: FontWeight.w600),
                ),
                const Text(
                  "Password",
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
                      Icons.lock_outlined,
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
                            hintText: ' New Password',
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.2)),
                            )),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
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
                            hintText: 'Confirm Password',
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.2)),
                            )),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
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
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const OTP()));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
