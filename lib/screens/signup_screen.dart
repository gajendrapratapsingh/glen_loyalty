import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                  children: [
                    const SizedBox(height: 40.0),
                    Container(
                      height: 32.0,
                      width: 32.0,
                      child: Image.asset("assets/icons/faq.jpeg"),
                    ),
                    SizedBox(height: 10.0),
                    Align(
                        alignment: Alignment.center,
                        child: Text("Sign Up", style: TextStyle(color: Colors.blue, fontSize: 24.0)
                        )
                    ),
                    const SizedBox(height: 10.0),
                    Align(
                        alignment: Alignment.center,
                        child: Text("Add your more detail to your profile on Tejoo", style: TextStyle(color: Colors.black, fontSize: 14.0), overflow: TextOverflow.ellipsis)),
                    const SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.only(right:10.0),
                      child: Container(
                          height: 45.0,
                          margin: const EdgeInsets.all(0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsets.only(top:20.0),
                                  child: Icon(
                                    Icons.phone_android,
                                    color: Colors.grey,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: DropdownButtonFormField(value: "+91", items: ['+91','+92'].map((e) => DropdownMenuItem(child: Text(
                                      e.toString()
                                  ),value: e,)).toList())
                              ),
                              Expanded(
                                  flex: 4,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        hintText: "Wholesaler mobile no."
                                    ),
                                  )
                              ),

                            ],
                          )
                      ),
                    ),
                    SizedBox(height: 10.0),
                    CustomTextField("Wholesaler shop name"),
                    SizedBox(height: 10.0),
                    CustomTextField("Wholesaler name"),
                    SizedBox(height: 10.0),
                    CustomTextField("Date of Birth"),
                    SizedBox(height: 10.0),
                    CustomTextField("Business Address"),
                    SizedBox(height: 10.0),
                    CustomTextField("Business State"),
                    SizedBox(height: 10.0),
                    CustomTextField("Business City"),
                    SizedBox(height: 10.0),
                    CustomTextField("Business Pincode"),
                    SizedBox(height: 10.0),
                    CustomTextField("Reference 1"),
                    SizedBox(height: 10.0),
                    CustomTextField("Reference mobile no."),
                    SizedBox(height: 10.0),
                    CustomTextField("Reference 2"),
                    SizedBox(height: 10.0),
                    CustomTextField("GST No."),
                    SizedBox(height: 10.0),
                    CustomTextField("Email ID"),
                    SizedBox(height: 20.0),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 50.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
                        onPressed: () {},
                        padding: const EdgeInsets.all(10.0),
                        color: Color.fromRGBO(0, 160, 227, 1),
                        textColor: Colors.white,
                        child: const Text("Submit",
                            style: TextStyle(fontSize: 15)),
                      ),
                    ),
                  ],
              )
          ),
        ));
  }

  Widget CustomTextField(String fieldhint) {
    return Padding(
      padding: const EdgeInsets.only(right:10.0),
      child: Container(
          height: 45.0,
          margin: const EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 5.0, top:15.0),
                  child: Icon(
                    Icons.phone_android,
                    color: Colors.grey,
                    size: 24.0,
                  ),
                ),
              ),
              Expanded(
                  flex: 6,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: fieldhint
                    ),
                  )),

            ],
          )
      ),
    );
  }
}
