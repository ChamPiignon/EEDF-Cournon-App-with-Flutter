import 'package:flutter/material.dart';
import 'package:eedf_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderWithCategories extends StatelessWidget with PreferredSizeWidget {
  const HeaderWithCategories({
    Key key,
    @required this.preferredSize,
  }) : super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: new TabBar(
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: AppConstBackgroundColor,
          indicatorColor: AppConstPrimaryColor,
          unselectedLabelColor: AppConstTextColor,
          tabs: <Widget>[
            Tab(
              icon: SvgPicture.asset("assets/icons/logo-clock.svg"),
              text: 'Nouveaux',
              iconMargin: EdgeInsets.only(bottom:5),
            ),
            Tab(
              icon: SvgPicture.asset("assets/icons/logo-lutin.svg"),
              text: 'Lutin',
              iconMargin: EdgeInsets.only(bottom:7),
            ),
            Tab(
              icon: SvgPicture.asset("assets/icons/logo-loup.svg"),
              text: 'Loup',
              iconMargin: EdgeInsets.only(bottom:7),
            ),
            Tab(
              icon: SvgPicture.asset("assets/icons/logo-eclais.svg"),
              text: 'Éclais',
              iconMargin: EdgeInsets.only(bottom:7),
            ),
            Tab(
              icon: SvgPicture.asset("assets/icons/logo-aine.svg"),
              text: 'Ainé',
              iconMargin: EdgeInsets.only(bottom:7),
            ),
            Tab(
              icon: SvgPicture.asset("assets/icons/logo-intendant.svg"),
              text: 'Intendance',
              iconMargin: EdgeInsets.only(bottom:7),
            )
          ]
      ),
    );
  }
}