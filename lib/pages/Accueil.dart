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
          padding: EdgeInsets.only(left: 15.w, right: 15.w),
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
              Container(
                color: Color(0xffffffff),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Column(
                        children: List.generate(
                          4,
                          (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownSearch<String>(
                                items: List.generate(
                              2,
                              (index) => "sdsds",
                            ).toList()),
                          ),
                        ).toList(),
                      ),
                      ElevatedButton(
                        onPressed: () => {},
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF5F4BE2),
                          elevation: 0,
                          shadowColor: Colors.transparent,
                          fixedSize: Size(200.w, 50.h),
                        ),
                        child: Text(
                          "Rechrcher",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              Column(
                children: [
                  _DefultText(),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        5,
                        (index) => Page51ListItem(),
                      ).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF3C3F41),
                      elevation: 0,
                      shadowColor: Colors.transparent,
                      fixedSize: Size(300.w, 50.h),
                    ),
                    child: Text(
                      "Voir toutes les categories",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 46.h,
              ),
              Container(
                width: 500.w,
                color: Color(0xffeeeeee),
                child: Column(
                  children: [
                    _DefultText(),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          5,
                          (index) => Padding(
                            padding: EdgeInsets.all(20.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 290.w,
                                  height: 350.h,
                                  color: Color(0xffC4C4C4),
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Text(
                                  "Model name",
                                  style: GoogleFonts.workSans(
                                    textStyle: TextStyle(
                                      fontSize: 16.sp,
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 6.h,
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () => {},
                                      style: ElevatedButton.styleFrom(
                                        primary: const Color(0xFF5F4BE2),
                                        elevation: 0,
                                        shadowColor: Colors.transparent,
                                        fixedSize: Size(140.w, 50.h),
                                      ),
                                      child: Text(
                                        "Appelez-Nous",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 9.w,
                                    ),
                                    ElevatedButton(
                                      onPressed: () => {},
                                      style: ElevatedButton.styleFrom(
                                        primary: const Color(0xFF5F4BE2),
                                        elevation: 0,
                                        shadowColor: Colors.transparent,
                                        fixedSize: Size(140.w, 50.h),
                                      ),
                                      child: Text(
                                        "Voir Plus",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 46.h,
              ),
              Column(
                children: [
                  _DefultText(),
                  ListView.separated(
                    shrinkWrap: true,
                    // clipBehavior: Clip.none,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) => _scheduleItem(),
                    separatorBuilder: (_, index) => SizedBox(height: 16.h),
                    itemCount: 3,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFFF7F1E),
                      elevation: 0,
                      shadowColor: Colors.transparent,
                      fixedSize: Size(220.w, 40.h),
                    ),
                    child: Text(
                      "Partager votre avis",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _scheduleItem() => GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 23.w),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF4F4F4),
                // color: Colors.red,
                borderRadius: BorderRadius.circular(8.r),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 2),
                    blurRadius: 8,
                    color: Colors.black.withOpacity(.25),
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 14.w, top: 15.h, bottom: 15.h),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30.w,
                      backgroundColor: const Color(0xFFC4C4C4),
                    ),
                    SizedBox(width: 15.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Donna Yancey',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w800,
                            color: const Color(0xFFFF7F1E),
                          ),
                        ),
                        Text(
                          'NMBRE DE VISITE',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF262626),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 31.w),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: SvgPicture.asset(
                Assets.PG11_01,
                height: 21.37.r,
                width: 21.37.r,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
Widget _DefultText() => Container(
  margin: EdgeInsets.symmetric(horizontal: 23.w),
  child: Column(children: [
    SizedBox(
      height: 10.h,
    ),
    Text("TEMOIGNAGES"),
    Text("Nos artisans et professionnels parlent de notre plateforme",textAlign:TextAlign.center,),
    Icon(Icons.vpn_key_outlined, color: Color(0xFFFF7F1E)),
    SizedBox(
      height: 10.h,
    ),
  ],)
);
