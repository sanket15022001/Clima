import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class NetworkHelper {
  NetworkHelper(this.urll);
  final String urll;

  Future getData() async {
    var url = Uri.parse(urll);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = convert.jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
