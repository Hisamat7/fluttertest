import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Exercise/RunningUi.dart';
import 'package:flutter_application_1/FireBase/todoHomeFb/ScreenFb/HomePageFireBase.dart';
import 'package:flutter_application_1/FireBase/todoHomeFb/ScreenFb/LoginScreenFirebase.dart';
import 'package:flutter_application_1/FireBase/todoHomeFb/ScreenFb/RegisterScreenFirebase.dart';
import 'package:flutter_application_1/FireBase/todoHomeFb/Firebase_auth.dart';
import 'package:flutter_application_1/Hive_Exx/model/TodosModel.dart';
import 'package:flutter_application_1/Hive_Exx/screen/TodosHome.dart';
import 'package:flutter_application_1/Hive_Exx/service/TodoService.dart';
import 'package:flutter_application_1/HotelUi/HotelFirst.dart';
import 'package:flutter_application_1/Named_routing/Running_Home.dart';
import 'package:flutter_application_1/ScaffoldWidget.dart';
import 'package:flutter_application_1/Sharedprefernce/RegisterPageSHp.dart';
import 'package:flutter_application_1/Sharedprefernce/SharedPerfernceTheme.dart';
import 'package:flutter_application_1/Sharedprefernce/SimpleSharedprefernceEx.dart';
import 'package:flutter_application_1/Sharedprefernce/loginpageSHp.dart';
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
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/hive_db/model/todo_model.dart';
import 'package:flutter_application_1/hive_db/screens/TodoHomeHive.dart';
import 'package:flutter_application_1/hive_db/service/TodoService.dart';
import 'package:flutter_application_1/intermediate_flutter/Module1/Runfile.dart';
import 'package:flutter_application_1/study.dart';
import 'package:flutter_application_1/widget/ScafoldEx.dart';
import 'package:flutter_application_1/widget/buttonWidget/WidgetRefactoring/WidgetRefactoring.dart';
import 'package:flutter_application_1/widget/h&mEx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

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

// void main() {
//   runApp(ScreenUtilInit(
//     designSize: Size(384, 805),
//     minTextAdapt: true,
//     builder: (context, child) {
//       return MaterialApp(
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(
//             fontFamily: 'Poppins',
//           ),
//           home: Sharedprefernce());
//     },
//   ));
// }

// void main() {
//   runApp(ScreenUtilInit(
//     designSize: Size(384, 805),
//     minTextAdapt: true,
//     builder: (context, child) {
//       return MaterialApp(
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(
//             useMaterial3: true,
//             fontFamily: 'Poppins',
//           ),
//           home:Todohomehive() );
//     },
//   ));
// }

// void main() async {
//   await Hive.initFlutter();
//   Hive.registerAdapter(TodoAdapter());
//   await Todoservice().openBox();
//   runApp(ScreenUtilInit(
//     designSize: Size(384, 805),
//     minTextAdapt: true,
//     builder: (context, child) {
//       return MaterialApp(
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(
//             useMaterial3: true,
//             fontFamily: 'Poppins',
//           ),
//           home: Todohomehive());
//     },
//   ));
// }

// void main() async {

//   await Hive.initFlutter();
//   Hive.registerAdapter(TodoModelAdapter());
//   await TodoService().openbox();
//   runApp(ScreenUtilInit(
//     designSize: Size(384, 805),
//     minTextAdapt: true,
//     builder: (context, child) {
//       return MaterialApp(
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(
//             primarySwatch: Colors.yellow,
//             fontFamily: 'Poppins',
//           ),
//           home: TodosHome());
//     },
//   ));
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ScreenUtilInit(
    designSize: Size(384, 805),
    minTextAdapt: true,
    builder: (context, child) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            
            fontFamily: 'Poppins',
          ),
          home: LoginScreenFirebase ());
    },
  ));
}
