import 'package:cooking_skills_flutter_app/Animation/Fade_Animation.dart';
import 'package:cooking_skills_flutter_app/datapapular/popular_container.dart';
import 'package:cooking_skills_flutter_app/datapapular/searc_cuisine.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.0,
              ),
              Container(
                color: Colors.white,
                height: 100.0,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FadeAnimation(
                      1.1,
                      Row(
                        children: [
                          Text(
                            "Hello There, ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0),
                          ),
                          Text(
                            "Hakkı!",
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    FadeAnimation(
                      1.1,
                      Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.orange, width: 3.0),
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://avatars.githubusercontent.com/u/56843071?s=460&u=9285c334652104d0e8fab334bf7de72f35c1f729&v=4"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: FadeAnimation(
                  1.3,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Select a category",
                        style: TextStyle(color: Colors.grey, fontSize: 16.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          selectcategory(
                              "https://cdn.pixabay.com/photo/2013/07/13/09/37/pancakes-155793_1280.png",
                              "Breakfast",
                              true),
                          selectcategory(
                              "https://cdn.pixabay.com/photo/2016/10/27/13/14/muffin-1774967_1280.png",
                              " Dessert",
                              false),
                          selectcategory(
                              "https://cdn.pixabay.com/photo/2014/12/21/23/40/steak-575806_1280.png",
                              "  Meat",
                              false),
                          Container(
                            height: 50.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.grey[400]),
                            child: Center(child: Text("more")),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 23.0),
                child: FadeAnimation(
                  1.1,
                  Text(
                    "Popular",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0),
                  ),
                ),
              ),
              //  SizedBox(height: 10.0,),
              FadeAnimation(
                1.3,
                Container(
                  color: Colors.white,
                  height: 370.0,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: poppage.length,
                    itemBuilder: (context, index) {
                      return poppage[index];
                    },
                  ),
                ),
              ),

              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 23.0),
                child: FadeAnimation(
                  1.1,
                  Text(
                    "Search by cuisine",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              FadeAnimation(
                1.3,
                Container(
                  // color: Colors.orangeAccent,
                  height: 120.0,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cuisinedata.length,
                    itemBuilder: (context, index) {
                      return cuisinedata[index];
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget selectcategory(String imgUrl, String title, bool isActive) {
  return Container(
    height: 90.0,
    width: 90.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
              color: isActive == true ? Colors.orange : Colors.grey[300],
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  image: NetworkImage(imgUrl), fit: BoxFit.cover)),
        ),
        SizedBox(
          width: 5.0,
        ),
        Text(
          title,
        )
      ],
    ),
  );
}
