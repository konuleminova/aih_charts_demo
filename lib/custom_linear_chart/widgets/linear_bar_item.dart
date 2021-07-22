import 'package:aih_charts_demo/model/sale.dart';
import 'package:aih_charts_demo/view_models/sale_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LinearBarItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LinearBarItem();
  }
}

class _LinearBarItem extends State<LinearBarItem> {
  List<Sales> sale;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<SalesViewModel>(builder: (context, viewModel, child) {
      sale = viewModel.saleLinear;
      return Container(
          child: ListView.builder(
        itemBuilder: (BuildContext context, int indexTop) {
          return Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                sale[indexTop].sales[index].showLabel
                                    ? Container(
                                        width: 18,
                                        color: sale[indexTop]
                                                .sales[index]
                                                .showToolTip
                                            ? Colors.yellow
                                            : Colors.white,
                                        padding: EdgeInsets.only(bottom: 4),
                                        child: Text(
                                          sale[indexTop]
                                              .sales[index]
                                              .height
                                              .toString(),
                                          style: TextStyle(fontSize: 8),
                                        ))
                                    : SizedBox(),
                                sale[indexTop].sales[index].showToolTip
                                    ? Container(
                                        color: Colors.red,
                                        width: 18,
                                        height: sale[indexTop]
                                            .sales[index]
                                            .height
                                            .toDouble(),
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.only(bottom: 4),
                                        child:RotatedBox(
                                            quarterTurns: 5,
                                            child: Text(
                                          sale[indexTop]
                                              .sales[index].text??'',
                                          style: TextStyle(
                                              fontSize: 8, color: Colors.white),
                                        )))
                                    : Container(
                                        alignment: Alignment.bottomCenter,
                                        color: sale[indexTop]
                                            .sales[index]
                                            .color
                                            .withOpacity(0.7),
                                        height: sale[indexTop]
                                            .sales[index]
                                            .height
                                            .toDouble(),
                                        width: 18,
                                      )
                              ],
                            ),
                          ],
                        ),
                        onTap: () {
                          sale[indexTop].sales[index].showToolTip =
                              !sale[indexTop].sales[index].showToolTip;
                          if (sale[indexTop].sales[index].showToolTip) {
                            sale[indexTop].sales[index].showLabel = true;
                          }
                          viewModel.notifyListeners();
                        },
                      );
                    },
                    shrinkWrap: true,
                    itemCount: sale[indexTop].sales.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 6),
                  child: Text('${sale[indexTop].sales[0].time}'),
                )
              ],
            ),
            margin: EdgeInsets.only(left: 16),
          );
        },
        shrinkWrap: true,
        itemCount: sale.length,
        scrollDirection: Axis.horizontal,
      ));
    });
  }
}
