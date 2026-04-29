import 'package:flutter/material.dart';
import 'package:i_am_catholic/apptheme/app_colors.dart';

class CardBuild extends StatelessWidget {
  const CardBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
       childAspectRatio: 0.7,
      children: const [
        SectionCard(
          image: "assets/img/bible.png",
          title: "Catechism",
          subtitle: "Learn the faith",
        ),
        SectionCard(
          image: "assets/img/prayer.png",
          title: "Catholic Prayer",
          subtitle: "Pray and grow",
        ),
        SectionCard(
          image: "assets/img/bible.png",
          title: "Doctrinal Teaching",
          subtitle: "Truth and doctrine",
        ),
        SectionCard(
          image: "assets/img/music.png",
          title: "Liturgical Songs",
          subtitle: "Sing your faith",
        ),
        SectionCard(
          image: "assets/img/rosary.png",
          title: "Rosary",
          subtitle: "Pray the Rosary",
        ),
        SectionCard(
          image: "assets/img/cross.png",
          title: "Stations of the cross",
          subtitle: "Reflect and pray",
        ),
      ],
    );
  }
}
class SectionCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const SectionCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.background,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(image, height: 50),
          const SizedBox(height: 8),
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(fontSize: 10, color: AppColors.textLight),
          ),
          const SizedBox(height: 10),
          Icon(Icons.arrow_forward_rounded,
              color: AppColors.primary, size: 18),
        ],
      ),
    );
  }
}