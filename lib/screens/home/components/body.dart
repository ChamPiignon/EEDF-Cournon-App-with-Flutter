import 'package:eedf_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'header_with_categories.dart';
import 'news_cards.dart';

class Body extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
            length: 6,
            child: Scaffold(
              appBar: HeaderWithCategories(preferredSize: Size.fromHeight(80)),
              body: TabBarView(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              NewsCard(read: false,date: "10/02"),
                              NewsCard(read: true),
                              NewsCard(read: false),
                              NewsCard(read: true),
                              NewsCard(read: true),
                              NewsCard(read: false),
                              NewsCard(read: true),
                              NewsCard(read: false),
                              NewsCard(read: false),
                            ],
                          ),
                        ),
                        SvgPicture.asset("assets/icons/ico-app.svg"),
                        SvgPicture.asset("assets/icons/ico-app.svg"),
                        SvgPicture.asset("assets/icons/ico-app.svg"),
                        SvgPicture.asset("assets/icons/ico-app.svg"),
                        SvgPicture.asset("assets/icons/ico-app.svg")]
                  ),
              backgroundColor: AppConstBackgroundColor,
              )
    );
  }

}


