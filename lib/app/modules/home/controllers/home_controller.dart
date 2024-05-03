import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  Future _getdata() async {
    try {
      final respon =
          await http.get(Uri.parse("http://belfoodsshop.com/read.php"));
      if (respon.statusCode == 200) {
        //print(respon.body);
        final data = jsonDecode(respon.body);
        print(data);
      }
    } catch (e) {
      print(e);
    }
  }
}
