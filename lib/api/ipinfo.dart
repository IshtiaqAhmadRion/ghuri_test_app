// ignore_for_file: avoid_print, dead_code, unused_local_variable

import 'package:ghuri_test_app/models/ip_data_model.dart';
import 'package:http/http.dart';

class IpApi {
  static Future<IpDataModel>? getData() async {
    var request = Request(
        'GET',
        Uri.parse(
            'http://api.ipapi.com/114.134.94.220?access_key=8ef48a6483be725fa8471de0fd09884d&format=1'));

    StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      final body = await response.stream.bytesToString();
      print(body);
      return IpDataModel.fromRawJson(body);
    } else {
      print(response.reasonPhrase);
      return IpDataModel();
    }
  }
}

















// // ignore_for_file: avoid_print

// import 'package:http/http.dart' as http;
// import 'package:http/http.dart';
// Future getData() async{


//   var request = Request('GET', Uri.parse('http://api.ipapi.com/114.134.94.220?access_key=8ef48a6483be725fa8471de0fd09884d&format=1'));


// http.StreamedResponse response = await request.send();

// if (response.statusCode == 200) {
//   print(await response.stream.bytesToString());
// }
// else {
//   print(response.reasonPhrase);
// }

// }