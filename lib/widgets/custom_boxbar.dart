import 'package:flutter/material.dart';
import '../shared/theme.dart';

class CustomBoxbar extends StatelessWidget {
  final String imgURL;
  final String title;

  const CustomBoxbar({
    super.key,
    required this.imgURL,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imgURL,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: KDescTextStyle.copyWith(
              fontSize: 12,
              fontWeight: regular,
            ),
          ),
        ],
      ),
    );
  }
}
