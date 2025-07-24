/*
Mocha.dart by Alyx Shang.
Licensed under the FSL v1.
*/

// Importing the
// "fetchResponse"
// function.
import 'fetch.dart';

// Importing the "jsonDecode"
// function.
import 'dart:convert';

/// Attempts to write a link
/// to a Mocha instance. If this
/// operation fails, an exception is thrown.
/// If the operation is successful, the written
/// link is returned as a map.
Future<Map<String, String>> postLink(
  String domain,
  String linkUrl,
  String time,
  String linkName
) async {
  String url = '$domain/submit';
  Map<String, String> payload = new Map();
  payload['name'] = linkName;
  payload['time'] = time;
  payload['link'] = linkUrl;
  var resp = await fetchResponse(
    url, 
    'POST', 
    payload: payload
  ); 
  if (resp == ''){
    throw 'Invalid response received.';
  }
  else {
    return jsonDecode(resp);
  }
}
