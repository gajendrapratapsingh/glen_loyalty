import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key key}) : super(key: key);

  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {

  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.white,
         body: Container(
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
           child: ListView(
               children: [
                 const SizedBox(height: 40.0),
                 Container(
                   height: 65.0,
                   width: 65.0,
                   child: Image.asset("assets/images/glen_logo.png"),
                 ),
                 const SizedBox(height: 40.0),
                 Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        height: 45.0,
                        margin: const EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.only(left: 5.0, top:0.0),
                                child: Icon(
                                  Icons.edit_road,
                                  color: Colors.blue,
                                  size: 28.0,
                                ),
                              ),
                            ),
                            Expanded(
                                flex: 6,
                                child: Text(
                                   "Enter your detail",
                                   style: TextStyle(color: Colors.blue, fontSize: 21.0),
                                )
                            ),
                          ],
                        )
                    ),
                 ),
                 Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Container(
                          height: 45.0,
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.all(0),
                          child: DropdownButtonFormField(
                              hint: Text("Country"),
                              value: "India", items: ['India','Pakistan'].map((e) => DropdownMenuItem(child: Text(
                              e.toString()
                          ),value: e,)).toList())
                        ),
                    ),
                 ),
                 SizedBox(height: 30.0),
                 Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left:10.0, right: 10.0),
                      child: Container(
                          height: 45.0,
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.all(0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                 ),
                 SizedBox(height: 30.0),
                 Align(
                   alignment: Alignment.topLeft,
                   child: Padding(
                     padding: const EdgeInsets.only(left:10.0, right: 10.0),
                     child: Container(
                         height: 45.0,
                         width: MediaQuery.of(context).size.width,
                         margin: const EdgeInsets.all(0),
                         child: TextFormField(
                                   decoration: const InputDecoration(
                                       hintText: "Enter your email ID"
                                   ),)
                     ),
                   ),
                 ),
                 const SizedBox(height: 30.0),
                 Container(
                    height: 45.0,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Radio(
                           value: "New Customer",
                           groupValue: "_site",
                           onChanged: (String value) {
                             setState(() {

                             });
                           },
                           ),
                           SizedBox(width: 5.0),
                           Text("Existing Customer"),
                           SizedBox(width: 10.0),
                           Radio(
                           value: "New Customer",
                           groupValue: "_site",
                           onChanged: (String value) {
                             setState(() {

                             });
                           },
                         ),
                         SizedBox(width: 5.0),
                         Text("New Customer")
                       ],
                    ),
                 ),
                 Container(
                   margin: EdgeInsets.all(10),
                   height: 50.0,
                   child: RaisedButton(
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(25.0),
                         side: BorderSide(color: Colors.blue)),
                     onPressed: () {},
                     padding: const EdgeInsets.all(10.0),
                     color: Colors.blue,
                     textColor: Colors.white,
                     child: const Text("Submit",
                         style: TextStyle(fontSize: 18)),
                   ),
                 ),
                 SizedBox(height: 20.0),
                 Container(

                 )
               ],
           ),
         ),
    );
  }
}
