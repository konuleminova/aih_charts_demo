import 'package:aih_charts_demo/custom_linear_chart/custom_linear_chart.dart';
import 'package:aih_charts_demo/utils/date_dialog.dart';
import 'package:aih_charts_demo/model/sale.dart';
import 'package:aih_charts_demo/view_models/sale_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'custom_horizontal_bar.dart';

class FullScreenHorizontalChart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FullScreenLinearChart();
  }
}

class _FullScreenLinearChart extends State<FullScreenHorizontalChart> {
  var choosenDate = 2015;
  SalesViewModel salesProvider;

  @override
  Widget build(BuildContext context) {
    salesProvider = Provider.of<SalesViewModel>(context, listen: false);
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Horizontal Chart"),
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
                  'Gəlirlər min ₼',
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
                height: 180,
              )
            ],
          )),
        ));
  }

  final sale2 = [
    new Sale(color: Color(0xFF0f73b9), text: 'Ofşor dəstək xidmətləri'),
    new Sale(color: Color(0xFF57a9e3), text: 'Yük sərnişin daşımaları'),
    new Sale(color: Color(0xFF06d1e2), text: "İcarə gəliri"),
    new Sale(color: Color(0xFF068190), text: "Logistika xidmətləri"),
    new Sale(color: Color(0xFFd7747f), text: "Sair gəlir"),
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
                      scrollController: FixedExtentScrollController(
                          initialItem: salesProvider.index),
                      onSelectedItemChanged: (int index) {
                        setState(() {
                          print(index);
                          choosenDate = listYears[index];
                          salesProvider.setIndex(index);
                          print('CJOOSE DATE ${choosenDate}');
                        });
                      },
                      children: [
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
                            i < salesProvider.initialSaleHorizontal.length;
                            i++) {
                          if (salesProvider
                                  .initialSaleHorizontal[i].sales[0].time
                                  .toString() ==
                              choosenDate.toString()) {
                            print('TURE ${salesList}');
                            salesList
                                .add(salesProvider.initialSaleHorizontal[i]);
                          } else {
                            salesList.add(Sales(sales: []));
                          }
                        }
                        salesProvider.setSaleHorizontal(salesList);
                        Navigator.of(ctx).pop();
                      })
                ],
              )),
            ));
  }

  final listYears = [
    2015,
    2016,
    2017,
    2018,
    2019,
    2020,
    //2021
  ];
}
