import 'dart:developer';

import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  String? cityName;

  SearchPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search your City'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            onChanged: (value) {
              log(value);
            },
            onSubmitted: (value) {
              cityName = value;
              log(value);
            },
            decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 25, horizontal: 14),
                label: Text("search"),
                hintText: 'Enter Your city name',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search)),
          ),
        ),
      ),
    );
  }
}
