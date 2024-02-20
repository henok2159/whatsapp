import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/screens/mobile_layout_screen.dart';
import 'package:whatsapp/screens/web_layout_screen.dart';
import 'package:whatsapp/utils/responsive_layout.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    print(width);
    double height = MediaQuery.of(context).size.height;
    print(height);
    return ScreenUtilInit(
      designSize: const Size(384, 838.4),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme

          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: backgroundColor,
            appBarTheme: const AppBarTheme(
              color: appBarColor,
            ),
            textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme.copyWith(
                    displayLarge: TextStyle(color: textColor),
                    displayMedium: TextStyle(color: textColor),
                    displaySmall: TextStyle(color: textColor),
                    headlineLarge: TextStyle(color: textColor),
                    headlineMedium: TextStyle(color: textColor),
                    headlineSmall: TextStyle(color: textColor),
                    titleLarge: TextStyle(color: textColor),
                    titleMedium: TextStyle(color: textColor),
                    titleSmall: TextStyle(color: textColor),
                    bodyLarge: TextStyle(color: textColor),
                    bodyMedium: TextStyle(color: textColor),
                    bodySmall: TextStyle(color: textColor),
                    labelLarge: TextStyle(color: textColor),
                    labelMedium: TextStyle(color: textColor),
                    labelSmall: TextStyle(color: textColor),
                  ),
            ),
          ),
          home: child,
        );
      },
      child: const MobileLayoutScreen(),
    );
  }
}
