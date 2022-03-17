import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

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
        title: Text(""),
        elevation: 0.0,
        leading: Icon(Icons.menu, color: Colors.blue),
        actions: [
          Icon(Icons.more_vert, color: Colors.blue),
        ],
      ),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Row(
                  children: [
                    Container(
                       width: MediaQuery.of(context).size.width * 0.26,
                       child: Padding(
                         padding: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0),
                         child: Column(
                           children: const[
                             Text("Net Sale",
                                 style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 14.0,
                                     fontWeight: FontWeight.bold)),
                             Text("\u20B9 600",
                                 style: TextStyle(
                                     color: Colors.white, fontSize: 14.0)),
                           ],
                         ),
                       ),
                    ),
                    SizedBox(width: 15.0),
                    Container(
                      height: 45.0,
                      child: const VerticalDivider(
                        width: 2.0,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.32,
                      child: Padding(
                        padding: EdgeInsets.only(left: 0.0, top: 20.0, right: 0.0),
                        child: Column(
                          children: const[
                            Text("GR %",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold)),
                            Text("4%",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14.0)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Container(
                      height: 45.0,
                      child: const VerticalDivider(
                        width: 2.0,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
                        child: Column(
                          children: const[
                            Text("Payment Days",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold)),
                            Text("60",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14.0)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                     padding: EdgeInsets.all(4.0),
                     child: Table(
                       border: TableBorder.all(
                           color: Colors.blue, style: BorderStyle.solid, width: 1),
                       children: [
                         //First Row
                         TableRow(
                             children: [
                               Column(children: [
                                 Container(
                                   height: MediaQuery.of(context).size.height * 0.17,
                                   color: Colors.white,
                                   child: Padding(
                                     padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
                                     child: Column(
                                       children: [
                                         Icon(Icons.person,
                                             size: 32.0, color: Colors.black),
                                         SizedBox(height: 5.0),
                                         Text(
                                           "Profile",
                                           textAlign: TextAlign.center,
                                         )
                                       ],
                                     ),
                                   ),
                                 )
                                ]
                               ),
                               Column(children: [
                                 Container(
                                   height: MediaQuery.of(context).size.height * 0.17,
                                   color: Colors.white,
                                   child: Padding(
                                     padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
                                     child: Column(
                                       children: [
                                         Icon(Icons.library_books_rounded,
                                             size: 32.0, color: Colors.black),
                                         SizedBox(height: 5.0),
                                         Text(
                                           "Order",
                                           textAlign: TextAlign.center,
                                         )
                                       ],
                                     ),
                                   ),
                                 )
                               ]
                               ),
                               Column(children: [
                                 Container(
                                   height: MediaQuery.of(context).size.height * 0.17,
                                   color: Colors.white,
                                   child: Padding(
                                     padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
                                     child: Column(
                                       children: [
                                         Icon(Icons.account_balance_wallet,
                                             size: 32.0, color: Colors.black),
                                         SizedBox(height: 5.0),
                                         Text(
                                           "Wallet",
                                           textAlign: TextAlign.center,
                                         )
                                       ],
                                     ),
                                   ),
                                 )
                               ]
                               ),
                             ]
                         ),
                         //Second Row
                         TableRow(
                             children: [
                               Column(children: [
                                 Container(
                                   height: MediaQuery.of(context).size.height * 0.17,
                                   color: Colors.white,
                                   child: Padding(
                                     padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
                                     child: Column(
                                       children: [
                                         Icon(Icons.workspaces_outline,
                                             size: 32.0, color: Colors.black),
                                         SizedBox(height: 5.0),
                                         Text(
                                           "Connection",
                                           textAlign: TextAlign.center,
                                         )
                                       ],
                                     ),
                                   ),
                                 )
                               ]
                               ),
                               Column(children: [
                                 Container(
                                   height: MediaQuery.of(context).size.height * 0.17,
                                   color: Colors.white,
                                   child: Padding(
                                     padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
                                     child: Column(
                                       children: [
                                         Icon(Icons.payment,
                                             size: 32.0, color: Colors.black),
                                         SizedBox(height: 5.0),
                                         Text(
                                           "Payment",
                                           textAlign: TextAlign.center,
                                         )
                                       ],
                                     ),
                                   ),
                                 )
                               ]
                               ),
                               Column(children: [
                                 Container(
                                   height: MediaQuery.of(context).size.height * 0.17,
                                   color: Colors.white,
                                   child: Padding(
                                     padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
                                     child: Column(
                                       children: [
                                         Icon(Icons.campaign,
                                             size: 32.0, color: Colors.black),
                                         SizedBox(height: 5.0),
                                         Text(
                                           "Campaign",
                                           textAlign: TextAlign.center,
                                         )
                                       ],
                                     ),
                                   ),
                                 )
                               ]
                               ),
                             ]
                         ),
                         //Third Row
                         TableRow(
                             children: [
                               Column(children: [
                                 Container(
                                   height: MediaQuery.of(context).size.height * 0.17,
                                   color: Colors.white,
                                   child: Padding(
                                     padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
                                     child: Column(
                                       children: [
                                         Icon(Icons.settings,
                                             size: 32.0, color: Colors.black),
                                         SizedBox(height: 5.0),
                                         Text(
                                           "Preferences",
                                           textAlign: TextAlign.center,
                                         )
                                       ],
                                     ),
                                   ),
                                 )
                               ]
                               ),
                               Column(children: [
                                 Container(
                                   height: MediaQuery.of(context).size.height * 0.17,
                                   color: Colors.white,
                                   child: Padding(
                                     padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
                                     child: Column(
                                       children: [
                                         Icon(Icons.assignment_return_outlined,
                                             size: 32.0, color: Colors.black),
                                         SizedBox(height: 5.0),
                                         Text(
                                           "Return",
                                           textAlign: TextAlign.center,
                                         )
                                       ],
                                     ),
                                   ),
                                 )
                               ]
                               ),
                               Column(children: [
                                 Container(
                                   height: MediaQuery.of(context).size.height * 0.17,
                                   color: Colors.white,
                                   child: Padding(
                                     padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
                                     child: Column(
                                       children: [
                                         Icon(Icons.star_border,
                                             size: 32.0, color: Colors.black),
                                         SizedBox(height: 5.0),
                                         Text(
                                           "Tier",
                                           textAlign: TextAlign.center,
                                         )
                                       ],
                                     ),
                                   ),
                                 )
                               ]
                               ),
                             ]
                         ),
                         //Fourth Row
                         TableRow(
                             children: [
                               Column(children: [
                                 Container(
                                   height: MediaQuery.of(context).size.height * 0.17,
                                   color: Colors.white,
                                   child: Padding(
                                     padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
                                     child: Column(
                                       children: [
                                         Icon(Icons.help,
                                             size: 32.0, color: Colors.black),
                                         SizedBox(height: 5.0),
                                         Text(
                                           "Help",
                                           textAlign: TextAlign.center,
                                         )
                                       ],
                                     ),
                                   ),
                                 )
                               ]
                               ),
                               Column(children: [
                                 Container(
                                   height: MediaQuery.of(context).size.height * 0.17,
                                   color: Colors.white,
                                   child: Padding(
                                     padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
                                     child: Column(
                                       children: [
                                         Icon(Icons.person,
                                             size: 32.0, color: Colors.black),
                                         SizedBox(height: 5.0),
                                         Text(
                                           "Ledger",
                                           textAlign: TextAlign.center,
                                         )
                                       ],
                                     ),
                                   ),
                                 )
                               ]
                               ),
                               Column(children: [
                                 Container(
                                   height: MediaQuery.of(context).size.height * 0.17,
                                   color: Colors.white,
                                   child: Padding(
                                     padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
                                     child: Column(
                                       children: [
                                         Icon(Icons.notifications,
                                             size: 32.0, color: Colors.black),
                                         SizedBox(height: 5.0),
                                         Text(
                                           "Notifications",
                                           textAlign: TextAlign.center,
                                         )
                                       ],
                                     ),
                                   ),
                                 )
                               ]
                               ),
                             ]
                         ),
                       ],
                     ),
                  )
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

  Widget getTable(IconData myicon, String title) {
    Column(children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.25,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              Icon(Icons.person,
                  size: 32.0, color: Colors.black),
              Text(
                "Profile",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      )
    ]
    );
  }
}
