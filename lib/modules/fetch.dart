/*
Mocha.dart by Alyx Shang.
Licensed under the FSL v1.
*/

// Importing the
// "jsonEncode"
// function.
import 'dart:convert';

// Importing all entities
// making HTTP requests.
import 'package:http/http.dart';

/// A function to fetch responses
/// from servers as a string. If
/// the request fails or the 
/// HTTP verb is invalid,
/// an empty string is returned.
Future<String> fetchResponse(
  String url,
  String method,
  {Map<String, String>? payload}
) async {
  Client client = new Client();
  Uri uri = Uri.parse(url);
  if (method == 'GET'){
    Response response = await client.get(uri);
    return response.body;
  }
  else if (method == 'POST'){
    Response response = await client.post(
      uri, 
      body: jsonEncode(payload),
    );
    return response.body;
  }
  else {
    return '';
  }
}
