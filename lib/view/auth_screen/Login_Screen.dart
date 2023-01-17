import 'package:ecommerce_user/consts/consts.dart';
import 'package:ecommerce_user/consts/list.dart';
import 'package:ecommerce_user/view/auth_screen/signup_screen.dart';
import 'package:ecommerce_user/view/main_screen/BottomNavBar_Screen.dart';
import 'package:ecommerce_user/widget/Custom_Textfield.dart';
import 'package:ecommerce_user/widget/applogo.dart';
import 'package:ecommerce_user/widget/bg_widget.dart';
import 'package:ecommerce_user/widget/button.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgwidget(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
              child: Column(
                children: [
                  (context.screenHeight * 0.1).heightBox,
                  applogoWidget(),
                  10.heightBox,
                  "Login In To $appname"
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
                        CustomTextField(hint: emailHint, title: email),
                        CustomTextField(hint: passwordHint, title: password),
                        Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                                onPressed: () {},
                                child: forgotpass.text.make())),
                        5.heightBox,
                        ourButton(
                            color: Appcolors.redColor,
                            title: login,
                            textColor: Appcolors.whiteColor,
                            onpress: () {
                              Get.to(() => BottomNavBarScreen());
                            }).box.width(context.screenWidth - 50).make(),
                        5.heightBox,
                        createNewAccount.text.color(Appcolors.fontGrey).make(),
                        5.heightBox,
                        ourButton(
                            color: Appcolors.lightgolden,
                            title: signup,
                            textColor: Appcolors.redColor,
                            onpress: () {
                              Get.to(() => SignupScreen());
                            }).box.width(context.screenWidth - 50).make(),
                        10.heightBox,
                        loginWith.text.color(Appcolors.fontGrey).make(),
                        5.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            3,
                            (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: Appcolors.lightGrey,
                                radius: 22,
                                child: Image.asset(
                                  socialIconList[index],
                                  width: 30,
                                ),
                              ),
                            ),
                          ),
                        )
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
            )));
  }
}
