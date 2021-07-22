import 'package:aih_charts_demo/custom_horizontal_bar/custom_horizontal_bar.dart';
import 'package:aih_charts_demo/custom_horizontal_bar/full_screen_linear_chart.dart';
import 'package:aih_charts_demo/custom_vertical_bar/custom_vertical_bar.dart';
import 'package:aih_charts_demo/custom_vertical_bar/full_screen_vertical_chart.dart';
import 'package:aih_charts_demo/view_models/sale_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'custom_linear_chart/custom_linear_chart.dart';
import 'custom_linear_chart/full_screen_linear_chart.dart';
import 'model/sale.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("AIH Charts Demo"),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Mənfəət/zərər xülasəsi  min ₼',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        InkWell(
                          child: Icon(
                            Icons.fullscreen,
                            size: 32,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        ChangeNotifierProvider<SalesViewModel>(
                                            create: (context) =>
                                                SalesViewModel(),
                                            child: FullScreenLinearChart())));
                          },
                        ),
                        // SizedBox(width: 4,)
                      ],
                    ),
                    margin: EdgeInsets.only(left: 16, right: 16),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(left: 16),
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            Container(
                              color: sale[index].color,
                              height: 12,
                              width: 12,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              sale[index].text ?? "",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              width: 16,
                            )
                          ],
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: sale.length,
                    ),
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    child: CustomLinearChart(),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Gəlirlər min ₼',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        InkWell(
                          child: Icon(
                            Icons.fullscreen,
                            size: 32,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        ChangeNotifierProvider<SalesViewModel>(
                                            create: (context) =>
                                                SalesViewModel(),
                                            child:
                                                FullScreenHorizontalChart())));
                          },
                        ),
                        // SizedBox(width: 4,)
                      ],
                    ),
                    margin: EdgeInsets.only(left: 16, right: 16),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(left: 16),
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            Container(
                              color: sale2[index].color,
                              height: 12,
                              width: 12,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              sale2[index].text ?? "",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              width: 16,
                            )
                          ],
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: sale2.length,
                    ),
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    child: CustomHorizontalBar(),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Kapital strukturunun təkamülü  min ₼',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        InkWell(
                          child: Icon(
                            Icons.fullscreen,
                            size: 32,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        ChangeNotifierProvider<SalesViewModel>(
                                            create: (context) =>
                                                SalesViewModel(),
                                            child: FullScreenVerticalChart())));
                          },
                        ),
                        // SizedBox(width: 4,)
                      ],
                    ),
                    margin: EdgeInsets.only(left: 16, right: 16),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(left: 16),
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            Container(
                              color: sale3[index].color,
                              height: 12,
                              width: 12,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              sale3[index].text ?? "",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              width: 16,
                            )
                          ],
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: sale3.length,
                    ),
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    child: CustomVerticalBar(),
                  ),
                ],
              ),
            )));
  }

  final sale = [
    new Sale(color: Color(0xFF0f73b9), text: 'Ümumi mənfəət'),
    new Sale(color: Color(0xFF57a9e3), text: 'EBİTDA'),
    new Sale(color: Color(0xFF06d1e2), text: "EBİT"),
    new Sale(color: Color(0xFF068190), text: "Xalis mənfəət"),
    new Sale(color: Color(0xFFd7747f), text: "Cəmi məcmu gəlir"),
  ];
  final sale2 = [
    new Sale(color: Color(0xFF0f73b9), text: 'Ofşor dəstək xidmətləri'),
    new Sale(color: Color(0xFF57a9e3), text: 'Yük sərnişin daşımaları'),
    new Sale(color: Color(0xFF06d1e2), text: "İcarə gəliri"),
    new Sale(color: Color(0xFF068190), text: "Logistika xidmətləri"),
    new Sale(color: Color(0xFFd7747f), text: "Sair gəlir"),
  ];
  final sale3 = [
    new Sale(color: Color(0xFFd7747f), text: "Ümumi borc"),
    new Sale(color: Color(0xFF57a9e3), text: 'Kapital'),
    new Sale(color: Color(0xFF068190), text: "Borc + Kapital"),
  ];
}
