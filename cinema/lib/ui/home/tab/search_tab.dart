import 'package:cinema/ui/home/widget/search_page.dart';
import 'package:cinema/utils/constants.dart';
import 'package:flutter/material.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  @override
  Widget build(BuildContext context) {
    double statusBar = MediaQuery.of(context).padding.top + 10;

    return SearchPage(statusBar: statusBar);
  }
}
