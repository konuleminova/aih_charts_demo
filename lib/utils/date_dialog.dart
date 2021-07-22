import 'package:aih_charts_demo/model/sale.dart';
import 'package:aih_charts_demo/view_models/sale_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DateDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DateDialog();
  }
}

class _DateDialog extends State<DateDialog> {
  TextEditingController textEditingController1 = new TextEditingController();
  TextEditingController textEditingController2 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      content: Builder(
        builder: (context) {
          // Get available height and width of the build area of this widget. Make a choice depending on the size.
          var height = MediaQuery.of(context).size.height;
          var width = MediaQuery.of(context).size.width;

          return Container(
            height: 200,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Please enter two years'),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                        controller: textEditingController1,
                            keyboardType: TextInputType.number,
                      )),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: TextField(
                        controller: textEditingController2,
                            keyboardType: TextInputType.number,
                      ))
                    ],
                  ),
                  width: width,
                  height: 40,
                ),
                SizedBox(
                  height: 24,
                ),
                InkWell(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.blue,
                    ),
                    alignment: Alignment.center,
                    height: 44,
                    child: Text(
                      'OK',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onTap: () {
//                    SalesViewModel salesProvider =
//                        Provider.of<SalesViewModel>(context, listen: false);
//                    List<Sales> salesList = [];
//                    int var1 = 0;
//                    int var2 = 0;
//                    if (textEditingController1.text.isNotEmpty) {
//                      var1 = int.parse(textEditingController1.text.toString());
//                    }
//                    if (textEditingController2.text.isNotEmpty) {
//                      var2 = int.parse(textEditingController2.text.toString());
//                    }
//
//                    for (int i = 0; i < salesProvider.initialSale.length; i++) {
//                      if (salesProvider.initialSale[i].sales[0].time.toInt() >
//                              var1 &&
//                          salesProvider.initialSale[i].sales[0].time.toInt() <
//                              var2) {
//                        salesList.add(salesProvider.initialSale[i]);
//                        print('TURE ${salesList}');
//                      }
//                    }
//                    salesProvider.setSale(salesList);
                    SalesViewModel salesProvider =
                    Provider.of<SalesViewModel>(context, listen: false);
                    List<Sales> salesList = [];
                    for (int i = 0;
                    i < salesProvider.initialSaleLinear.length;
                    i++) {
                      if (salesProvider.initialSaleLinear[i].sales[0].time
                          .toString() ==
                          2016.toString()) {
                        print('TURE ${salesList}');
                        salesList.add(salesProvider.initialSaleLinear[i]);
                      }
                    }
                    salesProvider.setSale(salesList);
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
