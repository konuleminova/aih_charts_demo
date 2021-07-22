import 'package:aih_charts_demo/model/sale.dart';
import 'package:aih_charts_demo/utils/custom_tooltip.dart';
import 'package:aih_charts_demo/view_models/sale_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HorizontalBarItem extends StatelessWidget {
  List<Sales> sale;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<SalesViewModel>(builder: (context, viewModel, child) {
      sale = viewModel.saleHorizontal;
      return Container(
          child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int indexTop) {
          return Container(
            height: 34,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(
                        left:
                            sale[indexTop].sales[index].showToolTip ? 0.6 : 0),
                    color: sale[indexTop].sales[index].showToolTip
                        ? Colors.red
                        : sale[indexTop].sales[index].color,
                    width: sale[indexTop].sales[index].width.toDouble(),
                    height: 24,
                    child: sale[indexTop].sales[index].showLabel
                        ? Container(
                            alignment: Alignment.center,
                            width: sale[indexTop].sales[index].showToolTip
                                ? sale[indexTop].sales[index].width.toDouble()
                                : 18,
                            padding: EdgeInsets.only(bottom: 4),
                            child: Text(
                              sale[indexTop].sales[index].showToolTip
                                  ? sale[indexTop].sales[index].text ?? ""
                                  : sale[indexTop]
                                      .sales[index]
                                      .width
                                      .toString(),
                              style: TextStyle(
                                  fontSize: 8,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          )
                        : SizedBox(),
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
              physics: ClampingScrollPhysics(),
            ),
            margin: EdgeInsets.only(left: 0, top: 8),
          );
        },
        shrinkWrap: true,
        itemCount: sale.length,
        scrollDirection: Axis.vertical,
      ));
    });
  }
}
