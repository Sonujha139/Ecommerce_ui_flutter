import 'package:ecommerce_user/consts/consts.dart';
import 'package:ecommerce_user/view/auth_screen/Login_Screen.dart';
import 'package:ecommerce_user/widget/applogo.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // creating the method to change the screen

  changescreen() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(()=>  LoginScreen());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
       changescreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.redColor,
      body: Center(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  icSplashBg,
                  width: 300,
                )),
            20.heightBox,
            applogoWidget(),
            10.heightBox,
            appname.text.size(22).white.make(),
            5.heightBox,
            appversion.text.white.make(),
            const Spacer(),
            credits.text.fontFamily(regular).white.make(),
            15.heightBox,
          ],
        ),
      ),
    );
  }
}
