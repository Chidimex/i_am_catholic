import 'package:flutter/material.dart';
import 'package:i_am_catholic/apptheme/app_colors.dart';
//import 'package:i_am_catholic/pages/bottomnav.dart';
//import 'package:i_am_catholic/pages/fab.dart';

class Saints extends StatefulWidget {
  const Saints({super.key});

  @override
  State<Saints> createState() => _SaintsState();
}

class _SaintsState extends State<Saints> {
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
    return
    // backgroundColor: AppColors.background,
    LayoutBuilder(
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
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            AppColors.gradientStart,
                            AppColors.primary,
                          ],
                        ),
                       image: DecorationImage(image: AssetImage(
                          'assets/img/saintbg.jpg'
                        ),
                        fit: BoxFit.cover,
                        opacity: 0.10,
                        )
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
                                child: Image.asset(
                                  'assets/img/st.therese.png',
                                ),
                              ),
                    
                              //SizedBox(width: 10),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Lives of Saints",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            "Discover the inspiring lives\nof holy men and women",
                            textAlign: TextAlign.start,
                            maxLines: 2,
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "POPULAR SAINTS",
                          style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    // Text(today,style: TextStyle(),),
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
                            maxRadius: 30,
                            backgroundColor: AppColors.primary,
                            backgroundImage: AssetImage(
                              "assets/img/st.therese.png",
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'St. Augustine of Hippo',
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                                Text('Bishop & Doctor of the Church'),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Icon(Icons.headphones, size: 14),
                                    SizedBox(width: 4),
                                    Text('8:00', style: TextStyle()),
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
                            maxRadius: 30,
                            backgroundColor: AppColors.primary,
                            backgroundImage: AssetImage(
                              "assets/img/st.therese.png",
                            ),
                            child: Icon(Icons.play_arrow, color: Colors.white),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'St. Theresa of Avila',
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                                Text('Doctor of the Church'),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Icon(Icons.headphones, size: 14),
                                    SizedBox(width: 4),
                                    Text('8:00', style: TextStyle()),
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
                            maxRadius: 30,
                            backgroundColor: AppColors.primary,
                            backgroundImage: AssetImage(
                              "assets/img/st.therese.png",
                            ),
                            child: Icon(Icons.play_arrow, color: Colors.white),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'St.Patrick of Ireland',
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                                Text('Patron saint of Ireland'),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Icon(Icons.headphones, size: 14),
                                    SizedBox(width: 4),
                                    Text('8:00', style: TextStyle()),
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
                            maxRadius: 30,
                            backgroundColor: AppColors.primary,
                            backgroundImage: AssetImage(
                              "assets/img/st.therese.png",
                            ),
                            child: Icon(Icons.play_arrow, color: Colors.white),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'St. Francis of Assisi',
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                                Text('Patron saint'),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Icon(Icons.headphones, size: 14),
                                    SizedBox(width: 4),
                                    Text('8:00', style: TextStyle()),
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
