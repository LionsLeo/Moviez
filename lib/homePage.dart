import 'package:flutter/material.dart';
import 'package:moviez/constants/color_constants.dart';
import 'package:moviez/models/movies_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mBgColor,
      body: Container(
        padding: EdgeInsets.only(top: 25, left: 15, right: 15),
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.live_tv,
                          color: mLogoColor,
                          size: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Moviez',
                            style: TextStyle(
                                color: mLogoColor,
                                fontWeight: FontWeight.w800,
                                fontSize: 23),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: mDarkColor,
                          size: 25,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.movie_creation,
                  color: mDarkColor,
                  size: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Today',
                  style: TextStyle(
                      color: mDarkColor,
                      fontWeight: FontWeight.w800,
                      fontSize: 35),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 345,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movieData.length,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(right: 20, top: 8, bottom: 8),
                    child: Stack(children: [
                      Container(
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueGrey,
                                blurRadius: 25,
                                spreadRadius: -10,
                                offset: Offset(
                                  0,
                                  15,
                                ),
                              )
                            ],
                            color: mBgColor,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(Movies[index].thumbnail))),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Container(
                            width: 60,
                            height: 22,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: mBgColor.withOpacity(0.3),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.heart_broken,
                                  size: 12,
                                  color: mBgColor,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  Movies[0].likes,
                                  style: TextStyle(
                                      color: mBgColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ]),
                  );
                }),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.movie_creation,
                  color: mDarkColor,
                  size: 23,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Popular Reviews',
                  style: TextStyle(
                      color: mDarkColor,
                      fontWeight: FontWeight.w800,
                      fontSize: 28),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                  padding: EdgeInsets.only(right: 8),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: mTileColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Icon(
                        Icons.filter_alt_outlined,
                        color: mDarkColor,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                          color: mTileColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Text(
                        'Action',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: mLightText,
                            fontSize: 16),
                      )),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 85,
                      height: 50,
                      decoration: BoxDecoration(
                          color: mTileColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Text(
                        'Drama',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: mDarkColor,
                            fontSize: 16),
                      )),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 105,
                      height: 50,
                      decoration: BoxDecoration(
                          color: mTileColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Text(
                        'Romance',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: mDarkColor,
                            fontSize: 16),
                      )),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 110,
                      height: 50,
                      decoration: BoxDecoration(
                          color: mTileColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Text(
                        'Comedy',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: mDarkColor,
                            fontSize: 16),
                      )),
                    ),
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    padding: EdgeInsets.all(0),
                    itemCount: Movies.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: mTileColor,
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        Movies[index].movie_name,
                                        style: TextStyle(
                                            color: mDarkColor,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      Text(
                                        Movies[index].upload_year +
                                            ' | ' +
                                            Movies[index].genre,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: mLightText),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    width: 70,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: mLogoColor,
                                    ),
                                    child: Center(
                                        child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(
                                          Icons.heart_broken,
                                          size: 15,
                                          color: mBgColor,
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          Movies[index].likes,
                                          style: TextStyle(
                                              color: mBgColor,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    )),
                                  ),
                                ),
                              ]),
                        ),
                      );
                    }),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
