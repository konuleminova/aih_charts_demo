import 'package:aih_charts_demo/custom_horizontal_bar/widgets/horizontal_bar_item.dart';
import 'package:aih_charts_demo/model/sale.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomHorizontalBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Stack(
          children: [
            Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 40,
                          height: 44,
                          alignment: Alignment.topLeft,
                          child: Text(
                            '${(2015 + index)}',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 12),
                          ),
                        );
                      },
                      itemCount: 6,
                    ),
                    width: 40,
                  ),
                  Container(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Container(
                              width: 40,
                              height: 250,
                              alignment: Alignment.bottomLeft,
                              decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color:
                                              Colors.grey.withOpacity(0.4)))),
                            ),
                            Container(
                              width: 40,
                              child: Text('${(index * 50)}',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 12)),
                              margin: EdgeInsets.only(top: 8, right: 10),
                            ),
                          ],
                        );
                      },
                      itemCount: 11,
                      scrollDirection: Axis.horizontal,
                    ),
                    margin: EdgeInsets.only(top: 24),
                  ),
                ],
              ),
              height: 300,
              margin: EdgeInsets.all(16),
            ),
            Container(
              width: 500,
              height: 250,
              margin: EdgeInsets.only(left: 60, right: 16, top: 24),
              child: HorizontalBarItem(
              ),
            ),
          ],
        ));
  }
}
