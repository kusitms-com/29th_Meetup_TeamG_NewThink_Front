import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meetup/viewModel/user_viewModel.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../design/style/ColorStyles.dart';
import '../../design/style/FontStyles.dart';
import '../../design/widgets/progress_bar.dart';
import '../../routes/get_pages.dart';

class InterestScreen extends GetView<UserViewModel> {
  const InterestScreen({super.key});

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
              height: Get.height * 0.05,
            ),
            //진행률 바
            MyProgressBar(percent: controller.getPercentProgress.value),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Text(
              '3/4',
              style: FontStyles.Headline1_m.copyWith(color: AppColors.y6),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '00',
                    style: FontStyles.Title2_b.copyWith(color: AppColors.v5),
                  ),
                  TextSpan(
                    text: '님의',
                    style: FontStyles.Title2_m.copyWith(color: AppColors.black),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '관심사',
                    style: FontStyles.Title2_m.copyWith(color: AppColors.black),
                  ),
                  TextSpan(
                    text: '를 알려주세요',
                    style: FontStyles.Title2_m.copyWith(color: AppColors.black),
                  )
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Text(
              '관심사와 관련된 뉴스레터를 받아보세요!',
              style: FontStyles.Ln1_m.copyWith(color: AppColors.g4),
            ),
            SizedBox(
              height: Get.height * 0.1,
            ),
            //1열
            Row(
              children: [
                SizedBox(
                  width: Get.width * 0.03,
                ),
                //버튼 들어가기
                InkWell(
                  onTap: () {
                    //
                  },
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/icons/interest_unfill.svg'),
                      SizedBox(
                        height: Get.height*0.01,
                      ),
                      Text(
                        '주식',
                        style: FontStyles.Bn2_sb.copyWith(color: AppColors.g4),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Spacer(),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.FREQUENCY);
                controller.setEnabled(1.0);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: AppColors.v5,
              ),
              child: Text(
                '다음',
                style: FontStyles.Bn1.copyWith(color: AppColors.white),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
