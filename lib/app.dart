import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/TextFieldWidget.dart';
import 'package:flutter_application_1/widget/TextWidget.dart';

import 'package:flutter_application_1/widget/buttonWidget.dart';
import 'package:flutter_application_1/widget/buttonWidget/Example.dart';
import 'package:flutter_application_1/widget/buttonWidget/OutlinedButton.dart';
import 'package:flutter_application_1/widget/buttonWidget/TelegramLoginPage.dart';
import 'package:flutter_application_1/widget/buttonWidget/buttonExample.dart';
import 'package:flutter_application_1/widget/buttonWidget/iconButton.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hisam developer",
      home: Scaffold(
        body: //Buttonwidget(),
            //Outlinedbutton()
            // Iconbutton(),
            //ButtonExample(),
        //Telegramloginpage(),
        //Textwidget()
       Textfieldwidget()
     //  TelegramUi()
        
      ),
    );
  }
}
