// ignore_for_file: avoid_print, dead_code

import 'package:ghuri_test_app/models/ip_data_model.dart';
import 'package:http/http.dart';

Future<IpDataModel?> getData() async {
  var request =
      Request('GET', Uri.parse('https://jsonplaceholder.typicode.com/users'));

  StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    var body = await response.stream.bytesToString();
    IpDataModel encodedData = ipDataModelFromJson(body) as IpDataModel;
    return encodedData;

    print(body);
  } else {
    print(response.reasonPhrase);
    return null;
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