import 'package:flutter/material.dart';

class OTP extends StatelessWidget {
  const OTP({Key? key}) : super(key: key);

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
                image: AssetImage('assets/otp.png'),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Enter OTP",
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
                "An 4 digit code has been send to \n+92 3475452529",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontFamily: "Roboto Medium",
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "2",
                        style: TextStyle(
                            fontFamily: 'Roboto Medium',
                            color: Color(0xff091E42),
                            fontSize: 30),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "0",
                        style: TextStyle(
                            fontFamily: 'Roboto Medium',
                            color: Color(0xff091E42),
                            fontSize: 30),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "7",
                        style: TextStyle(
                            fontFamily: 'Roboto Medium',
                            color: Color(0xff091E42),
                            fontSize: 30),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "7",
                        style: TextStyle(
                            fontFamily: 'Roboto Medium',
                            color: Color(0xff091E42),
                            fontSize: 30),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
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
                  "Verify",
                  style: TextStyle(
                      fontFamily: 'Roboto Medium',
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
              )
            ],
          ),
        )),
      ),
    );
  }
}
