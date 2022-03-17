import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key key}) : super(key: key);

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: const Icon(Icons.menu, color: Colors.blue),
        title: const Text("Wallet", style: TextStyle(color: Colors.blue)),
        actions: const [
          Icon(Icons.more_vert, color: Colors.blue),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox (
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                child:  Stack(
                    fit: StackFit.expand,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.3,
                        color: Colors.blue,
                      ),
                      const Positioned(
                        top: 20.0,
                        left: 50.0,
                        right: 50.0,
                        child: Text("Actual",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold)),
                      ),
                      const Positioned(
                        top: 55.0,
                        left: 50.0,
                        right: 50.0,
                        child: Text("\u20B9 16000",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold)),
                      ),
                      const Positioned(
                        top: 85.0,
                        left: 50.0,
                        right: 50.0,
                        child: Text("Wallet Balance",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold)),
                      ),
                      Positioned(
                          top: 115.0,
                          left: 50.0,
                          right: 50.0,
                          child: Container(
                              height: 40,
                              child: VerticalDivider(
                                  thickness: 1,
                                  color: Colors.white
                              )
                          )
                      ),
                      const Positioned(
                          top: 147.0,
                          left: 110.0,
                          right: 110.0,
                          child: Divider(
                              thickness: 1,
                              color: Colors.white
                          )
                      ),
                      Positioned(
                          top: 155.0,
                          left: 103.0,
                          child: Container(
                              height: 40,
                              child: VerticalDivider(
                                  thickness: 1,
                                  color: Colors.white
                              )
                          )
                      ),
                      Positioned(
                          top: 155.0,
                          right: 103.0,
                          child: Container(
                              height: 40,
                              child: VerticalDivider(
                                  thickness: 1,
                                  color: Colors.white
                              )
                          )
                      ),
                      Positioned(
                          top: 185.0,
                          left: 10.0,
                          child: Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Container(
                              height: 140,
                              width: 180,
                            ),
                          )
                      ),
                      Positioned(
                          top: 185.0,
                          right: 10.0,
                          child: Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Container(
                              height: 140,
                              width: 180,
                            ),
                          )
                      ),
                    ],
                  ),
              ),
              SizedBox(height: 100.0),
              Stack(
                children: <Widget>[
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.11,
                    color: Colors.blue,
                  ),
                  const Positioned(
                      top: 10.0,
                      left: 10.0,
                      child: Text("Pay Now & Get Additional", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0))
                  ),
                  const Positioned(
                      bottom: 10.0,
                      left: 10.0,
                      child: Text("\u20B9 16000", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0))
                  ),
                  Positioned(
                      bottom: 10.0,
                      right: 10.0,
                      child: Container(
                        height: 40.0,
                        width: 120.0,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side: BorderSide(color: Colors.white)),
                          onPressed: () {},
                          color: Colors.white,
                          textColor: Colors.blue,
                          child: const Text("Pay Now", textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 15)),
                        ),
                      ),
                  ),
              ],
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.11,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.orange,
                  child: Stack(
                    children: const [
                      Positioned(
                          top: 10.0,
                          left: 10.0,
                          child: Text("Shadow Balance",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold))),
                      Positioned(
                          top: 10.0,
                          right: 10.0,
                          child: Text("\u20B9 4000",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold))),
                      Positioned(
                          bottom: 10.0,
                          right: 10.0,
                          child: Text("(How to convert this to actual)",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.0
                              )
                          )
                      ),
                    ],
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
