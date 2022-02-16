import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            width: double.infinity,
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.0)),
                  hintText: 'Search your Playlist',
                  labelText: 'Search Your Songs'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              margin: EdgeInsets.all(30),
              child: Text(
                'Recently Searched',
                style: Theme.of(context).textTheme.headline6,
              ),
          ),
          SizedBox(height: 20,),

        ],
      ),
    ));
  }
}
