import 'package:aih_charts_demo/model/sale.dart';
import 'package:flutter/cupertino.dart';

class SalesViewModel with ChangeNotifier {
  SalesViewModel() {
    _initialSaleLinear = linearSalesList;
    _initialSaleHorizontal = horizontalsalesList;
    _initialSaleVertical = verticalSaleList;
  }

  List<Sales> _saleLinear = linearSalesList;
  List<Sales> _initialSaleLinear = [];

  List<Sales> get initialSaleLinear => _initialSaleLinear;

  List<Sales> get saleLinear => _saleLinear;

  setSale(List<Sales> value) {
    _saleLinear = value;
    notifyListeners();
  }

  //HORIZONTAL

  List<Sales> _saleHorizontal = horizontalsalesList;

  List<Sales> get initialSaleHorizontal => _initialSaleHorizontal;

  List<Sales> get saleHorizontal => _saleHorizontal;

  setSaleHorizontal(List<Sales> value) {
    _saleHorizontal = value;
    notifyListeners();
  }

  List<Sales> _initialSaleHorizontal = [];

  //VERTICAL LISTS
  List<Sales> _saleVertical = verticalSaleList;
  List<Sales> _initialSaleVertical = [];

  List<Sales> get saleVertical => _saleVertical;

  setSaleVertical(List<Sales> value) {
    _saleVertical = value;
    notifyListeners();
  }

  List<Sales> get initialSaleVertical => _initialSaleVertical;

  //
  int _index = 0;

  int get index => _index;

  setIndex(int value) {
    _index = value;
    notifyListeners();
  }
}

final linearSalesList = [
  new Sales(sales: [
    new Sale(
        height: 107,
        color: Color(0xFF0f73b9),
        showLabel: true,
        time: 2015,
        text: "Ümumi mənfəət"),
    new Sale(
        height: 160,
        color: Color(0xFF57a9e3),
        showLabel: false,
        time: 2015,
        text: "EBİTDA"),
    new Sale(
        height: 90,
        color: Color(0xFF06d1e2),
        showLabel: false,
        time: 2015,
        text: "EBİT"),
    new Sale(
        height: 68,
        color: Color(0xFF068190),
        showLabel: false,
        time: 2015,
        text: "Xalis mənfəət"),
    new Sale(
        height: 68,
        color: Color(0xFFd7747f),
        showLabel: true,
        time: 2015,
        text: "Cəmi məcmu gəlir"),
  ]),
  //
  new Sales(sales: [
    new Sale(
        height: 180,
        color: Color(0xFF0f73b9),
        showLabel: true,
        time: 2016,
        text: "Ümumi mənfəət"),
    new Sale(
        height: 230,
        color: Color(0xFF57a9e3),
        showLabel: false,
        time: 2016,
        text: "EBİTDA"),
    new Sale(
        height: 140,
        color: Color(0xFF06d1e2),
        showLabel: false,
        time: 2016,
        text: "EBİT"),
    new Sale(
        height: 108,
        color: Color(0xFF068190),
        showLabel: false,
        time: 2016,
        text: "Xalis mənfəət"),
    new Sale(
        height: 108,
        color: Color(0xFFd7747f),
        showLabel: true,
        time: 2016,
        text: "Cəmi məcmu gəlir"),
  ]), //
  new Sales(sales: [
    new Sale(
        height: 208,
        color: Color(0xFF0f73b9),
        showLabel: true,
        time: 2017,
        text: "Ümumi mənfəət"),
    new Sale(
        height: 220,
        color: Color(0xFF57a9e3),
        showLabel: false,
        time: 2017,
        text: "EBİTDA"),
    new Sale(
        height: 145,
        color: Color(0xFF06d1e2),
        showLabel: false,
        time: 2017,
        text: "EBİT"),
    new Sale(
        height: 108,
        color: Color(0xFF068190),
        showLabel: false,
        time: 2017,
        text: "Xalis mənfəət"),
    new Sale(
        height: 108,
        color: Color(0xFFd7747f),
        showLabel: true,
        time: 2017,
        text: "Cəmi məcmu gəlir"),
  ]), //
  new Sales(sales: [
    new Sale(
        height: 158,
        color: Color(0xFF0f73b9),
        showLabel: true,
        time: 2018,
        text: "Ümumi mənfəət"),
    new Sale(
        height: 150,
        color: Color(0xFF57a9e3),
        showLabel: false,
        time: 2018,
        text: "EBİTDA"),
    new Sale(
        height: 90,
        color: Color(0xFF06d1e2),
        showLabel: false,
        time: 2018,
        text: "EBİT"),
    new Sale(
        height: 52,
        color: Color(0xFF068190),
        showLabel: false,
        time: 2018,
        text: "Xalis mənfəət"),
    new Sale(
        height: 52,
        color: Color(0xFFd7747f),
        showLabel: true,
        time: 2018,
        text: "Cəmi məcmu gəlir"),
  ]),
  //
  new Sales(sales: [
    new Sale(
        height: 179,
        color: Color(0xFF0f73b9),
        showLabel: true,
        time: 2019,
        text: "Ümumi mənfəət"),
    new Sale(
        height: 182,
        color: Color(0xFF57a9e3),
        showLabel: false,
        time: 2019,
        text: "EBİTDA"),
    new Sale(
        height: 110,
        color: Color(0xFF06d1e2),
        showLabel: false,
        time: 2019,
        text: "EBİT"),
    new Sale(
        height: 64,
        color: Color(0xFF068190),
        showLabel: false,
        time: 2019,
        text: "Xalis mənfəət"),
    new Sale(
        height: 64,
        color: Color(0xFFd7747f),
        showLabel: true,
        time: 2019,
        text: "Cəmi məcmu gəlir"),
  ]),
  //
  new Sales(sales: [
    new Sale(
        height: 161,
        color: Color(0xFF0f73b9),
        showLabel: true,
        time: 2020,
        text: "Ümumi mənfəət"),
    new Sale(
        height: 152,
        color: Color(0xFF57a9e3),
        showLabel: false,
        time: 2020,
        text: "EBİTDA"),
    new Sale(
        height: 66,
        color: Color(0xFF06d1e2),
        showLabel: false,
        time: 2020,
        text: "EBİT"),
    new Sale(
        height: 45,
        color: Color(0xFF068190),
        showLabel: false,
        time: 2020,
        text: "Xalis mənfəət"),
    new Sale(
        height: 45,
        color: Color(0xFFd7747f),
        showLabel: true,
        time: 2020,
        text: "Cəmi məcmu gəlir"),
  ]),
];

