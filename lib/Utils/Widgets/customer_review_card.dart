
import 'package:flutter/material.dart';
import 'package:ufs_mt/Utils/Styles/text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomerReviewCard extends StatelessWidget {
  const CustomerReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.grey,width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: SvgPicture.asset('assets/images/customer_image.svg',)),
                    Image.asset('assets/images/comma_icon.png')
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform(
                        transform: Matrix4.translationValues(-7, 0, 0),
                        child: Image.asset('assets/images/company_name.png')),
                    const SizedBox(height: 10,),
                    Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC",style: customerCardSubTitleStyle,),
                    const SizedBox(height: 20,),
                    Transform(
                      transform: Matrix4.translationValues(0, 7, 0),
                      child: Container(
                        height: 25,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Expanded(
                              flex: 1,
                              child: VerticalDivider(
                                width: 8,
                                color: Color(0xff0950a0),
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Text('Jerin Thomas',style: customerNameStyle,),
                                  ),
                                  const Expanded(flex: 1,
                                  child: Text('CEO & CO-FOUNDER OF ARABTEC'),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
