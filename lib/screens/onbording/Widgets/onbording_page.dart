
 import 'package:flutter/cupertino.dart';

 import '../../../configs/app_dimensions.dart';
 import '../../../configs/space.dart';

class OnBoardingPage extends StatelessWidget {
  final String image;
  final String text;
  const OnBoardingPage({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.all(1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          Image.asset(
            image,
            height: AppDimensions.normalize(150),
          ),
          const Spacer(),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  text,

                ),
              ),
              const Spacer(),
            ],
          ),
          Space.y2!,
        ],
      ),
    );
  }
}
