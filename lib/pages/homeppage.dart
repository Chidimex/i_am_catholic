import 'package:flutter/material.dart';
import 'package:i_am_catholic/apptheme/app_colors.dart';
import 'package:i_am_catholic/pages/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedLanguage = 'English';
  List<String> languages = [
    'English',
    'Igbo',
    'Hausa',
    'Yoruba',
    'French',
    'Pidgin',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: AppColors.background,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/img/catholic.jpg',
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'I AM A CATHOLIC',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Audio faith companion',
                            style: TextStyle(color: AppColors.primary),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),

                    Container(
                      width: 110,
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      // height: 50,width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: AppColors.primary),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          isExpanded: false,
                          value: selectedLanguage,
                          isDense: true,
                          icon: Icon(Icons.arrow_drop_down),
                          items: languages.map((lang) {
                            return DropdownMenuItem<String>(
                              value: lang,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.language, size: 16),
                                  SizedBox(width: 4),
                                  Text(
                                    lang,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                          onChanged: (value) {
                            if (value != null) {
                              setState(() {
                                selectedLanguage = value;
                              });
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColors.gradientEnd, AppColors.gradientStart],
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.calendar_month, color: AppColors.primary),
                          SizedBox(width: 10),
                          Text(
                            "Today's Scripture",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        '"I am the way, the truth, and the life..."',
                        style: TextStyle(fontSize: 18, height: 1.4),
                      ),
                      SizedBox(height: 10),

                      Text(
                        "— John 14:6",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ),

                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.headphones, color: AppColors.primary),
                          SizedBox(width: 6),
                          Text(
                            "Listen Now →",
                            style: TextStyle(color: AppColors.textDark),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(padding: EdgeInsets.all(10)),
                    Text(
                      'SELECT A SECTION',
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    // Spacer(),
                    Text(
                      'View all >',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              //card
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: CardBuild(),
              ),
            ],
          ),
        ),
      ),
    );
    //floatingActionButton: ChatButton(),
    // bottomNavigationBar: BottomNav(),
  }
}
