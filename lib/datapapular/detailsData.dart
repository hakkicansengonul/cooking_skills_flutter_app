import 'package:flutter/material.dart';

List detailsdatapage = [
  DetailsdataPage(
      "https://cdn.pixabay.com/photo/2017/11/02/12/28/hand-dipping-chocolates-2911048_1280.jpg",
      "1.Melt\nChocolate"),
  DetailsdataPage(
      "https://cdn.pixabay.com/photo/2015/01/23/18/20/lemon-squeezer-609273_1280.jpg",
      "2.Squeeze\nJuice"),
  DetailsdataPage(
      "https://cdn.pixabay.com/photo/2017/09/01/08/34/chocolate-2703425_1280.jpg",
      "3.mix in\nthe mixer"),
];

class DetailsdataPage extends StatelessWidget {
  final String imgUrl;
  final String title;

  const DetailsdataPage(this.imgUrl, this.title);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Container(
            height: 150.0,
            width: 200.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 4.0),
                    color: Colors.black.withOpacity(.7),
                  ),
                ],
                image: DecorationImage(
                    image: NetworkImage(imgUrl), fit: BoxFit.cover)),
            child: Padding(
              padding: EdgeInsets.only(top: 30.0, left: 20.0),
              child: Text(
                title,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ));
  }
}
