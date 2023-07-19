import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok/controllers/search_controller.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final SearchController searchController = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: TextFormField(
            decoration: const InputDecoration(
              filled: false,
              hintText: 'Search',
              hintStyle: TextStyle(fontSize: 18, color: Colors.white),
            ),
            onFieldSubmitted: (value) => searchController.searchUser(value),
          ),
        ),
        body: const Center(
          child: Text(
            'Search for users!',
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
