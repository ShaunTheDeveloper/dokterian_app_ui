import 'package:dokterian/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var colorSceme = Theme.of(context).colorScheme;
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello",
                          style: textTheme.labelSmall!
                              .apply(color: Color(0xFF8696BB)),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Hi James",
                          style: textTheme.labelMedium,
                        ),
                      ],
                    ),
                    CircleAvatar(
                        child: Assets.img.adamak.image(width: 64, height: 64))
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: colorSceme.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Assets.img.profile1
                                  .image(width: 56, height: 56)),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dr.Imarn Syahir',
                                  style: textTheme.labelSmall!.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                Text(
                                  'General Doctor',
                                  style: textTheme.labelSmall!.copyWith(
                                      fontSize: 14, color: Color(0xffcae0ff)),
                                )
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          )
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                          child: Divider()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                Assets.img.calendar.path,
                                width: 16,
                                height: 16,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Sunday, 12 june",
                                style: textTheme.titleSmall!
                                    .apply(color: Colors.white),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                Assets.img.clock.path,
                                width: 16,
                                height: 16,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text("11:00 - 12:00 AM",
                                  style: textTheme.titleSmall!
                                      .apply(color: Colors.white))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: colorSceme.secondary,
                      borderRadius: BorderRadius.circular(12)),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search_sharp),
                        labelText: 'Search doctor or health issue'),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(24),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: colorSceme.secondary),
                          child: SvgPicture.asset(
                            Assets.img.sun.path,
                            width: 24,
                            height: 24,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text('Covid 19')
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(24),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: colorSceme.secondary),
                          child: SvgPicture.asset(
                            Assets.img.profileAdd.path,
                            width: 24,
                            height: 24,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text('Doctor')
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(24),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: colorSceme.secondary),
                          child: SvgPicture.asset(
                            Assets.img.link.path,
                            width: 24,
                            height: 24,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text('Medicine')
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(24),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: colorSceme.secondary),
                          child: SvgPicture.asset(
                            Assets.img.hospital.path,
                            width: 24,
                            height: 24,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text('Hospital')
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Text('Near Doctor'),
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: colorSceme.surface,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Assets.img.profile2
                                  .image(width: 56, height: 56)),
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
                          Row(
                            children: [
                              SvgPicture.asset(Assets.img.location.path),
                              SizedBox(
                                width: 8,
                              ),
                              Text('1.2KM')
                            ],
                          )
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                          child: Divider()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                Assets.img.clock.path,
                                width: 16,
                                height: 16,
                                color: Colors.deepOrange,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "4.8 (120 Reviews)",
                                style: TextStyle(color: Colors.deepOrange),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                Assets.img.clock.path,
                                width: 16,
                                height: 16,
                                color: colorSceme.primary,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text("Open at 17:00")
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
