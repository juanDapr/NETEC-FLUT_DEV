import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/post_model.dart';

final postsProvider = FutureProvider<List<Post>>((ref) async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  final List<dynamic> data = json.decode(response.body);
  return data.map((json) => Post.fromJson(json)).toList();
});
