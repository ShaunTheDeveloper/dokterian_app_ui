import 'package:carousel_slider/carousel_slider.dart';
import 'package:dokterian/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context)!;
    return Scaffold(
      backgroundColor: Color(0xffFEFEFE),
      body: SafeArea(
        child: Column(
          children: [
            CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    padding: EdgeInsets.only(
                        left: 16, right: 16, top: 16, bottom: 16),
                    margin:
                        EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
                    decoration: BoxDecoration(
                      color: 0 == index
                          ? theme.colorScheme.primaryContainer
                          : theme.colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text(tapSchedule[index],
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .apply(color: theme.primaryColor)),
                    ),
                  );
                },
                options: CarouselOptions(
                    padEnds: true,
                    scrollPhysics: BouncingScrollPhysics(),
                    disableCenter: false,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    viewportFraction: 0.65,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    height: 80)),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 32, right: 32),
                  child: Column(
                    children: [
                      UpcomingScheduleDoctor(
                          name: 'Dr.Joseph Brostito',
                          expert: 'Dental Specialist',
                          imagePath: Assets.img.profile1.path,
                          day: 'Sunday, 12 June',
                          hour: '11:00 - 12:00 AM',
                          onDetail: () {}),
                      SizedBox(
                        height: 30,
                      ),
                      UpcomingScheduleDoctor(
                          name: 'Dr. Bessie Coleman',
                          expert: 'Dental Specialist',
                          imagePath: Assets.img.profile2.path,
                          day: 'Sunday, 12 June',
                          hour: '11:00 - 12:00 AM',
                          onDetail: () {}),
                      SizedBox(
                        height: 30,
                      ),
                      UpcomingScheduleDoctor(
                          name: 'Dr. Babe Didrikson',
                          expert: 'Dental Specialist',
                          imagePath: Assets.img.profile2.path,
                          day: 'Sunday, 12 June',
                          hour: '11:00 - 12:00 AM',
                          onDetail: () {})
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class UpcomingScheduleDoctor extends StatelessWidget {
  String name;
  String expert;
  String imagePath;
  String day;
  String hour;
  Function() onDetail;

  UpcomingScheduleDoctor(
      {required this.name,
      required this.expert,
      required this.imagePath,
      required this.day,
      required this.hour,
      required this.onDetail});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context)!;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 5)
        ],
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                  backgroundColor: Colors.white, child: Image.asset(imagePath)),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dr. Joseph Brostito'),
                    Text('Dental Spexialist')
                  ],
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 12, 0, 12), child: Divider()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    Assets.img.calendar.path,
                    width: 16,
                    height: 16,
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    day,
                    style: TextStyle(
                        color: theme.colorScheme.onSecondaryContainer),
                  )
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    Assets.img.clock.path,
                    width: 16,
                    height: 16,
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    hour,
                    style: TextStyle(
                        color: theme.colorScheme.onSecondaryContainer),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(top: 12, bottom: 12, left: 32, right: 32),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xff63B4FF).withOpacity(0.1)),
            child: Center(
              child: Text(
                'Detail',
                style: theme.textTheme.titleMedium!
                    .apply(color: theme.primaryColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}

var tapSchedule = [
  'Canceled Schedule',
  'Upcoming schedule',
  'Completed schedule'
];
