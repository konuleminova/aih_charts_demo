import 'dart:ui';

class Sale {
  int height;
  int width;
  Color color;
  bool showLabel;
  String text;
  int time;
  bool showToolTip;

  Sale(
      {this.height,
      this.color,
      this.showLabel,
      this.text,
      this.width,
      this.time,
      this.showToolTip=false});

  @override
  String toString() {
    return 'Sale{height: $height, width: $width, color: $color, showLabel: $showLabel, text: $text, time: $time}';
  }
}

class Sales {
  List<Sale> sales;

  Sales({this.sales});

  @override
  String toString() {
    return 'Sales{sales: $sales}';
  }
}
