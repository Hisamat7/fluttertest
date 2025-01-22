import 'package:flutter/material.dart';
import 'package:flutter_application_1/Exercise/RunningUi.dart';
import 'package:flutter_application_1/HotelUi/HotelFirst.dart';
import 'package:flutter_application_1/Named_routing/Running_Home.dart';
import 'package:flutter_application_1/ScaffoldWidget.dart';
import 'package:flutter_application_1/StateFulWidget.dart/PasswordEyeState.dart';
import 'package:flutter_application_1/StateFulWidget.dart/StatefulWidget.dart';
import 'package:flutter_application_1/WedHeart/DetailShowMainWidget.dart';
import 'package:flutter_application_1/WedHeart/DetailedPage.dart';
import 'package:flutter_application_1/WedHeart/DetailedPageWidget.dart';
import 'package:flutter_application_1/WedHeart/FirstScreen.dart';
import 'package:flutter_application_1/WedHeart/SearchHome.dart';
import 'package:flutter_application_1/WedHeart/VenueHome.dart';
import 'package:flutter_application_1/anonymous_routing/first.dart';
import 'package:flutter_application_1/eg.dart';
import 'package:flutter_application_1/example.dart';
import 'package:flutter_application_1/intermediate_flutter/Module1/Runfile.dart';
import 'package:flutter_application_1/study.dart';
import 'package:flutter_application_1/widget/ScafoldEx.dart';
import 'package:flutter_application_1/widget/buttonWidget/WidgetRefactoring/WidgetRefactoring.dart';
import 'package:flutter_application_1/widget/h&mEx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import './app.dart';


// void main() {
//   runApp(
//     // MyApp(),
//    // Scaffoldwidget(),
//   // ScafoldEx(),
//   //HMex(),
//   //Widgetrefactoring()
//  //RunningUi()
//   //Runfile()
//   Eg(),
//   );
// }

// void main() {
//   runApp(RunningHome());
// }

void main() {
  runApp(ScreenUtilInit(
    designSize: Size(384, 805),
    minTextAdapt: true,
    builder: (context, child) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Poppins',
          ),
          home: Detailedpagewidget());
    },
  ));
}
