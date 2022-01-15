import 'package:app_in/components/title.text.dart';
import 'package:app_in/constants.dart';
import 'package:app_in/models/Categories.dart';
import 'package:app_in/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    SizedBox(
      width: defaultSize * 20.5,
      child: AspectRatio(
        aspectRatio: 0.83,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ClipPath(
              clipper: CategoryCustomShape(),
              child: AspectRatio(
                aspectRatio: 1.025,
                child: Container(
                  padding: EdgeInsets.all(defaultSize * 2),
                  color: kSecondaryColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TitleText(title: category.title!),
                      SizedBox(height: defaultSize),
                      Text(
                        "${category.numOfProducts}+ Products",
                        style: TextStyle(
                          color: kTextColor.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AspectRatio(
                aspectRatio: 1.15,
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/spinner.gif",
                  image: category.image!,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: const TitleText(
              title: "Browse by Categories",
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;
    double cornerSize = 30;

    path.lineTo(0, height - cornerSize);
    path.quadraticBezierTo(0, height, cornerSize, height);
    path.lineTo(width, cornerSize);
    path.quadraticBezierTo(width, height, width, cornerSize);
    path.lineTo(width, cornerSize);
    path.quadraticBezierTo(width, 0, cornerSize, 0);
    path.lineTo(cornerSize, cornerSize * 0.75);
    path.quadraticBezierTo(0, cornerSize, 0, cornerSize * 2);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
