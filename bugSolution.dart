```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Check if the key exists before accessing it
      final someKeyValue = jsonData['someKey'];
      if (someKeyValue != null) {
        print(someKeyValue);
      } else {
        print('Key "someKey" not found in JSON response');
        // Handle the case where the key is missing appropriately, perhaps using a default value or alternative logic
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Consider more sophisticated error handling, like logging or displaying a user-friendly message
  }
}
```