import 'package:flutter/material.dart';

List cuisinedata = [
  CuisineSearch(
      "https://cdn.pixabay.com/photo/2015/09/15/11/25/cikofte-940833_1280.jpg",
      "Turkey"),
  CuisineSearch(
      "https://cdn.pixabay.com/photo/2017/08/01/01/42/pancake-2562707_1280.jpg",
      "French"),
  CuisineSearch(
      "https://cdn.pixabay.com/photo/2020/01/21/20/03/beans-4783866_1280.jpg",
      "England"),
  CuisineSearch(
      "https://cdn.pixabay.com/photo/2017/08/04/11/47/pizza-2579926_1280.jpg",
      "Italy"),
  CuisineSearch(
      "https://cdn.pixabay.com/photo/2017/03/25/10/21/salad-2173214_1280.jpg",
      "Greece"),
];

class CuisineSearch extends StatelessWidget {
  final String imgUrl;
  final String title;

  const CuisineSearch(this.imgUrl, this.title);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          height: 150.0,
          width: 120.0,
          child: Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Column(
              children: [
                Container(
                  height: 90.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    //color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(-3.0, 4.0),
                          color: Colors.black.withOpacity(.7))
                    ],
                    image: DecorationImage(
                        image: NetworkImage(imgUrl), fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
