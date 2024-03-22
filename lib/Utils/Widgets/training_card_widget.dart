
import 'package:flutter/material.dart';
import 'package:ufs_mt/Utils/Styles/text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

class TrainingCardWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  const TrainingCardWidget({super.key,required this.title,required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
      ),
      child: Stack(
        children: [
          Image.asset('assets/images/training_card_image.png',fit: BoxFit.fill,),
          Positioned(
              top: 20,
              left: 20,
              child: Text(title,style: carouselImageTitileStyle,)),
          Positioned(
              top: 45,
              left: 20,
              child: Text(subTitle,style: carouselImageSubTitileStyle,)),
          Positioned(
              top: 20,
              right: 15,
              child: Image.asset('assets/images/star_icon.png')),
          Positioned(
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: GlassContainer(
                  height: 50,
                  width: 220,
                  blur: 8,
                  color: Colors.white.withOpacity(0.1),
                  /*gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.2),
                      Colors.blue.withOpacity(0.3),
                    ],
                  ),*/
                  //--code to remove border
                  border: Border.fromBorderSide(BorderSide.none),
                  shadowStrength: 5,
                  borderRadius: BorderRadius.circular(43),
                  shadowColor: Colors.white.withOpacity(0.24),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [RichText(
                    text:  TextSpan(
                    text: 'AED ',
                      style: glassCardAedStyle,
                      children: <TextSpan>[
                        TextSpan(
                            text: '1500',
                            style: glassCardAmountStyle),
                      ],
                    ),)],
                    ),
                  ),
                ),
              ),),
          Positioned(
              bottom: 20,
              left: 20,
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xffE5AA17),
                  borderRadius: BorderRadius.circular(43)
                ),
                child: Center(child: Text('Take a look',style: glassCardTakeLookStyle,)),
              )
            ,),
        ],
      ),
    );
  }
}


