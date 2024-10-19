import 'dart:convert';
import 'package:http/http.dart' as http;

Future<int> predictHeartDisease(Map<String, dynamic> heartModel) async {
  final url =
      Uri.parse('https://ahmedmbutt-heart-disease-prediction.hf.space/predict');

  final headers = {
    'Content-Type': 'application/json',
  };

  final body = jsonEncode(heartModel);

  final response = await http.post(url, headers: headers, body: body);

  if (response.statusCode == 200) {
    return jsonDecode(response.body)['target'];
  } else {
    throw Exception(
        'Failed to predict heart disease: ${response.reasonPhrase}');
  }
}
