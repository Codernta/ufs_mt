

 import 'package:flutter/material.dart';
 import 'package:google_fonts/google_fonts.dart';

TextStyle tabBarStyle = const TextStyle(fontFamily: 'HelveticaNeue',fontWeight: FontWeight.w500,fontSize: 16,color: Color(0xff294C73));
TextStyle gridItemStyle = GoogleFonts.dmSans(fontWeight: FontWeight.w500,fontSize: 14,color:Color(0xff294c73));
 TextStyle featuredStyle = const TextStyle(fontFamily: 'HelveticaNeue',fontWeight: FontWeight.w600,fontSize: 26,color: Color(0xff294C73));
 TextStyle carouselImageTitileStyle = const TextStyle(fontFamily: 'HelveticaNeue',fontWeight: FontWeight.w500,fontSize: 20,color: Colors.white);
 TextStyle carouselImageSubTitileStyle = const TextStyle(fontFamily: 'HelveticaNeue',fontWeight: FontWeight.w300,fontSize: 14,color: Colors.white);
 TextStyle glassCardTakeLookStyle = const TextStyle(fontFamily: 'HelveticaNeue',fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black);
 TextStyle customerCardSubTitleStyle =  TextStyle(fontFamily: 'HelveticaNeue',fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff565656).withOpacity(0.6));
 TextStyle customerNameStyle =  TextStyle(fontFamily: 'HelveticaNeue',fontWeight: FontWeight.w400,fontSize: 14,color: Colors.black);

 TextStyle glassCardAedStyle = const TextStyle(fontFamily: 'HelveticaNeue',fontWeight: FontWeight.w400,fontSize: 16,color: Colors.grey);
 TextStyle glassCardAmountStyle = const TextStyle(fontFamily: 'HelveticaNeue',fontWeight: FontWeight.w400,fontSize: 16,color: Colors.white);


 TextStyle homePageReadyTitle = const TextStyle(fontFamily: 'HelveticaNeue',fontWeight: FontWeight.w700,fontSize: 40,color: Color(0xff294C73));
 TextStyle homePageInspectTitle =  const TextStyle(fontFamily: 'HelveticaNeue',fontWeight: FontWeight.w700,color:Color(0xffd8eaff),fontSize: 40,shadows: [
  Shadow( // bottomLeft
      offset: Offset(-1.5, -1.5),
      color: Color(0xff0950a0)
  ),
  Shadow( // bottomRight
      offset: Offset(1.5, -1.5),
      color: Color(0xff0950a0)
  ),
  Shadow( // topRight
      offset: Offset(1.5, 1.5),
      color: Color(0xff0950a0)
  ),
  Shadow( // topLeft
      offset: Offset(-1.5, 1.5),
      color: Color(0xff0950a0)
  ),
 ]);
