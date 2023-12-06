import 'dart:convert';

import 'package:bloccccc/model/Products.dart';
import 'package:bloccccc/model/RespMain.dart';
import 'package:http/http.dart' as http;
class ApiService{
  Future<List<Products>?> fetchdata() async {
    final response=await http.get(Uri.parse("https://dummyjson.com/products"));
    var jsonn=jsonDecode(response.body);
    var rmain=RespMain.fromJson(jsonn);
    var list=rmain.products;
    return list;
  }
}