////HORIZONTAL SALES LIST
final horizontalsalesList = [
  new Sales(sales: [
    new Sale(width: 233, color: Color(0xFF0f73b9), showLabel: true, time: 2015,text: "Ofşor dəstək xidmətləri"),
    new Sale(width: 94, color: Color(0xFF57a9e3), showLabel: true, time: 2015,text: "Yük sərnişin daşımaları"),
    //  new Sale(width: 2, color: Color(0xFF06d1e2), showLabel: false),
    new Sale(width: 4, color: Color(0xFF068190), showLabel: false, time: 2015),
//      new Sale(width: 68, color: Color(0xFFd7747f), showLabel: true),
  ]),
  //
  new Sales(sales: [
    new Sale(width: 285, color: Color(0xFF0f73b9), showLabel: true, time: 2016,text: "Ofşor dəstək xidmətləri"),
    new Sale(width: 160, color: Color(0xFF57a9e3), showLabel: true, time: 2016,text: "Yük sərnişin daşımaları"),
    //  new Sale(width: 140, color: Color(0xFF06d1e2), showLabel: false),
    new Sale(width: 8, color: Color(0xFF068190), showLabel: false, time: 2016),
    // new Sale(width: 108, color: Color(0xFFd7747f), showLabel: true),
  ]), //
  new Sales(sales: [
    new Sale(width: 285, color: Color(0xFF0f73b9), showLabel: true, time: 2017,text: "Ofşor dəstək xidmətləri"),
    new Sale(width: 180, color: Color(0xFF57a9e3), showLabel: true, time: 2017,text: "Yük sərnişin daşımaları"),
    //  new Sale(width: 145, color: Color(0xFF06d1e2), showLabel: false),
    new Sale(width: 10, color: Color(0xFF068190), showLabel: false, time: 2017),
    //  new Sale(width: 108, color: Color(0xFFd7747f), showLabel: true),
  ]), //
  new Sales(sales: [
    new Sale(width: 181, color: Color(0xFF0f73b9), showLabel: true, time: 2018,text: "Ofşor dəstək xidmətləri"),
    new Sale(width: 171, color: Color(0xFF57a9e3), showLabel: true, time: 2018,text: "Yük sərnişin daşımaları"),
    new Sale(width: 68, color: Color(0xFF06d1e2), showLabel: true, time: 2018,text: "İcarə gəliri"),
    new Sale(width: 16, color: Color(0xFF068190), showLabel: false, time: 2018),
    new Sale(width: 4, color: Color(0xFFd7747f), showLabel: false, time: 2018),
  ]),
  //
  new Sales(sales: [
    new Sale(width: 179, color: Color(0xFF0f73b9), showLabel: true, time: 2019,text: "Ofşor dəstək xidmətləri"),
    new Sale(width: 185, color: Color(0xFF57a9e3), showLabel: true, time: 2019,text: "Yük sərnişin daşımaları"),
    new Sale(width: 95, color: Color(0xFF06d1e2), showLabel: true, time: 2019,text: "İcarə gəliri"),
    new Sale(width: 8, color: Color(0xFF068190), showLabel: false, time: 2019),
    new Sale(width: 4, color: Color(0xFFd7747f), showLabel: false, time: 2019),
  ]),
  //
  new Sales(sales: [
    new Sale(width: 163, color: Color(0xFF0f73b9), showLabel: true, time: 2020,text: "Ofşor dəstək xidmətləri"),
    new Sale(width: 169, color: Color(0xFF57a9e3), showLabel: true, time: 2020,text: "Yük sərnişin daşımaları"),
    new Sale(width: 78, color: Color(0xFF06d1e2), showLabel: true, time: 2020,text: "İcarə gəliri"),
    new Sale(width: 3, color: Color(0xFF068190), showLabel: false, time: 2020),
    new Sale(width: 5, color: Color(0xFFd7747f), showLabel: false, time: 2020),
  ]),
];
//VERTICAL SALES List

