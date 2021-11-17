// ignore_for_file: avoid_print, file_names

import 'package:http/http.dart';

class LonginInfo{
  Future postData () async {
   var request = Request('POST', Uri.parse('https://reqres.in/api/login'));


StreamedResponse response = await request.send();

if (response.statusCode == 200) {
  print(await response.stream.bytesToString());
}
else {
  print(response.reasonPhrase);
}


  }
}