import 'package:flutter/material.dart';
import 'package:i_am_catholic/apptheme/app_colors.dart';
import 'package:i_am_catholic/pages/bottomnav.dart';
import 'package:i_am_catholic/pages/fab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/img/catholic.jpg', height: 40, width: 40),
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
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    // height: 50,width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: AppColors.primary),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.language, size: 16),
                        SizedBox(width: 5),
                        Text(
                          'English',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //1st container
                  Container(
                    height: 200,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.background,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset(
                            "assets/img/bible.png",
                            height: 80,
                          ),
                        ),
                        Text(
                          'Catechism',
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Learn the faith',
                          style: TextStyle(
                            fontSize: 10,
                            color: AppColors.textLight,
                          ),
                        ),
                        //SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: AppColors.primary),
                            ),
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              color: AppColors.primary,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //2nd container
                  Container(
                    height: 200,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.background,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            "assets/img/prayer.png",
                            height: 80,
                          ),
                        ),
                        Text(
                          'Catholic\nPrayer',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Pray and grow',
                          style: TextStyle(
                            fontSize: 10,
                            color: AppColors.textLight,
                          ),
                        ),
                        // SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: AppColors.primary),
                            ),
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              color: AppColors.primary,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //3rd container
                  Container(
                    height: 200,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.background,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            "assets/img/bible.png",
                            height: 80,
                          ),
                        ),
                        Text(
                          'Doctrinal\nTeaching',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Truth and doctrine',
                          style: TextStyle(
                            fontSize: 10,
                            color: AppColors.textLight,
                          ),
                        ),
                        //SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: AppColors.primary),
                            ),
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              color: AppColors.primary,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              //2nd Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //1st container
                  Container(
                    height: 200,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.background,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            "assets/img/music.png",
                            height: 80,
                          ),
                        ),
                        Text(
                          'Liturgical\nSongs',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Sing your faith',
                          style: TextStyle(
                            fontSize: 10,
                            color: AppColors.textLight,
                          ),
                        ),
                        //SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: AppColors.primary),
                            ),
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              color: AppColors.primary,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //2nd container
                  Container(
                    height: 200,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.background,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            "assets/img/rosary.png",
                            height: 80,
                          ),
                        ),
                        Text(
                          'Rosary',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Pray the Rosary',
                          style: TextStyle(
                            fontSize: 10,
                            color: AppColors.textLight,
                          ),
                        ),
                        // SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: AppColors.primary),
                            ),
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              color: AppColors.primary,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //3rd container
                  Container(
                    height: 200,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.background,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            "assets/img/cross.png",
                            height: 80,
                          ),
                        ),
                        Text(
                          'Stations of\nthe cross',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Reflect and pray',
                          style: TextStyle(
                            fontSize: 10,
                            color: AppColors.textLight,
                          ),
                        ),
                        //SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: AppColors.primary),
                            ),
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              color: AppColors.primary,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: ChatButton(),
      bottomNavigationBar: BottomNav(),
    );
  }
}
