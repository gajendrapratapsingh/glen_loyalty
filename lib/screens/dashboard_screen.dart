import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glen_loyalty/constants.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          width: 40,
          child: Image.asset("assets/images/glen_logo.png"),
        ),
        actions: [
          Container(
            width: 30,
            child: Image.asset(
              'assets/images/glen_logo.png',
            ),
          ),
          Icon(Icons.more_vert, color: Colors.black),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 150.0,
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    onPageChanged: (index, reason){
                        setState(() {
                            _current = index;
                        });
                    }
                  ),
                  items: imgList
                      .map((item) => Container(
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      child: ClipRRect(
                          borderRadius:
                          BorderRadius.all(Radius.circular(5.0)),
                          child: Stack(
                            children: <Widget>[
                              Image.network(item,
                                  fit: BoxFit.cover, width: 1000.0),
                              Positioned(
                                bottom: 0.0,
                                left: 0.0,
                                right: 0.0,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(200, 0, 0, 0),
                                        Color.fromARGB(0, 0, 0, 0)
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 20.0),
                                  child: Text(
                                    'No. ${imgList.indexOf(item)} image',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ))
                      .toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 6.0,
                        height: 6.0,
                        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                                .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.0),
          Padding (
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network("https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80", fit: BoxFit.cover),
                ),
                Positioned(
                    top: 10.0,
                    left: 10.0,
                    child: Container(
                       height: 24.0,
                       width: 24.0,
                       child: Image.asset("assets/images/glen_logo.png"),
                    )
                ),
                Positioned(
                    top: 10.0,
                    right: 10.0,
                    child: Container(
                      height: 24.0,
                      width: 24.0,
                      child: Image.asset("assets/images/glen_logo.png"),
                    )
                ),
                Positioned(
                    bottom: 10.0,
                    left: 10.0,
                    right: 10.0,
                    child: Container(
                      height: 85.0,
                      width: MediaQuery.of(context).size.width,
                      color: cardColor,
                      child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: const [
                            Text("CIAZ DELTA", style: TextStyle(color: Colors.white, fontSize: 21.0, fontWeight: FontWeight.bold)),
                            Text("(ex showroom)", style: TextStyle(color: Colors.white, fontSize: 12.0)),
                            Text("(EQUIVALENT TO 9 LACS)", style: TextStyle(color: Colors.white, fontSize: 16.0)),
                            Text("ON 1CRORE & ABOVE", style: TextStyle(color: Colors.white, fontSize: 18.0))
                         ],
                      ),
                    )
                )
              ],
            ),
          ),
          SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.55,
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                shrinkWrap: true,
                children: List.generate(6, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 120.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/glen_logo.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(0.0)),
                          ),
                        ),
                        Positioned(
                            bottom: 0.0,
                            child: Container(
                               height: 25.0,
                               width: 100.0,
                               color: borderColor,
                               child: const Align(
                                   alignment: Alignment.center,
                                   child: Text(
                                      "Hello",
                                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                                   )
                               ),
                            )
                        )
                      ],
                    ),
                  );
                },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  singleCard(iconCode, iconTitle){
    return Stack(
      children: [
         Container(
            height: 75.0,
            width: 75.0,
            child: Image.asset("assets/images/glen_logo.png"),
         ),
         Positioned(
             bottom: 0.0,
             child: Container(
                height: 35.0,
                width: 75.0,
                color: borderColor,
                child: Align(
                    alignment: Alignment.center,
                    child: Text("Hello", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)
                    )
                ),
             )
         )
      ],
    );
  }

}
