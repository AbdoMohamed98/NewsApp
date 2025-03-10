import 'package:dio/dio.dart';
import 'dart:io';

import 'package:dio/io.dart';
import 'package:newsapp/models/getnewsmodel.dart';

class Getnewsservice {
  late Dio dio;

  Getnewsservice() {
    dio = Dio(BaseOptions(
      validateStatus: (_) => true,
    ));

    // Bypass SSL Verification
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }

  Future<List<Getnewsmodel>> getNews({required String categoryname}) async {
    List<Getnewsmodel> getnewslist = [];
    try {
      Response response = await dio.get(
          'https://newsdata.io/api/1/latest?apikey=pub_727166b461d320ffaa3af654b858506804c26&category=$categoryname,world&language=en&country=au,gb');

      if (response.statusCode == 200) {
        Map<String, dynamic> newsdata = response.data;
        List<dynamic> results = newsdata['results'];
      
        for (var result in results) {
          Getnewsmodel getnewsmodel = Getnewsmodel.fromjson(result);

          getnewslist.add(getnewsmodel);
        }
      } else {
        print('Failed to fetch news: ${response.statusCode}');
      }
    } catch (e) {
      print('Failed to fetch news: $e');
    }

    return getnewslist;
  }
}
