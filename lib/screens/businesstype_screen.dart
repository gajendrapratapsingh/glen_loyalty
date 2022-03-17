import 'package:flutter/material.dart';

class Businesstype extends StatefulWidget {
  const Businesstype({Key key}) : super(key: key);

  @override
  _BusinesstypeState createState() => _BusinesstypeState();
}

class _BusinesstypeState extends State<Businesstype> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView (
                children: [
                  SizedBox(height: 40.0),
                  Container(
                    height: 24.0,
                    width: 24.0,
                    child: Image.asset("assets/icons/faq.jpeg"),
                  ),
                  SizedBox(height: 10.0),
                  const Align(
                    alignment: Alignment.center,
                    child: Text("Select your business type",
                        style: TextStyle(color: Colors.blue, fontSize: 24.0, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                       height: MediaQuery.of(context).size.height * 0.7,
                       width: MediaQuery.of(context).size.width,
                       child: GridView.count(
                         crossAxisCount: 2,
                         children: <Widget>[
                           singleCard(57744, "Wholesaler"),
                           singleCard(57744, "Retailer"),
                           singleCard(57744, "Chain of Store"),
                           singleCard(57744, "Other")
                         ],
                       ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 50.0,
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                              side: const BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
                          onPressed: () {},
                          padding: const EdgeInsets.all(10.0),
                          color: const Color.fromRGBO(0, 160, 227, 1),
                          textColor: Colors.white,
                          child: const Text("Submit",
                              style: TextStyle(fontSize: 15)),
                        ),
                      ),
                  )

                ],
              ),
            )
        ),
    );
  }

  singleCard(iconCode, iconTitle){
     return Card(
         elevation: 4.0,
         child: InkWell(
             child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                     Icon(
                        IconData(iconCode, fontFamily: 'MaterialIcons'),
                        color: Colors.black,
                        size: 85.0,
                     ),
                     SizedBox(height: 20.0),
                     Text(
                        iconTitle,
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                     )
                 ],
             ),
         ),
     );
  }
}
