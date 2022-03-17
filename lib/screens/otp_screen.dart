import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            children: [
                Padding(
                    padding: EdgeInsets.only(top: 40.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                            children: [
                                Container(
                                    height: 40.0,
                                    child: Image.asset("assets/images/glen_logo.png"),
                                ),
                                SizedBox(height: 20.0),
                                const Align(
                                   alignment: Alignment.center,
                                   child: Text("Verify your number", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                                ),
                               SizedBox(height: 20.0),
                               const Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(left:10.0, right:10.0),
                                  child: Text("Enter the 4 digit verification code to +91-9540174604 over sms", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 16.0)),
                                ),
                               ),
                              SizedBox(height: 40.0),
                              Container(
                                height: 50.0,
                                width: MediaQuery.of(context).size.width,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      SizedBox(width: 110.0),
                                      _otpTextField(0),
                                      SizedBox(width: 5.0),
                                      _otpTextField(0),
                                      SizedBox(width: 5.0),
                                      _otpTextField(0),
                                      SizedBox(width: 5.0),
                                      _otpTextField(0),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              const Align(
                                alignment: Alignment.center,
                                child: Text("Resend verification code", style: TextStyle(color: Colors.brown, fontSize: 16.0)),
                              ),
                              SizedBox(height: 50.0),
                              Container(
                                margin: EdgeInsets.all(10),
                                height: 50.0,
                                width: MediaQuery.of(context).size.width,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
                                  onPressed: () {},
                                  padding: const EdgeInsets.all(10.0),
                                  color: Color.fromRGBO(0, 160, 227, 1),
                                  textColor: Colors.white,
                                  child: const Text("Verify Number",
                                      style: TextStyle(fontSize: 15)),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                margin: EdgeInsets.all(10),
                                height: 50.0,
                                width: MediaQuery.of(context).size.width,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
                                  onPressed: () {},
                                  padding: const EdgeInsets.all(10.0),
                                  textColor: Colors.blue,
                                  child: const Text("Change Detail",
                                      style: TextStyle(fontSize: 15)),
                                ),
                              ),
                            ],
                        ),
                    ),
                )
            ],
        ),
    );
  }

  // Returns "Otp custom text field"
  Widget _otpTextField(int digit) {
    return Container(
      width: 35.0,
      height: 45.0,
      alignment: Alignment.center,
      child: Text(
        digit != null ? digit.toString() : "",
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.black,
        ),
      ),
      decoration: BoxDecoration(
//            color: Colors.grey.withOpacity(0.4),
          border: Border(
              bottom: BorderSide(
                width: 2.0,
                color: Colors.black,
              ))),
    );
  }
}
