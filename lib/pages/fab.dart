import 'package:flutter/material.dart';
import 'package:i_am_catholic/apptheme/app_colors.dart';

class ChatButton extends StatefulWidget {
  const ChatButton({super.key});

  @override
  State<ChatButton> createState() => _ChatButtonState();
}

class _ChatButtonState extends State<ChatButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [  AppColors.primary, AppColors.secondary],
        ),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 8)
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.add_box, color: Colors.white),
          SizedBox(width: 8),
          Text(
            "Chat with a Priest",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}