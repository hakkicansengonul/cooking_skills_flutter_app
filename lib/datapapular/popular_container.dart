import 'package:cooking_skills_flutter_app/Animation/Fade_Animation.dart';
import 'package:cooking_skills_flutter_app/datapapular/detailsData.dart';
import 'package:cooking_skills_flutter_app/screens/details_screen.dart';
import 'package:flutter/material.dart';

List poppage = [
  PopularPage(
      "https://cdn.pixabay.com/photo/2016/10/27/22/07/pancake-1776646_1280.jpg",
      "BlueBerry Pancakes",
      25,
      4.9),
  PopularPage(
      "https://cdn.pixabay.com/photo/2016/03/05/20/07/abstract-1238657_1280.jpg",
      "Sauced Meat",
      35,
      6.4),
];

class PopularPage extends StatelessWidget {
  final String imgUrl;
  final String title;
  final int alarm;
  final double star;

  const PopularPage(this.imgUrl, this.title, this.alarm, this.star);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: Container(
          width: 350.0,
          height: 350.0,
          child: Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => DetailsPage(imgUrl),
                      ),
                    );

                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 500,
                          color: Colors.black,
                          child: Container(
                            height: 500.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0),
                                )),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  FadeAnimation(
                                    1.1,
                                    Text(
                                      "Berry Tart",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0),
                                    ),
                                  ),
                                  FadeAnimation(
                                    1.1,
                                    Text(
                                      "Amazing combo of sweet and sour taste! Super easy to cook. Enjoy!",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  FadeAnimation(
                                    1.2,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Preparation",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.alarm_outlined,
                                              color: Colors.black,
                                            ),
                                            SizedBox(
                                              width: 4.0,
                                            ),
                                            Text(
                                              "35'",
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  FadeAnimation(
                                    1.3,
                                    Container(
                                      height: 230.0,
                                      width: double.infinity,
                                      //color: Colors.red,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: detailsdatapage.length,
                                        itemBuilder: (context, index) {
                                          return detailsdatapage[index];
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 100.0),
                                    child: FadeAnimation(
                                      1.4,
                                      Container(
                                        height: 40.0,
                                        width: 170.0,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            boxShadow: [
                                              BoxShadow(
                                                  offset: Offset(0.0, 4.0),
                                                  color: Colors.grey
                                                      .withOpacity(.6))
                                            ]),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.play_arrow_outlined,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "Watch Video",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 260.0,
                    width: 330.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.0, 4.0),
                            color: Colors.black.withOpacity(.6))
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: NetworkImage(imgUrl), fit: BoxFit.cover),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 270.0, bottom: 200.0),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                    Text(
                      "Amazing combo of sweet and sour taste!",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.alarm_add_outlined,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              "$alarm",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15.0),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              "$star",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
