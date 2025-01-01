import 'package:flutter/material.dart';
import 'package:movieflex/utils/constants/app_color.dart';
import 'package:movieflex/utils/constants/app_icons.dart';
import 'package:movieflex/widgets/movies_widgets.dart';

class FavoriteMoviesScreen extends StatelessWidget {
  const FavoriteMoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favourite Movies',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                AppIcons.deleteIcon,
                color: AppColor.redColor,
                size: 25,
              ))
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
