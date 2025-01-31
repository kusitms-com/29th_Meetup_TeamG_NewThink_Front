import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:meetup/design/style/ColorStyles.dart';
import 'package:meetup/design/style/FontStyles.dart';
import 'package:meetup/design/widgets/appBar/back_appBar.dart';
import 'package:meetup/design/widgets/appBar/quiz_appBar.dart';
import 'package:meetup/design/widgets/custom_button.dart';
import 'package:meetup/design/widgets/progress_bar.dart';
import 'package:meetup/design/widgets/share/answer_quiz.dart';
import 'package:meetup/design/widgets/share/choice_quiz.dart';
import 'package:meetup/design/widgets/share/hint_dialog.dart';
import 'package:meetup/design/widgets/share/wrong_quiz.dart';
import 'package:meetup/viewModel/quiz_viewModel.dart';
import '../../../design/widgets/history_widget.dart';

import '../../../design/widgets/chip_editor.dart';
import '../../../design/widgets/home/news_slider.dart';
import '../../../design/widgets/home/recommend_box.dart';
import '../../../routes/get_pages.dart';
import '../../../viewModel/home_viewModel.dart';

final quizController = Get.find<QuizViewModel>();
final homeController = Get.find<HomeViewModel>();

class OneQuizScreen extends GetView<QuizViewModel> {
  const OneQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(QuizViewModel());
    return Scaffold(
        appBar: QuizAppBar(
          onPressed: () {
            controller.init(true);
            Get.back();
          },
        ),
        body: 
        Obx(() {
          if (controller.correctSubmitQ1.value) {
            return _quizCorrect();
          } else if (controller.wrongSubmitQ1.value) {
            return _quizFalse(controller.wrongQ.value, controller.wrongDetail.value);
          } else {
            return _quiz(context);
          }
        }),
        );
  }
}

