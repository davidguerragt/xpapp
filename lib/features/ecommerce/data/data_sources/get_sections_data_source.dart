class GetSectionsDataSource {
  Future<List<Map<String, dynamic>>> getSections() async {
    // Simulate fetching sections from an API or database
    await Future.delayed(Duration(seconds: 1)); // Simulate network delay
    return [
      {'id': 1, 'name': 'Perfect for you'},
      {'id': 2, 'name': 'For this summer'},
      {'id': 3, 'name': 'New arrivals'},
      {'id': 4, 'name': 'Best sellers'},
    ];
  }
}
