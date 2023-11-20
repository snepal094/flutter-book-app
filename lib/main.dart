import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterpersonal/constants/app_colors.dart';
import 'package:flutterpersonal/view/home_page.dart';
import 'package:get/get.dart';





void main (){


  runApp(ProviderScope(child: Home()));

}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return ScreenUtilInit(
      designSize: Size(w, h),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (c, s) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(
            useMaterial3: true
        ).copyWith(
          scaffoldBackgroundColor: AppColors.appMainColor,
          appBarTheme: AppBarTheme(
              backgroundColor:  AppColors.appMainColor
          ),
        ),
        home: HomePage(),
      ),
    );
  }
}
























// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutterpersonal/view/home_page.dart';
// import 'package:get/get.dart';
//
// void main(){
//   runApp(ProviderScope(child: Home()));
// }
//
// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.light().copyWith(
//         scaffoldBackgroundColor: Color(0xFF94cec6),
//       ),
//       home: HomePage(),
//     );
//   }
// }