_quiz(BuildContext context) {
  return SafeArea(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyProgressBar(
            percent: 0.25,
            backgroundColor: AppColors.g1,
            progressColor: AppColors.v2,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '1/4',
                  style: FontStyles.Caption1_m.copyWith(color: AppColors.g3),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 4.0),
            child: Text(
              'Quiz 1',
              style: FontStyles.Headline2_b.copyWith(color: AppColors.v5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: Text(
              '국세청이 중고거래 플랫폼 이용자들에게 종합소득세 신고·납부 안내문을 발송한 이유는 무엇인가요?',
              style: FontStyles.Bn1_b.copyWith(color: AppColors.g6),
            ),
          ),
          Obx(
            () => GestureDetector(
                onTap: () {
                  quizController.init(false);

                  quizController.selectQ(0);

                  quizController.wrongQ('A');
                  quizController.wrongDetail('이용자 수가 증가했기 때문에');
                },
                child: quizController.q1List[0]
                    ? AnswerQuiz(number: 'A', detail: '이용자 수가 증가했기 때문에')
                    : ChoiceQuiz(number: 'A', detail: '이용자 수가 증가했기 때문에')),
          ),
          Obx(
            () => GestureDetector(
                onTap: () {
                  quizController.init(false);

                  quizController.selectQ(1);
                },
                child: quizController.q1List[1]
                    ? AnswerQuiz(
                        number: 'B',
                        detail: '중고거래를 통해 일정 수준 이상의 사업 소득을 벌어들였기 때문에')
                    : ChoiceQuiz(
                        number: 'B',
                        detail: '중고거래를 통해 일정 수준 이상의 사업 소득을 벌어들였기 때문에')),
          ),
          Obx(
            () => GestureDetector(
                onTap: () {
                  quizController.init(false);
                  quizController.selectQ(2);

                  quizController.wrongQ('C');
                  quizController.wrongDetail('중고거래 플랫폼을 홍보하기 위해서');
                },
                child: quizController.q1List[2]
                    ? AnswerQuiz(number: 'C', detail: '중고거래 플랫폼을 홍보하기 위해서')
                    : ChoiceQuiz(number: 'C', detail: '중고거래 플랫폼을 홍보하기 위해서')),
          ),
          Obx(
            () => GestureDetector(
                onTap: () {
                  quizController.init(false);
                  quizController.selectQ(3);

                  quizController.wrongQ('D');
                  quizController.wrongDetail('중고 제품의 품질을 검사하기 위해서');
                },
                child: quizController.q1List[3]
                    ? AnswerQuiz(number: 'D', detail: '중고 제품의 품질을 검사하기 위해서')
                    : ChoiceQuiz(number: 'D', detail: '중고 제품의 품질을 검사하기 위해서')),
          ),
          Spacer(),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: CustomButton(
                  backgroundColor: AppColors.v1,
                  textStyle: FontStyles.Bn1_b.copyWith(color: AppColors.v5),
                  label: '힌트 보기',
                  onPressed: () {
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder:
                              (BuildContext context, StateSetter setState) {
                            return HintDialog();
                          },
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Flexible(
                flex: 1,
                child: CustomButton(
                  backgroundColor: AppColors.v6,
                  textStyle: FontStyles.Bn1_b.copyWith(
                      color: quizController.q1List.contains(true)
                          ? AppColors.white
                          : Color(0xFFAAAAB9)),
                  label: '정답 제출하기',
                  onPressed:quizController.q1List.contains(true)
                      ?  () {
                    if(quizController.q1List[1]) {
                      //정답인 경우
                      quizController.correctSubmitQ1(true);
                    } else {
                      //오답인 경우
                      quizController.wrongSubmitQ1(true);
                    }
                  } : null,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

_quizCorrect() {
  return SafeArea(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyProgressBar(
            percent: 0.25,
            backgroundColor: AppColors.g1,
            progressColor: AppColors.v2,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '1/4',
                  style: FontStyles.Caption1_m.copyWith(color: AppColors.g3),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 4.0),
            child: Text(
              'Quiz 1',
              style: FontStyles.Headline2_b.copyWith(color: AppColors.v5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: Text(
              '국세청이 중고거래 플랫폼 이용자들에게 종합소득세 신고·납부 안내문을 발송한 이유는 무엇인가요?',
              style: FontStyles.Bn1_b.copyWith(color: AppColors.g6),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/agreement.png'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '정답이에요!',
                  style: FontStyles.Ln1_m.copyWith(color: AppColors.black),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.v1,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AppColors.v6,
                    width: 1,
                  )),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'B',
                          style:
                              FontStyles.Ln1_sb.copyWith(color: AppColors.v6),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Text(
                        '중고거래를 통해 일정 수준 이상의 사업 소득을 벌어들였기 때문에',
                        style:
                            FontStyles.Ln1_m.copyWith(color: AppColors.black),
                        softWrap: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          CustomButton(
            backgroundColor: AppColors.v6,
            textStyle: FontStyles.Bn1_b.copyWith(color: AppColors.white),
            label: '다음',
            onPressed: () {
              quizController.wrongSubmitQ1(false);
              quizController.correctSubmitQ1(false);
              quizController.quizResult.value++;
              Get.toNamed(Routes.SECONDQUIZ);
              //다음 퀴즈로 넘어가는 화면 만들기
            },
          ),
        ],
      ),
    ),
  );
}

_quizFalse(String q, String detail) {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          MyProgressBar(
            percent: 0.25,
            backgroundColor: AppColors.g1,
            progressColor: AppColors.v2,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '1/4',
                  style: FontStyles.Caption1_m.copyWith(color: AppColors.g3),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 4.0),
            child: Text(
              'Quiz 1',
              style: FontStyles.Headline2_b.copyWith(color: AppColors.v5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: Text(
              '국세청이 중고거래 플랫폼 이용자들에게 종합소득세 신고·납부 안내문을 발송한 이유는 무엇인가요?',
              style: FontStyles.Bn1_b.copyWith(color: AppColors.g6),
              softWrap: true,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/quiz_falseCloud.png'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '아쉽지만 정답이 아니에요!',
                  style: FontStyles.Ln1_m.copyWith(color: AppColors.black),
                ),
              ],
            ),
          ),
          //사용자가 고른 틀린 답
          WrongQuiz(number: q, detail: detail),
          //퀴즈의 원래 정답
          AnswerQuiz(
              number: 'B', detail: '중고거래를 통해 일정 수준 이상의 사업 소득을 벌어들였기 때문에'),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Text(
              '관련 뉴스',
              style: FontStyles.Headline2_b.copyWith(color: AppColors.black),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: RecommendU(
                image: homeController
                        .homeModel?.customizeNewsLetters[2].thumbnail ??
                    'no data',
                title: '당근마켓서 물건 팔았는데 세금 내야 할까... 국세청 기준은?',
                tag: CustomChip(
                  label: homeController.parseCustom1()[0],
                ),
                isRecommend: homeController.isRecommendThird.value,
                onRecommend: () {
                  homeController.isRecommendThird.value
                      ? homeController.isRecommendThird.value = false
                      : homeController.isRecommendThird.value = true;
                },
                history: History(
                  diff: homeController.formatDate(
                    DateTime.parse(homeController
                        .homeModel!.customizeNewsLetters[2].createdAt),
                  ),
                ),
              )),
          CustomButton(
            backgroundColor: AppColors.v6,
            textStyle: FontStyles.Bn1_b.copyWith(color: AppColors.white),
            label: '다음',
            onPressed: () {
              quizController.wrongSubmitQ1(false);
              quizController.correctSubmitQ1(false);
              Get.toNamed(Routes.SECONDQUIZ);
              //다음 퀴즈로 넘어가는 화면 만들기
            },
          ),
        ],
      ),
    ),
  );
}
