import 'package:flutter/material.dart';
import 'package:movieflex/screens/navigation_screen/movie_details_screen.dart';
import 'package:movieflex/services/app_url.dart';
import 'package:movieflex/services/init_getit.dart';
import 'package:movieflex/services/navigation_service.dart';
import 'package:movieflex/utils/constants/app_icons.dart';
import 'package:movieflex/utils/ui_helper/ui_helper.dart';
import 'package:movieflex/widgets/favorite_icon_btn.dart';
import 'package:movieflex/widgets/genres_list_widgets.dart';

class MoviesWidgets extends StatelessWidget {
  const MoviesWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Material(
      color: Theme.of(context).cardColor,
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        onTap: () {
          getIt<NavigationService>().navigator(MovieDetailsScreen());
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IntrinsicWidth(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: UiHelper.customImage(
                    imageSource: AppUrl.demoImageUrl,
                    height: size.height * 0.2,
                    width: size.width * 0.3,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Movie Title',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            AppIcons.starIcon,
                            color: Colors.amber,
                            size: 18,
                          ),
                          SizedBox(width: 6),
                          Text('8/10'),
                        ],
                      ),
                      SizedBox(height: 10),
                      // TODO:Add the genres Widgets
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            AppIcons.watchLaterIcon,
                            size: 20,
                            color: Colors.cyan,
                          ),
                          SizedBox(width: 6),
                          Text(
                            'Release Date',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Spacer(),
                          FavoriteIconBtn(
                            onTap: () {},
                            btnColor: Colors.black,
                            btnIcon: AppIcons.favoriteOutlineIcon,
                          ),
                        ],
                      ),
                      GenresListWidgets(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
