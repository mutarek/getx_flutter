import 'package:http/http.dart' as http;
import '../moduels/productmodel.dart';

class RemoteService {
  static var client = http.Client();

  static Future<List<Product>?> fetchproduct() async{
    var response = await client
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    if(response.statusCode == 200)
      {
        var jsonStrring = response.body;
       return productFromJson(jsonStrring);
      }
    else
      {
        return null;
      }
  }
}
