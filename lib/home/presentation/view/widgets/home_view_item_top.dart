import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shiftswift/core/styles.dart';

import '../../../../core/app_colors.dart';
import 'title_widget.dart';
import 'trending_now_item.dart';

class HomeViewItemTop extends StatelessWidget {
  const HomeViewItemTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TrendingNowItem(),
            TitleWidget(text: 'Arabic call center'),
            Text(
              'Rog Web',
              style: GoogleFonts.lato(textStyle: AppStyles.regular14),
            ),
          ],
        ),
        Container(
          width: 74,
          height: 64,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 0.5, color: AppColors.borderColor),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset('asstes/im.png'),
          ),
        ),
      ],
    );
  }
}
