import 'package:flutter/material.dart';
import 'package:movieflex/screens/navigation_screen/favorite_movies_screen.dart';
import 'package:movieflex/services/init_getit.dart';
import 'package:movieflex/services/navigation_service.dart';
import 'package:movieflex/utils/constants/app_color.dart';
import 'package:movieflex/utils/constants/app_icons.dart';
import 'package:movieflex/widgets/favorite_icon_btn.dart';
import 'package:movieflex/widgets/movies_widgets.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Popular Movies',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [
          FavoriteIconBtn(
            onTap: () {
              getIt<NavigationService>().navigator(FavoriteMoviesScreen());
            },
            btnColor: AppColor.redColor,
            btnIcon: AppIcons.favoriteIcon,
          ),
          IconButton(onPressed: () {}, icon: Icon(AppIcons.themeChangerIcon)),
        ],
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return MoviesWidgets();
        },
      ),
    );
  }
}
