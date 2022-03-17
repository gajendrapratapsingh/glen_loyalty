import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key key}) : super(key: key);

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {

  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Help", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
        elevation: 5.0,
        leading: Icon(Icons.menu, color: Colors.blue),
         actions: [
          Icon(Icons.more_vert, color: Colors.blue),
        ],
      ),
      body: ListView(
         children: [
             Column(
                children: [
                     Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 30.0, right: 10.0),
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                               border: Border.all(
                                 color: Colors.blue,
                                 width: 1,
                               ),
                            ),
                            child: Padding(
                                padding: EdgeInsets.only(left:5.0,top: 0.0, right: 5.0),
                                child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const[
                                         Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("FAQ's", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 16.0),),
                                         ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Icon(Icons.arrow_forward_ios, size: 20.0, color: Colors.blue,)
                                        ),
                                      ],
                                )
                            ),
                          ),
                        ),
                     ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                            width: 1,
                          ),
                        ),
                        child: Padding(
                            padding: EdgeInsets.only(left:5.0,top: 0.0, right: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("User Manual", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 16.0),),
                                ),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(Icons.arrow_forward_ios, size: 20.0, color: Colors.blue,)
                                ),
                              ],
                            )
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                            width: 1,
                          ),
                        ),
                        child: Padding(
                            padding: EdgeInsets.only(left:5.0,top: 0.0, right: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Term & Condition", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 16.0),),
                                ),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(Icons.arrow_forward_ios, size: 20.0, color: Colors.blue,)
                                ),
                              ],
                            )
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                            width: 1,
                          ),
                        ),
                        child: Padding(
                            padding: EdgeInsets.only(left:5.0,top: 0.0, right: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Contact Us", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 16.0),),
                                ),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(Icons.arrow_forward_ios, size: 20.0, color: Colors.blue,)
                                ),
                              ],
                            )
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                            width: 1,
                          ),
                        ),
                        child: Padding(
                            padding: EdgeInsets.only(left:5.0,top: 0.0, right: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Queries", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 16.0),),
                                ),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(Icons.arrow_forward_ios, size: 20.0, color: Colors.blue,)
                                ),
                              ],
                            )
                        ),
                      ),
                    ),
                  )
                ],
             )
         ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              title: Text('Wallet'),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment_outlined),
            title: Text('My Biz'),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            title: Text('Help'),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            title: Text('More'),
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        iconSize: 24,
        onTap: _onItemTapped,
      ),
    );
  }
}
