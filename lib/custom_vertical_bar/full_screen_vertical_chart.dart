import 'package:aih_charts_demo/custom_linear_chart/custom_linear_chart.dart';
import 'package:aih_charts_demo/utils/date_dialog.dart';
import 'package:aih_charts_demo/model/sale.dart';
import 'package:aih_charts_demo/view_models/sale_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'custom_vertical_bar.dart';

class FullScreenVerticalChart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FullScreenLinearChart();
  }
}

class _FullScreenLinearChart extends State<FullScreenVerticalChart> {
  var choosenDate = 2015;
  SalesViewModel salesProvider;

  @override
  Widget build(BuildContext context) {
    salesProvider = Provider.of<SalesViewModel>(context, listen: false);
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Vertical Chart"),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Icon(
                    Icons.filter_list,
                    color: Colors.blue,
                    size: 44,
                  ),
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 16),
                ),
                onTap: () {
                  showPicker(context);
                },
              ),
              Container(
                child: Text(
                  'Kapital strukturunun təkamülü  min ₼',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                margin: EdgeInsets.only(left: 16),
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
              SizedBox(
                height: 180,
              )
            ],
          )),
        ));
  }

  final sale3 = [
    new Sale(color: Color(0xFFd7747f), text: "Ümumi borc"),
    new Sale(color: Color(0xFF57a9e3), text: 'Kapital'),
    new Sale(color: Color(0xFF068190), text: "Borc + Kapital"),
  ];

  void showPicker(BuildContext ctx) {
    showCupertinoModalPopup(
        context: ctx,
        builder: (_) => Container(
              height: 500,
              color: Color.fromARGB(255, 255, 255, 255),
              child: SingleChildScrollView(child:Column(
                children: [
                  Container(
                    height: 300,
                    child: CupertinoPicker(
                      itemExtent: 50,
                      scrollController:
                      FixedExtentScrollController(initialItem: salesProvider.index),
                      onSelectedItemChanged: (int index) {
                        setState(() {
                          print(index);
                          choosenDate = listYears[index];
                          salesProvider.setIndex(index);
                          print('CJOOSE DATE ${choosenDate}');
                        });
                      },
                      children: [
//                        Center(child: Text("2011")),
//                        Center(child: Text("2012")),
//                        Center(child: Text("2013")),
//                        Center(child: Text("2014")),
                        Center(child: Text("2015")),
                        Center(child: Text("2016")),
                        Center(child: Text("2017")),
                        Center(child: Text("2018")),
                        Center(child: Text("2019")),
                        Center(child: Text("2020")),
                        // Center(child: Text("2021")),
                      ],
                    ),
                  ),
                  // Close the modal
                  CupertinoButton(
                      child: Text('OK'),
                      onPressed: () {
                        List<Sales> salesList = [];
                        for (int i = 0;
                            i < salesProvider.initialSaleVertical.length;
                            i++) {
                          if (salesProvider.initialSaleVertical[i].sales[0].time
                                  .toString() ==
                              choosenDate.toString()) {
                            print('TURE ${salesList}');
                            salesList.add(salesProvider.initialSaleVertical[i]);
                          }
                        }
                        salesProvider.setSaleVertical(salesList);
                        Navigator.of(ctx).pop();
                      })
                ],
              )),
            ));
  }

  final listYears = [
//    2011,
//    2012,
//    2013,
//    2014,
    2015,
    2016,
    2017,
    2018,
    2019,
    2020,
    //2021
  ];
}
