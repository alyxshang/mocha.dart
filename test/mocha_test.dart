/*
Mocha.dart by Alyx Shang.
Licensed under the FSL v1.
*/

// Importing the "expect"
// function.
import 'package:test/test.dart';

// Importing all functions this
// package offers.
import 'package:mocha/mocha.dart';

/// Implements and runs
/// all unit tests.
void main() {
  test(
    'Test the \"fetchResponse\" function with a \"GET\" request.', 
    () async {
      var resp = await fetchResponse(
        'https://jsonplaceholder.typicode.com/todos/1',
        'GET',
      );
      expect(resp != '', true); 
    }
  );
  test(
    'Test the \"fetchResponse\" function with a \"POST\" request.', 
    () async {
      Map<String, String> payload = {
        'title': 'foo',
        'body': 'Hello World!',
        'userId': '420'
      };
      var resp = await fetchResponse(
        'https://jsonplaceholder.typicode.com/posts',
        'POST',
        payload: payload
      );
      expect(resp != '', true); 
    }
  );
}
