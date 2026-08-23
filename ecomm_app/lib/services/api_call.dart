import 'package:http/http.dart' as http;
class APICall{
  fetchProducts() async {
    var request = http.Request('GET', Uri.parse('localhost/product_api/list_products.php'));


http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
  print(await response.stream.bytesToString());
}
else {
  print(response.reasonPhrase);
}

  }
}