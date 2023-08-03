import 'package:http/http.dart' as http;

class ActivityProvider {
  static const queryParameters = {'type': 'music', 'participants': '1'};

  static Future<String> getRandomActivity(
      Map<String, String>? queryParameters) async {
    final uri = Uri(
        scheme: 'http',
        host: "www.boredapi.com",
        path: "/api/activity",
        queryParameters: queryParameters);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception("Failed to load activity");
    }
  }
}
