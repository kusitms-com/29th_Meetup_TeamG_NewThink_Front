import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meetup/view/bottomNavigationBar.dart';

import '../../design/style/ColorStyles.dart';
import '../../design/style/FontStyles.dart';
import '../../routes/get_pages.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.1,
              ),
              Text(
                '경제 금융 지식',
                style: FontStyles.Title2_m.copyWith(color: AppColors.black),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '두둑',
                      style: FontStyles.Title2_b.copyWith(color: AppColors.v5),
                    ),
                    TextSpan(
                      text: '과 함께 ',
                      style:
                          FontStyles.Title2_b.copyWith(color: AppColors.black),
                    ),
                    TextSpan(
                      text: '시작하세요!',
                      style:
                          FontStyles.Title2_m.copyWith(color: AppColors.black),
                    ),
                  ],
                ),
              ),
              Spacer(),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    //임시적
                    Get.offAll(BottomNavigationView());
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: AppColors.v5,
                  ),
                  child: Text(
                    '시작하기',
                    style: FontStyles.Bn1_b.copyWith(color: AppColors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
