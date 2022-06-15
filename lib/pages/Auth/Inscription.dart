import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pfe_flutter/src/res/assets.dart';
import 'package:pfe_flutter/src/navigation/navigation_service.dart';
import 'package:get_it/get_it.dart';

class Inscription extends StatefulWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(Assets.PG14_MASTERCARD),
                    Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.lightBlue,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.home),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 62.h),
                Text(
                  'Formulaire Inscription',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF262626),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(right: 37.w, top: 8.h, bottom: 23.h),
                  child: Text(
                    'For custom Bootstrap form validation messages, you’ll need to add the ',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF262626),
                      height: 1.28,
                    ),
                  ),
                ),
                _textField(
                  hintText: 'Nom de famille',
                  prefixIcon: const Icon(Icons.people, color: Color(0xFFA8A8A8)),
                ),
                SizedBox(height: 14.h),_textField(
                  hintText: "Nom d'utilisateur",
                  prefixIcon: const Icon(Icons.person, color: Color(0xFFA8A8A8)),
                ),
                SizedBox(height: 14.h),
                _textField(
                  hintText: 'numéro de téléphone',
                  prefixIcon: const Icon(Icons.phone_android_rounded, color: Color(0xFFA8A8A8)),
                ),
                SizedBox(height: 14.h),
                _textField(
                  hintText: 'Adresse email',
                  prefixIcon: const Icon(Icons.email, color: Color(0xFFA8A8A8)),
                ),
                SizedBox(height: 14.h),
                _textField(
                  hintText: 'Mot de Passe',
                  prefixIcon:
                      const Icon(Icons.vpn_key, color: Color(0xFFA8A8A8)),
                    obscureText:true
                ),
                SizedBox(height: 14.h),
                _textField(
                  hintText: 'Confirmer le Mot de Passe',
                  prefixIcon:
                      const Icon(Icons.vpn_key_outlined, color: Color(0xFFA8A8A8)),
                    obscureText:true
                ),
                SizedBox(height: 14.h),
                _textField(
                  hintText: "Nom d'entreprise",
                  prefixIcon: const Icon(Icons.apartment, color: Color(0xFFA8A8A8)),
                ),
                SizedBox(height: 14.h),
                _textField(
                  hintText: 'numéro de téléphone 2',
                  prefixIcon: const Icon(Icons.phone_android_rounded, color: Color(0xFFA8A8A8)),
                ),
                SizedBox(height: 14.h),
                _textField(
                  hintText: 'Fix',
                  prefixIcon: const Icon(Icons.phone, color: Color(0xFFA8A8A8)),
                ),
                SizedBox(height: 14.h),
                _textField(
                  hintText: 'SIRET',
                  prefixIcon: const Icon(Icons.code, color: Color(0xFFA8A8A8)),
                ),
                SizedBox(height: 14.h),
                _textField(
                  hintText: 'Code NAF',
                  prefixIcon: const Icon(Icons.code, color: Color(0xFFA8A8A8)),
                ),
                SizedBox(height: 14.h),
                _textField(
                  hintText: 'Libéllé',
                  prefixIcon: const Icon(Icons.abc, color: Color(0xFFA8A8A8)),
                ),
                SizedBox(height: 65.h),
                _button(text: 'Create account'),
                _button(text: 'Login', isTransparent: true),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _button({required String text, bool isTransparent = false}) =>
      ElevatedButton(
        onPressed: () {
          GetIt.I.get<NavigationService>().back();
        },
        style: ElevatedButton.styleFrom(
          primary: isTransparent ? Colors.transparent : const Color(0xFF0043CE),
          elevation: 0,
          shadowColor: Colors.transparent,
          fixedSize: Size(342.w, 64.h),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: isTransparent
                ? const Color(0xFF0043CE)
                : const Color(0xFFF4F4F4),
          ),
        ),
      );

  Widget _textField({required String hintText, required Widget prefixIcon,bool obscureText=false}) =>
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xFFA8A8A8),
          ),
          prefixIcon: prefixIcon,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 17.w, vertical: 22.h),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFD0D0D0))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFD0D0D0))),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFD0D0D0))),
        ),
      );
}
