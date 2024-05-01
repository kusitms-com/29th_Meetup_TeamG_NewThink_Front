import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meetup/design/style/ColorStyles.dart';
import 'package:meetup/design/style/FontStyles.dart';

class NewsLetterScreen extends StatefulWidget {
  const NewsLetterScreen({Key? key}) : super(key: key);

  @override
  _NewsLetterScreenState createState() => _NewsLetterScreenState();
}

class _NewsLetterScreenState extends State<NewsLetterScreen> {
  bool _isPressed1 = false;
  bool _isPressed2 = false;
  bool _isPressed3 = false;
  bool _isPressedCheck = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.g1,
      appBar: AppBar(
        backgroundColor: AppColors.g2,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: SvgPicture.asset('assets/images/newsletter_logo1.svg'),
            ),
            Expanded(
              child: Container(),
            ), // 공간을 채우기 위한 빈 컨테이너
          ],
        ),
        actions: [
          Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            // 앱 바 오른쪽에 아이콘 버튼을 배치
            child: IconButton(
              icon: SvgPicture.asset('assets/icons/newsletter_bell.svg'),
              onPressed: () {
                // 아이콘 버튼이 눌렸을 때 수행할 작업을 추가합니다.
              },
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.only(top: 20),
                  child: RichText(
                    text: TextSpan(
                      text: '오늘의 ',
                      style: FontStyles.Heading1_b.copyWith(
                          color: AppColors.black), //기본style을 지정해줘야함
                      children: <TextSpan>[
                        TextSpan(text: '두둑',
                          style: FontStyles.Heading1_b.copyWith(
                              color: AppColors.v6), //기본style을 지정해줘야함
                        ),
                      ],
                    ),
                  )), Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 0, 0), // 오른쪽에 여백 추가
                child: SvgPicture.asset('assets/images/newsletter_line.svg'),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    // 오른쪽에 여백 추가
                    child: SvgPicture.asset(
                        'assets/images/newsletter_america.svg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                    // 오른쪽에 여백 추가
                    child: SvgPicture.asset(
                        'assets/images/newsletter_rate.svg'),
                  ),
                  Expanded(
                      child: Container()
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    // 오른쪽에 여백 추가
                    child: IconButton(
                      icon: SvgPicture.asset(
                          'assets/images/newsletter_wallet.svg'),
                      onPressed: () {
                        // 아이콘 버튼이 눌렸을 때 수행할 작업을 추가합니다.
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    // 오른쪽에 여백 추가
                    child: IconButton(
                      icon: SvgPicture.asset(
                          'assets/images/newsletter_bookmark.svg'),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text("테슬라 주가 갑자기\n오른 이유는?",
                          style: FontStyles.Title2_sb.copyWith(
                              color: AppColors.black))
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 16.0, 0),
                      child: Text("2024.04.25",
                          style: FontStyles.Label1_Normal_r.copyWith(
                              color: Colors.grey))
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 1, 0),
                    // 오른쪽에 여백 추가
                    child: SvgPicture.asset(
                        'assets/images/newsletter_editor.svg'),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Edit By. ',
                      style: FontStyles.Label1_Normal_r.copyWith(
                          color: AppColors.g3), //기본style을 지정해줘야함
                      children: <TextSpan>[
                        TextSpan(text: 'Amy',
                          style: FontStyles.Label1_Normal_r.copyWith(
                              color: AppColors.g4), //기본style을 지정해줘야함
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 380,
                height: 300,
                margin: EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              18.0, 20.0, 0.0, 0.0), // 상단에 20.0만큼의 패딩을 추가합니다.
                          child: Align(
                            alignment: Alignment.topCenter,
                            // 이미지를 컨테이너의 상단 중앙에 정렬합니다.
                            child: Text("3줄 요약",
                              style: FontStyles.Heading1_b.copyWith(
                                  color: AppColors.v5),),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              18.0, 20.0, 0.0, 0.0), // 상단에 20.0만큼의 패딩을 추가합니다.
                          child: Align(
                              alignment: Alignment.topCenter,
                              // 이미지를 컨테이너의 상단 중앙에 정렬합니다.
                              child: SvgPicture.asset(
                                  'assets/images/newsletter_dotori.svg')
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              18.0, 20.0, 0.0, 0.0), // 상단에 20.0만큼의 패딩을 추가합니다.
                          child: Align(
                              alignment: Alignment.topCenter,
                              // 이미지를 컨테이너의 상단 중앙에 정렬합니다.
                              child: Text(
                                "물가상승률이 예상보다 높아 불과 몇 주 만에\n전문가들의 미국 기준금리 인하 예상 시점이\n한참 미뤄졌음.",
                                style: FontStyles.Label1_Normal_m.copyWith(
                                    color: AppColors.g6),)
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              18.0, 20.0, 0.0, 0.0), // 상단에 20.0만큼의 패딩을 추가합니다.
                          child: Align(
                              alignment: Alignment.topCenter,
                              // 이미지를 컨테이너의 상단 중앙에 정렬합니다.
                              child: SvgPicture.asset(
                                  'assets/images/newsletter_dotori.svg')
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              18.0, 20.0, 0.0, 0.0), // 상단에 20.0만큼의 패딩을 추가합니다.
                          child: Align(
                              alignment: Alignment.topCenter,
                              // 이미지를 컨테이너의 상단 중앙에 정렬합니다.
                              child: Text(
                                  "급격한 기준금리 인상에도 불구하고, 미국의\n경제는 상대적으로 호황을 누리고 있음.",
                                  style: FontStyles.Label1_Normal_m.copyWith(
                                      color: AppColors.g6))
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              18.0, 20.0, 0.0, 0.0), // 상단에 20.0만큼의 패딩을 추가합니다.
                          child: Align(
                              alignment: Alignment.topCenter,
                              // 이미지를 컨테이너의 상단 중앙에 정렬합니다.
                              child: SvgPicture.asset(
                                  'assets/images/newsletter_dotori.svg')
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              18.0, 20.0, 0.0, 0.0), // 상단에 20.0만큼의 패딩을 추가합니다.
                          child: Align(
                              alignment: Alignment.topCenter,
                              // 이미지를 컨테이너의 상단 중앙에 정렬합니다.
                              child: Text(
                                  "이민자 증가, 높은 고용 유연성, 인공지능(AI)\n발전 등에 따른 노동생산성 향상이 미국 경제\n호황의 대표적 요인으로 꼽히고 있음.",
                                  style: FontStyles.Label1_Normal_m.copyWith(
                                      color: AppColors.g6))
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 16),
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(
                            17.0, 20.0, 0.0, 0.0),
                        child: Text(
                          "불과 몇 주 사이에 미국 통화 정책을 바라보는 분위기가 완\n전히 바뀌었어요. 얼마 전까진 다들 ‘올해 6월에 금리 인하\n가 시작될 것’이라고 했는데, 이젠 ‘아직 멀었다’는 사람이 많\n아졌죠.\n",
                          style: FontStyles.Label1_Normal_r,)),
                    Text(
                        "지난 16일(현지시간) 제롬 파월 미국 연방준비제도(Fed·연\n준) 의장은 사실상 6월 금리 인하가 무산됐음을 인정했어\n요. 파월 의장은 “최근 데이터는 (금리 인하에 대한) 확신을\n주지 못했고, 그런 확신을 얻는 데에는 예상보다 더 오랜 시\n간이 걸릴 것”이라고 말했어요.",
                        style: FontStyles.Label1_Normal_r),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 0.0),
                        child: SvgPicture.asset(
                            'assets/images/newsletter_blur.svg')
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(
                            17.0, 20.0, 0.0, 0.0),
                        child: Text(
                          "이제 미국의 기준금리 인하는 9월 이후에 가능하다는 전망\n이 우세하고, 인하 시점을 내년으로 보는 사람도 꽤 많아졌\n어요. 오히려 기준금리를 지금보다 조금 더 올릴 수 있다는\n전망까지 나오고 있어요.\n",
                          style: FontStyles.Label1_Normal_r,)),
                    Text(
                        "왜 갑자기 분위기가 바뀐 걸까요? 경제 전문가들이 대부분\n이런 변화를 예상하지 못했던 이유는 뭘까요?",
                        style: FontStyles.Label1_Normal_r),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 0.0),
                        child: SvgPicture.asset(
                            'assets/images/newsletter_blur.svg')
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return StatefulBuilder(
                                    builder: (BuildContext context, StateSetter setState) {
                                      return AlertDialog(
                                          surfaceTintColor: Colors.transparent,
                                          backgroundColor: AppColors.white,
                                          contentPadding: const EdgeInsets.only(
                                              left: 16.0, right: 16.0),
                                          title: Row(
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "내 생각 작성하기",
                                                  style: FontStyles.Br2_m
                                                      .copyWith(
                                                      color: AppColors.g6),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              IconButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                icon: SvgPicture.asset(
                                                    'assets/images/newsletter_close.svg'), // 닫기 아이콘
                                              ),
                                            ],
                                          ),
                                          content: Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Container(height: 1.0,
                                                  width: double.infinity,
                                                  color: AppColors.g2,),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .fromLTRB(0, 12.0, 0, 16),
                                                  child: Text(
                                                    "뉴스레터를 읽은 후\n여러분의 생각을 자유롭게 작성해보세요!",
                                                    style: FontStyles.B1_Nm,),
                                                ),
                                                SvgPicture.asset(
                                                    'assets/images/newsletter_line3.svg'),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(
                                                          23.0, 16.0, 0.0,
                                                          16.0),
                                                      // 오른쪽에 여백 추가
                                                      child: Text(
                                                          "앞으로 어떻게 될 것 같나요?",
                                                          style: FontStyles
                                                              .Reading_sb,
                                                          textAlign: TextAlign
                                                              .center),
                                                    ),
                                                  ],
                                                ),
                                                SingleChildScrollView(
                                                  scrollDirection: Axis
                                                      .horizontal,
                                                  child: Row(
                                                    children: [
                                                      ButtonTheme(
                                                          minWidth: 90,
                                                          height: 31
                                                          , child: Padding(
                                                        padding: const EdgeInsets
                                                            .only(right: 8.0),
                                                        child: OutlinedButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              _isPressed1 =
                                                              !_isPressed1; // 버튼이 눌릴 때마다 상태를 토글합니다.
                                                            });
                                                            // 버튼 눌렀을 때 수행할 작업 추가
                                                          },
                                                          style: ButtonStyle(
                                                            side: MaterialStateProperty
                                                                .resolveWith<
                                                                BorderSide>(
                                                                  (Set<
                                                                  MaterialState> states) {
                                                                // 테두리 색 변경
                                                                if (_isPressed1) {
                                                                  // 버튼이 눌렸을 때
                                                                  return BorderSide(
                                                                      color: AppColors
                                                                          .v5); // 원하는 색상으로 변경
                                                                }
                                                                return BorderSide(
                                                                    color: AppColors
                                                                        .g3); // 원하는 색상으로 변경
                                                              },
                                                            ),
                                                            foregroundColor: MaterialStateProperty
                                                                .resolveWith<
                                                                Color>(
                                                                  (Set<
                                                                  MaterialState> states) {
                                                                // 글씨 색 변경
                                                                if (_isPressed1) {
                                                                  // 버튼이 눌렸을 때
                                                                  return AppColors
                                                                      .v5; // 원하는 색상으로 변경
                                                                }
                                                                return Color(
                                                                    0xFFAAAAB9); // 원하는 색상으로 변경
                                                              },
                                                            ),
                                                            backgroundColor: MaterialStateProperty
                                                                .resolveWith<
                                                                Color>(
                                                                  (Set<
                                                                  MaterialState> states) {
                                                                // 버튼 색 변경
                                                                if (_isPressed1) {
                                                                  // 버튼이 눌렸을 때
                                                                  return AppColors
                                                                      .v1; // 원하는 색상으로 변경
                                                                }
                                                                return AppColors
                                                                    .white; // 원하는 색상으로 변경
                                                              },
                                                            ),
                                                          ),
                                                          child: Text('긍정적인 전망',
                                                              style: FontStyles
                                                                  .Caption1_sb), // 버튼의 텍스트
                                                        ),
                                                      )),
                                                      ButtonTheme(
                                                          minWidth: 90,
                                                          height: 31
                                                          ,
                                                          child: OutlinedButton(
                                                            onPressed: () {
                                                              setState(() {
                                                                _isPressed2 =
                                                                !_isPressed2; // 버튼이 눌릴 때마다 상태를 토글합니다.
                                                              });
                                                              // 버튼 눌렀을 때 수행할 작업 추가
                                                            },
                                                            style: ButtonStyle(
                                                              side: MaterialStateProperty
                                                                  .resolveWith<
                                                                  BorderSide>(
                                                                    (Set<
                                                                    MaterialState> states) {
                                                                  // 테두리 색 변경
                                                                  if (_isPressed2) {
                                                                    // 버튼이 눌렸을 때
                                                                    return BorderSide(
                                                                        color: AppColors
                                                                            .v5); // 원하는 색상으로 변경
                                                                  }
                                                                  return BorderSide(
                                                                      color: AppColors
                                                                          .g3); // 원하는 색상으로 변경
                                                                },
                                                              ),
                                                              foregroundColor: MaterialStateProperty
                                                                  .resolveWith<
                                                                  Color>(
                                                                    (Set<
                                                                    MaterialState> states) {
                                                                  // 글씨 색 변경
                                                                  if (_isPressed2) {
                                                                    // 버튼이 눌렸을 때
                                                                    return AppColors
                                                                        .v5; // 원하는 색상으로 변경
                                                                  }
                                                                  return Color(
                                                                      0xFFAAAAB9); // 원하는 색상으로 변경
                                                                },
                                                              ),
                                                              backgroundColor: MaterialStateProperty
                                                                  .resolveWith<
                                                                  Color>(
                                                                    (Set<
                                                                    MaterialState> states) {
                                                                  // 버튼 색 변경
                                                                  if (_isPressed2) {
                                                                    // 버튼이 눌렸을 때
                                                                    return AppColors
                                                                        .v1; // 원하는 색상으로 변경
                                                                  }
                                                                  return AppColors
                                                                      .white; // 원하는 색상으로 변경
                                                                },
                                                              ),
                                                            ),
                                                            child: Text(
                                                                '부정적인 전망',
                                                                style: FontStyles
                                                                    .Caption1_sb), // 버튼의 텍스트
                                                          )),
                                                      ButtonTheme(
                                                          minWidth: 90,
                                                          height: 31
                                                          , child: Padding(
                                                        padding: const EdgeInsets
                                                            .only(left: 8.0),
                                                        child: OutlinedButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              _isPressed3 =
                                                              !_isPressed3; // 버튼이 눌릴 때마다 상태를 토글합니다.
                                                            });
                                                          },
                                                          style: ButtonStyle(
                                                            side: MaterialStateProperty
                                                                .resolveWith<
                                                                BorderSide>(
                                                                  (Set<
                                                                  MaterialState> states) {
                                                                // 테두리 색 변경
                                                                if (_isPressed3) {
                                                                  // 버튼이 눌렸을 때
                                                                  return BorderSide(
                                                                      color: AppColors
                                                                          .v5); // 원하는 색상으로 변경
                                                                }
                                                                return BorderSide(
                                                                    color: AppColors
                                                                        .g3); // 원하는 색상으로 변경
                                                              },
                                                            ),
                                                            foregroundColor: MaterialStateProperty
                                                                .resolveWith<
                                                                Color>(
                                                                  (Set<
                                                                  MaterialState> states) {
                                                                // 글씨 색 변경
                                                                if (_isPressed3) {
                                                                  // 버튼이 눌렸을 때
                                                                  return AppColors
                                                                      .v5; // 원하는 색상으로 변경
                                                                }
                                                                return Color(
                                                                    0xFFAAAAB9); // 원하는 색상으로 변경
                                                              },
                                                            ),
                                                            backgroundColor: MaterialStateProperty
                                                                .resolveWith<
                                                                Color>(
                                                                  (Set<
                                                                  MaterialState> states) {
                                                                // 버튼 색 변경
                                                                if (_isPressed3) {
                                                                  // 버튼이 눌렸을 때
                                                                  return AppColors
                                                                      .v1; // 원하는 색상으로 변경
                                                                }
                                                                return AppColors
                                                                    .white; // 원하는 색상으로 변경
                                                              },
                                                            ),
                                                          ),
                                                          child: Text('잘 모르겠음',
                                                              style: FontStyles
                                                                  .Caption1_sb), // 버튼의 텍스트
                                                        ),
                                                      ))
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .only(top: 16.0),
                                                  child: TextFormField(
                                                    keyboardType: TextInputType
                                                        .name,
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder()
                                                        ,
                                                        hintText: '여러분의 생각을 남겨보세요. (최대 200자)',
                                                        hintStyle: FontStyles
                                                            .Caption2_r
                                                            .copyWith(
                                                            color: AppColors
                                                                .g5),
                                                        filled: true
                                                        ,
                                                        fillColor: AppColors.g1
                                                    ),
                                                  ),
                                                ),
                                                Checkbox(
                                                  activeColor: AppColors.v4,
                                                  checkColor: Colors.white,
                                                  value: _isPressedCheck,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      _isPressedCheck = value!;
                                                    });
                                                  },
                                                )
                                              ],
                                            ),
                                          ),

                                      );
                                    });

                                });
                          },
                          icon: Image.asset(
                            'assets/images/newsletter_think3.png', width: 143,
                            height: 143,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0), // 패딩 추가
                          child: IconButton(
                            onPressed: () {

                            },
                            icon: Image.asset(
                              'assets/images/newsletter_invest1.png',
                              width: 143, height: 143,),
                          ),
                        ),

                      ],
                    ),
                    SvgPicture.asset('assets/images/newsletter_line.svg'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              16.0, 24.0, 0.0, 12.0), // 좌측으로부터 일정한 간격을 주기 위한 패딩
                          child: Text("다른 사람들의 생각은?", style: FontStyles
                              .Heading1_b.copyWith(color: AppColors.g6),),
                        ),
                      ],
                    ),

                    Image.asset('assets/images/newsletter_review.png')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),


    );
  }

}