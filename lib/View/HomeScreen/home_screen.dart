

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ufs_mt/Utils/Styles/styles_and_gradient.dart';
import 'package:ufs_mt/Utils/Styles/text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ufs_mt/Utils/Widgets/customer_review_card.dart';
import 'package:ufs_mt/Utils/Widgets/training_card_widget.dart';

import '../../Utils/Widgets/home_page_grid_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {

  TabController? _controller;
  final ScrollController _scrollController = ScrollController();
  double _progress = 0.0;


  List<String> cardTitles = [
    'Total\nEquipments',
    'Expiring\nEquipments',
    'Upcoming\nEquipments',
    'Total\nLocations'
  ];
  List<int> cardCounts = [10, 5, 15, 5];

  List<String> featuredCardTitle = [
    'Zipline Training',
    'Climbing Training',
    'Zipline Training',
    'Zipline Training',
    'Zipline Training',
    'Zipline Training',
  ];

  List<String> featuredCardSubTitle = [
    'Experience the ultimate thrill\nwith our Zipline Training\nprogram',
    'Experience the ultimate thrill\nwith our Zipline Training\nprogram',
    'Experience the ultimate thrill\nwith our Zipline Training\nprogram',
    'Experience the ultimate thrill\nwith our Zipline Training\nprogram',
    'Experience the ultimate thrill\nwith our Zipline Training\nprogram',
    'Experience the ultimate thrill\nwith our Zipline Training\nprogram',
  ];

  void _updateProgress() {
    setState(() {
      _progress = (_scrollController.offset / _scrollController.position.maxScrollExtent).clamp(0.0, 1.0);
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_updateProgress);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(
        initialIndex: 1,
        length: 3, vsync: this);
    _scrollController.addListener(_updateProgress);

  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Container(
        height: size.height*1.5,
        width: size.width,
        decoration: BoxDecoration(
            gradient: primaryBackground
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            sizedBox(),
            menuIcon(),
            Expanded(
              flex: 1,
              child: DefaultTabController(
                initialIndex: 1,
                length: 3,
                child: TabBar(
                  labelColor: const Color(0xff294C73),
                  labelStyle: tabBarStyle,
                  indicatorWeight: 5,
                  dividerColor: Colors.transparent,
                  unselectedLabelStyle: tabBarStyle,
                  unselectedLabelColor: const Color(0xff294C73),
                  indicatorColor: const Color(0xffE5AA17),
                  controller: _controller,
                  tabs: [
                    Tab(text: 'Training',
                      icon: SvgPicture.asset(
                          'assets/images/training_icon.svg'),),
                    Tab(text: 'Inspection',
                      icon: SvgPicture.asset(
                        'assets/images/inspection_icon.svg',
                        color: const Color(0xff294C73),),),
                    Tab(text: 'Calibration',
                      icon: SvgPicture.asset(
                          'assets/images/calibration_icon.svg'),)
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: tabBarView(),
            )
          ],
        ),
      ),
    );
  }


  tabBarView() {
    return TabBarView(
        controller: _controller,
        children: [
          trainingView(),
          inspectionView(),
          calibrationView()
        ]);
  }

  trainingView() {
    return Container(
    );
  }

  inspectionView() {
    final size = MediaQuery
        .of(context)
        .size;
    return SingleChildScrollView(
      child: Container(
        height: size.height* 1.5,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            equipmentCountGrid(),
            weAreReadyText(),
            featuredTrainingTitle(),
            featuredTrainingList(),
            featuredListScrollPercent(),
            accrediationTitle(),
            accrediationList(),
            seeWhatCustomerTiitle(),
            customerReviewList(),
            ourClientListTitle(),
            ourClientListView()
          ],
        ),
      ),
    );
  }

  calibrationView() {
    return Container();
  }

  menuIcon() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(left: 30, top: 25),
        child: SvgPicture.asset('assets/images/hamburger.svg'),
      ),
    );
  }

  sizedBox() {
    return const SizedBox(
      height: 20,
    );
  }

  equipmentCountGrid() {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: GridView.builder(
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.5,
          ),
          itemBuilder: (BuildContext context, int index) {
            return HomePageGridCard(
              index: index,
              title: cardTitles[index], count: cardCounts[index],
            );
          },
        ),
      ),
    );
  }

  weAreReadyText() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20),
      child: RichText(
        text: TextSpan(
          text: 'Explore our\nvarious ',
          style: homePageReadyTitle,
          children: <TextSpan>[
            TextSpan(
                text: 'training',
                style: homePageInspectTitle),
          ],
        ),
      ),
    );
  }

  featuredTraining() {
    return Container(
      height: 200,

    );
  }

  featuredTrainingTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Featured Training', style: featuredStyle,),
          const CircleAvatar(
            radius: 15,
            backgroundColor: Color(0xfff7f7f9),
            child: Center(
              child: Icon(
                Icons.arrow_forward_ios_rounded, color: Color(0xff294c73),
                size: 19,),
            ),
          )
        ],
      ),
    );
  }

  featuredTrainingList() {
    return Container(
      height: 310,
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: ListView.separated(
          controller: _scrollController,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return const SizedBox(width: 10,);
          },
          itemBuilder: (context, index) {
            return TrainingCardWidget(title: featuredCardTitle[index],
              subTitle: featuredCardSubTitle[index],);
          }),
    );
  }

  accrediationTitle() {
    return Padding(
      padding: const EdgeInsets.only(
          right: 20.0, left: 20, top: 30, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Accrediation',
            style: featuredStyle,
          ),
        ],
      ),
    );
  }

  accrediationList() {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return accredCard(index);
          }),
    );
  }

  accredCard(int index) {
    return index == 0 || index == 2 ? Image.asset('assets/images/client_image_2.png'):Image.asset('assets/images/accred_image.png');
  }

  seeWhatCustomerTiitle() {
    return Padding(
      padding: const EdgeInsets.only(
          right: 20.0, left: 20, top: 20, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'See what our customer says',
            style: featuredStyle,
          ),
        ],
      ),
    );
  }


  customerReviewList() {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: 200,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          separatorBuilder: (context,index){
            return const SizedBox(width: 10,);
          },
          itemBuilder: (context, index) {
            return const CustomerReviewCard();
          }),
    );
  }

  ourClientListTitle() {
    return Padding(
      padding: const EdgeInsets.only(
          right: 20.0, left: 20, top: 30, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Our Clients',
            style: featuredStyle,
          ),
        ],
      ),
    );
  }

  ourClientListView() {
    return Container(
      padding:const EdgeInsets.only(left: 20),
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return clentCompanyCard(index);
          }),
    );
  }

  clentCompanyCard(int index) {
    return index == 0 || index == 2? Image.asset('assets/images/acred_image_2.png'): Image.asset('assets/images/client_image.png');
  }

  featuredListScrollPercent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
      child: SizedBox(
        height: 5,
        child: LinearProgressIndicator(
          value: _progress,
          backgroundColor: Colors.grey[300],
          valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow.shade700),
        ),
      ),
    );
  }
}


