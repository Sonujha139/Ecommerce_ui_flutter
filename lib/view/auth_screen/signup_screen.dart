import 'package:ecommerce_user/consts/consts.dart';
import 'package:ecommerce_user/consts/list.dart';
import 'package:ecommerce_user/view/auth_screen/Login_Screen.dart';
import 'package:ecommerce_user/widget/Custom_Textfield.dart';
import 'package:ecommerce_user/widget/applogo.dart';
import 'package:ecommerce_user/widget/bg_widget.dart';
import 'package:ecommerce_user/widget/button.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return bgwidget(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    (context.screenHeight * 0.1).heightBox,
                    applogoWidget(),
                    10.heightBox,
                    "Sign Up To $appname"
                        .text
                        .fontFamily(bold)
                        .white
                        .size(18)
                        .make(),
                    15.heightBox,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          CustomTextField(hint: nameHint, title: name),
                          CustomTextField(hint: emailHint, title: email),
                          CustomTextField(hint: passwordHint, title: password),
                          CustomTextField(
                              hint: passwordHint, title: retypepassword),
                          5.heightBox,
                          Row(children: [
                            Checkbox(
                                activeColor: Appcolors.redColor,
                                checkColor: Appcolors.whiteColor,
                                value: isCheck,
                                onChanged: (newValue) {
                                  setState(() {
                                    isCheck = newValue;
                                  });
                                  isCheck = newValue;
                                }),
                            10.heightBox,
                            Expanded(
                              child: RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                    text: "I agree to the ",
                                    style: TextStyle(
                                        fontFamily: regular,
                                        color: Appcolors.fontGrey)),
                                TextSpan(
                                    text: termsAndCondition,
                                    style: TextStyle(
                                        fontFamily: regular,
                                        color: Appcolors.redColor)),
                                TextSpan(
                                    text: " & ",
                                    style: TextStyle(
                                        fontFamily: regular,
                                        color: Appcolors.fontGrey)),
                                TextSpan(
                                    text: "Privacy Policy",
                                    style: TextStyle(
                                        fontFamily: regular,
                                        color: Appcolors.redColor)),
                              ])),
                            )
                          ]),
                          5.heightBox,

                          ourButton(
                                  color: isCheck == true
                                      ? Appcolors.redColor
                                      : Appcolors.lightgolden,
                                  title: signup,
                                  textColor: Appcolors.whiteColor,
                                  onpress: () {})
                              .box
                              .width(context.screenWidth - 50)
                              .make(),
                          5.heightBox,
                          // wrapping in gasture detector with velocity x
                          // RichText(
                          //     text: const TextSpan(children: [
                          //   TextSpan(
                          //       text: alreadyhaveanaccount,
                          //       style: TextStyle(
                          //           fontFamily: bold,
                          //           color: Appcolors.fontGrey)),
                          //   TextSpan(
                          //       text: login,
                          //       style: TextStyle(
                          //           fontFamily: bold,
                          //           color: Appcolors.redColor)),
                          // ])).onTap(() {
                          //   Get.back();
                          // })
                          // wrapping in gasture detector with velocity x
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              alreadyhaveanaccount.text
                                  .color(Appcolors.fontGrey)
                                  .make(),
                              login.text.color(Appcolors.redColor).make()
                            ],
                          ).onTap(() {
                            Get.back();
                          })
                        ],
                      )
                          .box
                          .white
                          .rounded
                          .padding(const EdgeInsets.all(20))
                          .width(context.screenHeight - 70)
                          .shadowSm
                          .make(),
                    ),
                  ],
                ),
              ),
            )));
  }
}
