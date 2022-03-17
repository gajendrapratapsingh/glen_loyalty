import 'package:flutter/material.dart';

class BasicRewardScreen extends StatefulWidget {
  const BasicRewardScreen({Key key}) : super(key: key);

  @override
  _BasicRewardScreenState createState() => _BasicRewardScreenState();
}

class _BasicRewardScreenState extends State<BasicRewardScreen> {

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
        title: Text("Bonus Rewarding", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
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
              SizedBox (
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                child:  Stack(
                  fit: StackFit.expand,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.2,
                      color: Colors.blue,
                    ),
                    const Positioned(
                      top: 15.0,
                      left: 50.0,
                      right: 50.0,
                      child: Text("\u20B9 1000",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold)),
                    ),
                    const Positioned(
                      top: 50.0,
                      left: 50.0,
                      right: 50.0,
                      child: Text("Bonus Rewarding",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold)),
                    ),
                    const Positioned(
                      top: 80.0,
                      left: 50.0,
                      right: 50.0,
                      child: Text("for timely payment",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0)),
                    ),
                    const Positioned(
                      top: 110.0,
                      left: 50.0,
                      right: 50.0,
                      child: Text("(You can earn money?)",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                child: Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Container(
                    height: 84,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                        padding: EdgeInsets.only(left:5.0,top: 5.0, right: 5.0),
                        child: Column(
                          children: [
                            Row(
                              children: const[
                                Text("Date: 22/12/2022", style: TextStyle(color: Colors.grey, fontSize: 16.0)),
                                SizedBox(width: 80.0),
                                Text("Date: 22/12/2022", style: TextStyle(color: Colors.grey, fontSize: 16.0)),
                              ],
                            ),
                            SizedBox(height: 3.0),
                            Row(
                              children: const[
                                Text("Date: 22/12/2022", style: TextStyle(color: Colors.grey, fontSize: 16.0)),
                                SizedBox(width: 80.0),
                                Text("Date: 22/12/2022", style: TextStyle(color: Colors.grey, fontSize: 16.0)),
                              ],
                            ),
                            SizedBox(height: 3.0),
                            Row(
                              children: const[
                                Text("Date: 22/12/2022", style: TextStyle(color: Colors.grey, fontSize: 16.0)),
                                SizedBox(width: 80.0),
                                Text("Date: 22/12/2022", style: TextStyle(color: Colors.grey, fontSize: 16.0)),
                              ],
                            ),
                            SizedBox(height: 0.0),
                            Divider(
                              thickness: 2,
                              color: Colors.blue,
                            )
                          ],
                        )
                    ),
                  ),
                ),
              ),
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
