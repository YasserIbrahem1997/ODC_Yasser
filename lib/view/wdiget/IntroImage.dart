import 'package:flutter/cupertino.dart';

import '../../constract.dart';

class IntroImage extends StatefulWidget {
  String introImage;

  IntroImage({required this.introImage});

  @override
  State<IntroImage> createState() => _OnboardWidState();
}

class _OnboardWidState extends State<IntroImage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 270,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image:  DecorationImage(
                  image: AssetImage(
                    widget.introImage,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Learn a lot of courses in Orange Education",
            style:TextStyle(
              color: colorBlack,
              fontSize: fontTitleA,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
            style: TextStyle(
              color: subTitleGray,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,

          ),
        ],
      ),
    );
  }
}