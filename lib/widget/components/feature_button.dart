import 'package:ecommerce_user/consts/consts.dart';

Widget featureButton({String? title, icon}) {
  return Row(
    children: [
      Image.asset(icon, width: 40,fit: BoxFit.fill,),
      10.widthBox,
      title!.text.fontFamily(semibold).color(Appcolors.darkFontGrey).make(),
    ],
  ).box.width(200).margin(EdgeInsets.symmetric(horizontal: 4)).white.padding(EdgeInsets.all(4)).roundedSM.outerShadowSm.make();
}
