import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class CampaignScreen extends StatefulWidget {
  const CampaignScreen({Key key}) : super(key: key);

  @override
  _CampaignScreenState createState() => _CampaignScreenState();
}

class _CampaignScreenState extends State<CampaignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Campaign", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
        elevation: 5.0,
        leading: Icon(Icons.arrow_back_sharp, color: Colors.blue),
        actions: [
          Icon(Icons.more_vert, color: Colors.blue),
        ],
      ),
      body: ListView(
          children: [
              Column(
                  children: [
                      SfRadialGauge(
                         enableLoadingAnimation: true,
                         animationDuration: 4500,
                         axes: <RadialAxis>[
                             RadialAxis(
                                 minimum: 0,
                                 maximum: 80,
                                 pointers: const <GaugePointer>[
                                    NeedlePointer(
                                        value: 40,
                                        enableAnimation: true,
                                    )
                                 ],
                                 ranges: <GaugeRange>[
                                    GaugeRange(startValue: 0, endValue: 30, color: Colors.green),
                                    GaugeRange(startValue: 30, endValue: 70, color: Colors.orange),
                                    GaugeRange(startValue: 70, endValue: 80, color: Colors.red)
                                 ],
                             )
                         ],
                      ),
                      SizedBox(height: 5.0),
                      Container(
                         height: 50,
                         width: MediaQuery.of(context).size.width,
                         color: Colors.yellow.shade100,
                         child: Align(
                             alignment: Alignment.center,
                             child: Text("FOR PRIZE DETAIL CLICK BELOW AREA", style: TextStyle(color: Colors.orange, fontSize: 21.0))),
                      ),

                  ],
              )
          ],
      ),
    );
  }
}
