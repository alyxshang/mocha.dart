/*
Mocha.dart by Alyx Shang.
Licensed under the FSL v1.
*/

// Importing the "fetchResponse"
// function.
import 'fetch.dart';

// Importing the "jsonDecode"
// function.
import 'dart:convert';

/// Attempts to fetch a link saved
/// on a Mocha instance as a map. If this
/// operation fails, an exception is thrown.
Future<Map<String, String>> fetchLinkById(
  String domain,
  String linkId,
) async {
  String url = '$domain/retrieve/$linkId';
  String resp = await fetchResponse(
    url, 
    'GET', 
  ); 
  if (resp == ''){
    throw 'Invalid response received.';
  }
  else {
    return jsonDecode(resp);
  }
}
