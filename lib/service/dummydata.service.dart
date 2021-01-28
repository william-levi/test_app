import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:test_app/model/dummy.dart';

class DummyService {
  final String baseUrl = 'https://api.dreamshape.at';
  Future<List<DummyModel>> getData() async {
    try {
      final response = await http.get(baseUrl + '/dummy.php');
      if(response.statusCode == 200){
        final data = jsonDecode(response.body);
        return (data as List).map((json) {
          return DummyModel.fromJSON(json);
        }).toList();

      }else {
        throw 'Server Error';
      }

    }catch(e) {
      print(e);
      throw e;
    }
  }
}