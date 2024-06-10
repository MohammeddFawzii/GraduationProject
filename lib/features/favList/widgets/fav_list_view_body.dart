import 'package:flutter/material.dart';
import 'package:gproject/features/favList/widgets/fav_list_view_builder.dart';
import 'package:gproject/models/translated_item_model.dart';


class FavListViewBody extends StatelessWidget {
  const FavListViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<TranslatedItemModel> favList = [
      // TranslatedItemModel(
      //     translationImage: "assets/images/signex 1.png",
      //     translationText: "Hello",
      //     date: "1-1-2025",
      //     translationType: "From Sign Language"),
      // TranslatedItemModel(
      //     translationImage: "assets/images/signex 1.png",
      //     translationText: "Hello",
      //     date: "1-1-2025",
      //     translationType: "From Sign Language"),
      // TranslatedItemModel(
      //     translationImage: "assets/images/signex 1.png",
      //     translationText: "Hello",
      //     date: "1-1-2025",
      //     translationType: "From Sign Language"),
    ];
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Image(image: AssetImage("assets/images/logo2 copy 5.png")),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                    border: BorderDirectional(
                        start: BorderSide(color: Color(0xff3CC563), width: 6))),
                child: const Text(
                  " Your Fav List ",
                  style: TextStyle(
                      color: Color(0xff3CC563),
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 24),
                child: Image(
                    image: AssetImage("assets/images/heart-icon-y1k 1.png")),
              ),
            ],
          ),
        ),
        FavListViewBuilder(favList: favList),
      ],
    );
  }
}
