import 'package:aih_charts_demo/model/sale.dart';
import 'package:aih_charts_demo/view_models/sale_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/custom_draw_painter.dart';

class VerticalBarItem extends StatelessWidget {
  List<Sales> sale;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<SalesViewModel>(builder: (context, viewModel, child) {
      sale = viewModel.saleVertical;
      return Container(
          child: ListView.builder(
        padding: EdgeInsets.all(0),
        itemBuilder: (BuildContext context, int indexTop) {
          return Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        sale[indexTop].sales[0].showLabel
                            ? Container(
                                width: 74,
                                color: sale[indexTop].sales[0].showToolTip
                                    ? Colors.yellow
                                    : Colors.white,
                                padding: EdgeInsets.only(bottom: 4),
                                alignment: Alignment.center,
                                child: Text(
                                  (sale[indexTop].sales[0].height +
                                          sale[indexTop].sales[1].height)
                                      .toString(),
                                  style: TextStyle(fontSize: 9),
                                ))
                            : SizedBox(),
                        Container(
                          width: 74,
                          child: ListView.builder(
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                  onTap: () {
                                    sale[indexTop].sales[index].showToolTip =
                                        !sale[indexTop]
                                            .sales[index]
                                            .showToolTip;
                                    if (sale[indexTop]
                                        .sales[index]
                                        .showToolTip) {
                                      sale[indexTop].sales[index].showLabel =
                                          true;
                                    }
                                    viewModel.notifyListeners();
                                  },
                                  child: sale[indexTop].sales[index].showToolTip
                                      ? Container(
                                          color: Colors.red,
                                          width: 18,
                                          height: (sale[indexTop]
                                                  .sales[index]
                                                  .height) /
                                              4.toDouble(),
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.only(bottom: 4),
                                          child: RotatedBox(
                                              quarterTurns: 5,
                                              child: Text(
                                                sale[indexTop]
                                                        .sales[index]
                                                        .text ??
                                                    '',
                                                style: TextStyle(
                                                    fontSize: 8,
                                                    color: Colors.white),
                                              )))
                                      : Container(
                                          alignment: Alignment.bottomCenter,
                                          color:
                                              sale[indexTop].sales[index].color,
                                          height: (sale[indexTop]
                                                  .sales[index]
                                                  .height) /
                                              4.toDouble(),
                                          width: 74,
                                        ));
                            },
                            shrinkWrap: true,
                            itemCount: sale[indexTop].sales.length,
                            scrollDirection: Axis.vertical,
                          ),
                        )
                      ]),
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

final saleList = [
  new Sales(sales: [
    new Sale(height: 700, color: Color(0xFF57a9e3), showLabel: true, width: 74),
    new Sale(height: 34, color: Color(0xFFd7747f), showLabel: true, width: 74),
  ]),
//
  new Sales(sales: [
    new Sale(
        height: 810, color: Color(0xFF57a9e3), showLabel: true, width: 174),
    new Sale(height: 32, color: Color(0xFFd7747f), showLabel: true, width: 74),
  ]), //
  new Sales(sales: [
    new Sale(
        height: 823, color: Color(0xFF57a9e3), showLabel: true, width: 674),
    new Sale(height: 31, color: Color(0xFFd7747f), showLabel: true, width: 74),
  ]), //
  new Sales(sales: [
    new Sale(
        height: 1010, color: Color(0xFF57a9e3), showLabel: true, width: 74),
    new Sale(height: 57, color: Color(0xFFd7747f), showLabel: true, width: 74),
  ]),
//
  new Sales(sales: [
    new Sale(
        height: 1000, color: Color(0xFF57a9e3), showLabel: true, width: 75),
    new Sale(height: 55, color: Color(0xFFd7747f), showLabel: true, width: 75),
  ]),
//
  new Sales(sales: [
    new Sale(
        height: 1030, color: Color(0xFF57a9e3), showLabel: true, width: 75),
    new Sale(height: 34, color: Color(0xFFd7747f), showLabel: true, width: 74),
  ]),
];
