import 'package:cinema/resources/utils/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Header And Appbar
          Container(
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
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text(
                        'Hot Movies',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.filter_list,
                            color: whiteColor,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          //Listview
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemExtent: MediaQuery.of(context).size.width / 1.9,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Image(
                    image: AssetImage('assets/images/banner.png'));
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20),
            child: const Text(
              'Most Watched Movies',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          //List movies
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemExtent: MediaQuery.of(context).size.width / 1.9,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Image(
                    image: AssetImage('assets/images/banner.png'));
              },
            ),
          ),
        ],
      ),
    );
  }
}
