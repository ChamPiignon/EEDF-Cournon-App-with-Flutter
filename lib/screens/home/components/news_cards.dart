import 'package:flutter/material.dart';

import '../../../constants.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    Key key,
    this.read = false,
    this.press,
    this.date = "DATE",
    this.contenu,
  }) : super(key: key);
  final bool read;
  final String date;
  final Function press;
  final String contenu;
  bool get isRead => read;
  String get getDate => date;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 10.0, left: 10),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      decoration: BoxDecoration(
        //color: chat.unread ? Color(0xFFFFEFEE) : Colors.white,
        color: AppConstTextColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 35.0,
                child: Text(
                    getDate,
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
                ),
                backgroundColor: AppConstPrimaryColor,


              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Titre",
                    style: TextStyle(
                      color: AppConstPrimaryColor,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Text(
                      "Contenu",
                      style: TextStyle(
                        color: AppConstBackgroundTextCardColor,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: <Widget>[
              read ? Container(
                width: 40.0,
                height: 20.0,
                decoration: BoxDecoration(
                    color: AppConstPrimaryColor,
                    shape: BoxShape.circle
                ),
                alignment: Alignment.center,
              )
                  : Text(''),
              SizedBox(height: 5.0),
            ],
          ),
        ],
      ),
    );
  }
}