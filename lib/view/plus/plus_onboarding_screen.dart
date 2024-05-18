import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../design/style/ColorStyles.dart';
import '../../design/style/FontStyles.dart';
import '../../design/widgets/home/news_slider.dart';

class PlusOnboardingScreen extends StatelessWidget {
  const PlusOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(
      initialPage: 0,
    );
    return Scaffold(
      backgroundColor: AppColors.g1,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 430,
            width: 330, // 페이지뷰 높이 설정
            child: PageView(
              controller: pageController,
              children: [
                // 첫 번째 페이지
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.v2, // 바깥쪽 Container의 배경색
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 72.0),
                          child: Container(
                            width: 220,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: AppColors.white // 안쪽 Container의 배경색
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: RichText(
                                      textAlign: TextAlign.center, // 가운데 정렬
                                      text: TextSpan(
                                        text: '안녕하세요!\n여러분의 생각 더하기를\n도와줄',
                                        style: FontStyles.Ln1_m.copyWith(color: AppColors.g6),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '구르미',
                                            style: FontStyles.Ln1_m.copyWith(
                                                color: AppColors.v5),
                                          ),
                                          TextSpan(
                                            text: '에요',
                                            style: FontStyles.Ln1_m.copyWith(
                                                color: AppColors.g6),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Image.asset('assets/icons/plus_cloudfun.png', width: 238, height: 177,)
                      ],
                    ),
                  ),
                ),
                // 두 번째 페이지
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.v2, // 바깥쪽 Container의 배경색
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 72.0),
                          child: Container(
                            width: 220,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: AppColors.white // 안쪽 Container의 배경색
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: RichText(
                                      textAlign: TextAlign.center, // 가운데 정렬
                                      text: TextSpan(
                                        text: '생각더하기가 처음이신\n',
                                        style: FontStyles.Ln1_m.copyWith(color: AppColors.g6),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '여러분께 어떻게 생각을 더할지\n',
                                            style: FontStyles.Ln1_m.copyWith(
                                                color: AppColors.g6),
                                          ),
                                          TextSpan(
                                            text: '도와드릴게요!',
                                            style: FontStyles.Ln1_m.copyWith(
                                                color: AppColors.g6),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Image.asset('assets/icons/plus_cloudfun2.png', width: 238, height: 177,)
                      ],
                    ),
                  ),
                ),
                // 세 번째 페이지딩
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColors.v2, AppColors.v2, Colors.white, Colors.white],
                      stops: [0.0, 0.5, 0.5, 1.0],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 72.0),
                          child: Container(
                            width: 220,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: AppColors.white // 안쪽 Container의 배경색
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: RichText(
                                      textAlign: TextAlign.center, // 가운데 정렬
                                      text: TextSpan(
                                        text: '작성하신 나의 생각을 요약해봤어요!\n나의 생각에 ',
                                        style: FontStyles.Ln1_m.copyWith(color: AppColors.g6),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '“왜?”라는 질문',
                                            style: FontStyles.Ln1_m.copyWith(
                                                color: AppColors.v5),
                                          ),
                                          TextSpan(
                                            text: '을 해보며\n생각의 핵심을 찾아 떠나봐요.',
                                            style: FontStyles.Ln1_m.copyWith(
                                                color: AppColors.g6),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 80.0),
                              child: Container(
                                width: 261,
                                height: 101,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: AppColors.v2),
                                ),
                                child: Center(
                                  child: Text('테슬라'),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 65, left: 120,
                              child: Image.asset(
                                'assets/icons/plus_icon1.png',
                                width: 32,
                                height: 32,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 28.0),
                          child: Container(
                            width: 261, height: 47,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12), border: Border.all(color: AppColors.v5)
                            ),
                            child: Center(child: Text('테슬라의 기술 혁신' ,style: FontStyles.Ln1_sb.copyWith(color: AppColors.v6),)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // 네 번째 페이지
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.v2, // 바깥쪽 Container의 배경색
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 72.0),
                          child: Container(
                            width: 220,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: AppColors.white // 안쪽 Container의 배경색
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: RichText(
                                      textAlign: TextAlign.center, // 가운데 정렬
                                      text: TextSpan(
                                        text: '여러분이 생각을 더 할 수록\n',
                                        style: FontStyles.Ln1_m.copyWith(color: AppColors.g6),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '구르미가 함께 성장해 나간답니다!',
                                            style: FontStyles.Ln1_m.copyWith(
                                                color: AppColors.g6),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Image.asset('assets/icons/plus_cloud.png', width: 238, height: 177,)
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.v2, // 바깥쪽 Container의 배경색
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 72.0),
                          child: Container(
                            width: 220,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: AppColors.white // 안쪽 Container의 배경색
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: RichText(
                                      textAlign: TextAlign.center, // 가운데 정렬
                                      text: TextSpan(
                                        text: '자! 그럼 저와 함께\n',
                                        style: FontStyles.Ln1_m.copyWith(color: AppColors.g6),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '‘생각 더하기’를 시작해봐요!',
                                            style: FontStyles.Ln1_m.copyWith(
                                                color: AppColors.g6),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Image.asset('assets/icons/plus_cloud.png', width: 238, height: 177,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: SmoothPageIndicator(
              controller: pageController,
              count: 5,
              effect: ExpandingDotsEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  dotColor: AppColors.g3,
                  activeDotColor: AppColors.v4
              ),
            ),
          ),
        ],
      ),
    );
  }
}