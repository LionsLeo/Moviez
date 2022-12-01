import 'package:flutter/material.dart';

import 'constants/color_constants.dart';
import 'models/movies_model.dart';

class movieScreen extends StatefulWidget {
  const movieScreen({super.key});

  @override
  State<movieScreen> createState() => _movieScreenState();
}

class _movieScreenState extends State<movieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mMovieBgColor,
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 25, left: 15, right: 15),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back_ios,
                      color: mBgColor,
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.live_tv,
                            color: mBgColor,
                            size: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Moviez',
                              style: TextStyle(
                                  color: mBgColor,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 23),
                            ),
                          )
                        ]),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFFFFFFF).withOpacity(0.3)),
                      child: Icon(
                        Icons.live_tv,
                        color: mBgColor,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Stack(children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 300,
                    height: 370,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: mDarkColor,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(Movies[0].thumbnail),
                        )),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50, top: 20),
                    child: Container(
                      width: 70,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: mBgColor.withOpacity(0.3),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                            Movies[0].likes,
                            style: TextStyle(
                                color: mBgColor, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ]),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  color: mDarkColor,
                ),
              ),
            ],
          )),
    );
  }

  showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: ((context) => Container(
              height: 300,
              decoration: BoxDecoration(color: mBgColor),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Create',
                          style: TextStyle(
                              color: mDarkColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 25),
                        ),
                        GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Icon(
                              Icons.close,
                              color: mLightText,
                              size: 40,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: mLightText),
                          child: Icon(
                            Icons.play_arrow,
                            color: mDarkColor,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Create a Short',
                          style: TextStyle(
                              color: mDarkColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: mLightText),
                          child: Icon(
                            Icons.upgrade_outlined,
                            color: mDarkColor,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Upload a video',
                          style: TextStyle(
                              color: mDarkColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: mLightText),
                          child: Icon(
                            Icons.live_tv_sharp,
                            color: mDarkColor,
                            size: 20,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Go Live',
                          style: TextStyle(
                              color: mDarkColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}
