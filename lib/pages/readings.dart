import 'package:flutter/material.dart';
import 'package:i_am_catholic/apptheme/app_colors.dart';
import 'package:intl/intl.dart';
//import 'package:i_am_catholic/pages/bottomnav.dart';
//import 'package:i_am_catholic/pages/fab.dart';

class Readings extends StatefulWidget {
  const Readings({super.key});

  @override
  State<Readings> createState() => _SaintsState();
}

class _SaintsState extends State<Readings> {
  String today = DateFormat('EEEE, MMM d, yyyy').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    String selectedLanguage = 'English';
    List<String> languages = [
      'English',
      'Igbo',
      'Hausa',
      'Yoruba',
      'French',
      'Pidgin',
    ];
    return LayoutBuilder(
      builder: (context, constraints) {
        return SafeArea(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BackButton(),
                        Image.asset(
                          'assets/img/catholic.jpg',
                          height: 40,
                          width: 40,
                        ),
                        Column(
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

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          // height: 50,width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: AppColors.primary),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: selectedLanguage,
                              icon: Icon(Icons.arrow_drop_down),
                              items: languages.map((lang) {
                                return DropdownMenuItem<String>(
                                  value: lang,
                                  child: Row(
                                    children: [
                                      Icon(Icons.language, size: 16),
                                      // SizedBox(width: 5),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text(
                                          lang,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
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
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              AppColors.gradientStart,
                              AppColors.primary,
                            ],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.background,
                                  ),
                                  child: Image.asset('assets/img/book.png'),
                                ),

                                //SizedBox(width: 10),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Daily Readings",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              "Nourish your soul with\nGod's word daily",
                              textAlign: TextAlign.center,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "TODAY'S READINGS",
                          style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(today, style: TextStyle()),

                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 6),
                        ],
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColors.primary,
                            child: Icon(Icons.play_arrow, color: Colors.white),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'First Reading',
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                                Text('Acts 13: 13-25'),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Icon(Icons.headphones, size: 14),
                                    SizedBox(width: 4),
                                    Text('4;30', style: TextStyle()),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: AppColors.primary,
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 6),
                        ],
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColors.primary,
                            child: Icon(Icons.play_arrow, color: Colors.white),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Responsorial Psalm',
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                                Text('Psalm 13: 13-25'),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Icon(Icons.headphones, size: 14),
                                    SizedBox(width: 4),
                                    Text('4;30', style: TextStyle()),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: AppColors.primary,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 6),
                        ],
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColors.primary,
                            child: Icon(Icons.play_arrow, color: Colors.white),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Second Reading',
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                                Text('Revelation 13: 13-25'),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Icon(Icons.headphones, size: 14),
                                    SizedBox(width: 4),
                                    Text('4;30', style: TextStyle()),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: AppColors.primary,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 6),
                        ],
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColors.primary,
                            child: Icon(Icons.play_arrow, color: Colors.white),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Gospel Reading',
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                                Text('Luke 13: 13-25'),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Icon(Icons.headphones, size: 14),
                                    SizedBox(width: 4),
                                    Text('4;30', style: TextStyle()),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: AppColors.primary,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
