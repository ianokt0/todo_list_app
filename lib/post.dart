// class Post {
//   final String userId;
//   final String title;
//   final String description;
//   Post({required this.userId, required this.title, required this.description});
// }


  // Future<Post> fetchPost() async {
  //   final uri = Uri.parse("http://jsonplaceholder.typicode.com/posts/1");
  //   final response = await http.get(uri);

  //   if (response.statusCode == 200) {
  //     return Post.fromJson(json.decode(response.body));
  //   } else {
  //     throw Exception("failed to fetch api");
  //   }
  // }