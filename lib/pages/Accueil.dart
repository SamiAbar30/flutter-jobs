import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pfe_flutter/src/navigation/navigation_service.dart';
import 'package:pfe_flutter/src/res/colors.dart';
import 'package:pfe_flutter/widgets/page_51_list_item.dart';
import 'package:pfe_flutter/src/res/assets.dart';
import 'package:dropdown_search/dropdown_search.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: GestureDetector(
                onTap: () {
                  GetIt.I.get<NavigationService>().back();
                },
                child: SvgPicture.asset(
                  "assets/svg/51/menu_open.svg",
                  height: 24.r,
                  width: 24.r,
                  fit: BoxFit.fill,
                ),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: Color(0xFFF4F4F4),
        title: SizedBox(
          height: 25.h,
          child: Image.asset(Assets.Logo),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            left: 24.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35.h,
              ),
              Text(
                "Week in Singapore",
                style: GoogleFonts.workSans(
                  textStyle: TextStyle(
                    fontSize: 24.sp,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                width: 10.h,
              ),
              Text(
                "2022 fashion show in Singapore",
                style: GoogleFonts.workSans(
                  textStyle: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Text(
                "Explore",
                style: GoogleFonts.workSans(
                  textStyle: TextStyle(
                    fontSize: 24.sp,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    2,
                    (index) => Padding(
                      padding: EdgeInsets.only(right: 48.w),
                      child: Text("rtr")
                    ),
                  ).toList(),
                ),
              ),
              DropdownSearch<String>(
                  items: List.generate(2,
                        (index) => "sdsds",
                  ).toList()),
              SizedBox(
                height: 23.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    12,
                    (index) => Page51ListItem(),
                  ).toList(),
                ),
              ),
              SizedBox(
                height: 46.h,
              ),
              Container(
                height: 190.h,
                color: Color(0xffC4C4C4),
                margin: EdgeInsets.only(
                  right: 24.w,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
