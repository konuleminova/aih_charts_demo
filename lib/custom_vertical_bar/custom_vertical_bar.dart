import 'package:aih_charts_demo/custom_vertical_bar/widgets/vertical_bar_item.dart';
import 'package:aih_charts_demo/model/sale.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomVerticalBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Container(
            child:  Container(
              alignment: Alignment.bottomLeft,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Container(
                        width: 40,
                        height: 50,
                        alignment: Alignment.topLeft,
                        child: Text(
                          '${((1200 - (index) * 200))}',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 40,
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Colors.grey.withOpacity(0.4))),
                          ),
                          child: Text(
                            '',
                          ),
                        ),
                      )
                    ],
                  );
                },
                itemCount: 7,
              ),
              height: 400,
            padding: EdgeInsets.only(left: 16),
            //  color: Colors.yellow,
              //  margin: EdgeInsets.all(16),
            ),),
        Container(
          height: 400,
        //  color: Colors.red,
          alignment: Alignment.topLeft,
        padding: EdgeInsets.only(
            left: 60,
            right: 16,
            bottom: 16
          ),
          child: VerticalBarItem(
          ),
        ),
//        SizedBox(
//          height: 50,
//        )
      ],
    );
  }
}

