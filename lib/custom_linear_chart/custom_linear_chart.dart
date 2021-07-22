import 'package:aih_charts_demo/model/sale.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/linear_bar_item.dart';

class CustomLinearChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Container(
            child: Column(
          children: [
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Container(
                        width: 40,
                        height: 50,
                        alignment: Alignment.topLeft,
                        child: Text(
                          '${(250 - ((index) * 50))}',
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
                itemCount: 6,
              ),
              height: 300,
              margin: EdgeInsets.all(16),
            ),
          ],
        )),
        Container(
          height: 300,
          margin: EdgeInsets.only(
            left: 60,
            right: 16,
          ),
          child: LinearBarItem(
          ),
        ),
        SizedBox(
          height: 50,
        )
      ],
    );
  }
}