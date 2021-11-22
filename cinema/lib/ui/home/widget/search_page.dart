import 'package:cinema/resources/utils/constants.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({
    Key? key,
    required this.statusBar,
  }) : super(key: key);

  final double statusBar;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/header.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, top: statusBar + 25, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: whiteColor,
                      focusColor: whiteColor,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      hintText: "Search",
                      prefixIcon: const Icon(
                        Icons.search,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // height: MediaQuery.of(context).size.height / 10,
            width: MediaQuery.of(context).size.width / 2,
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: const Center(
              child: Text(
                "Search Results",
                style: TextStyle(
                  fontSize: 20,
                  color: blackColor,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
