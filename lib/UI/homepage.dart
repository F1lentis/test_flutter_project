import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_project/UI/styles/colors.dart';
import 'package:test_flutter_project/functions/app.dart';
import 'package:test_flutter_project/generated/locale_keys.g.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    final mainTheme = Theme.of(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LangButton(butFnx: () {
                    if (context.locale == const Locale('ru')) {
                      context.setLocale(const Locale('en'));
                    } else {
                      context.setLocale(const Locale('ru'));
                    }
                  }),
                  Text("#Name", style: mainTheme.textTheme.displayLarge),
                  ElevatedButton(onPressed: (){}, child: Text('Logout')),
                ],
              ),
              Center(child: Text("#Level", style: mainTheme.textTheme.titleLarge)),
              SizedBox(height: 25,),
              Text("Git: #https://github.com/F1lentis", style: mainTheme.textTheme.headlineSmall),
              SizedBox(height: 25,),
              Row(
                children: [
                  Expanded(
                    child:
                    Container(
                    decoration: BoxDecoration(color: Colors.cyan.shade200, borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(LocaleKeys.Programming_hours.tr(), style: mainTheme.textTheme.headlineSmall),
                          SizedBox(height: 25,),
                          Text('#Hours', style: mainTheme.textTheme.displayLarge),
                          SizedBox(height: 25,),
                          Text(LocaleKeys.More_info.tr(), style: mainTheme.textTheme.headlineSmall),
                        ],
                      ),
                    ),),)
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25, bottom: 25),
                      child: ElevatedButton(
                        onPressed: (){}, child: Text(LocaleKeys.Create_crew_button.tr(), style: mainTheme.textTheme.labelSmall),),
                    )),
                ],
              ),
              Center(child: Text(LocaleKeys.My_Top_programming_languages.tr(), style: mainTheme.textTheme.titleLarge)),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 25, bottom: 25, left: 40, right: 40),
                  child: Wrap(
                    spacing: 10.0, // gap between adjacent chips
                    runSpacing: 10.0, // gap between lines
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset('assets/images/python_logo_small.png'),
                              Text('#Lang1 & #Image1'),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset('assets/images/flutter_logo_small.jpg'),
                              Text('#Lang2 & #Image2'),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.accessible_forward_outlined, size: 180),
                              Text('#Lang3 & #Image3'),
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Text(LocaleKeys.My_projects.tr(), style: mainTheme.textTheme.titleLarge),
                  SizedBox(height: 15),
                ],
              ),

              Container(
                decoration: BoxDecoration(color: Colors.blueGrey.shade100),
                child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.account_tree, color: mainGrey, size: 30),
                        Text(LocaleKeys.All_projects.tr(), style: mainTheme.textTheme.headlineSmall),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.account_circle_rounded, size: 30),
                        Text(LocaleKeys.Profile.tr(), style: mainTheme.textTheme.titleLarge),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.contacts, color: mainGrey, size: 30),
                        Text(LocaleKeys.Contacts.tr(), style: mainTheme.textTheme.headlineSmall),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.chat, color: mainGrey, size: 30),
                        Text(LocaleKeys.Chat.tr(), style: mainTheme.textTheme.headlineSmall),
                      ],
                    ),
                  ],
                ),
              ),),

            ],
          ),
        ),
      ));
  }
}