final verticalSaleList = [
  new Sales(sales: [
    new Sale(
        height: 700,
        color: Color(0xFF57a9e3),
        showLabel: true,
        time: 2015,
        text: "Kapital"),
    new Sale(
        height: 34,
        color: Color(0xFFd7747f),
        showLabel: true,
        time: 2015,
        text: "Ümumi borc"),
  ]),
//
  new Sales(sales: [
    new Sale(
        height: 810,
        color: Color(0xFF57a9e3),
        showLabel: true,
        time: 2016,
        text: "Kapital"),
    new Sale(
        height: 32,
        color: Color(0xFFd7747f),
        showLabel: true,
        time: 2016,
        text: "Ümumi borc"),
  ]), //
  new Sales(sales: [
    new Sale(
        height: 823,
        color: Color(0xFF57a9e3),
        showLabel: true,
        time: 2017,
        text: "Kapital"),
    new Sale(
        height: 31,
        color: Color(0xFFd7747f),
        showLabel: true,
        time: 2017,
        text: "Ümumi borc"),
  ]), //
  new Sales(sales: [
    new Sale(
        height: 1010,
        color: Color(0xFF57a9e3),
        showLabel: true,
        time: 2018,
        text: "Kapital"),
    new Sale(
        height: 57,
        color: Color(0xFFd7747f),
        showLabel: true,
        time: 2018,
        text: "Ümumi borc"),
  ]),
//
  new Sales(sales: [
    new Sale(
        height: 1000,
        color: Color(0xFF57a9e3),
        showLabel: true,
        time: 2019,
        text: "Kapital"),
    new Sale(
        height: 55,
        color: Color(0xFFd7747f),
        showLabel: true,
        time: 2019,
        text: "Ümumi borc"),
  ]),
//
  new Sales(sales: [
    new Sale(
        height: 1030,
        color: Color(0xFF57a9e3),
        showLabel: true,
        time: 2020,
        text: "Kapital"),
    new Sale(
        height: 34,
        color: Color(0xFFd7747f),
        showLabel: true,
        time: 2020,
        text: "Ümumi borc"),
  ]),
];
