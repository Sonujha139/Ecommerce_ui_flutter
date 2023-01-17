import 'package:ecommerce_user/consts/consts.dart';

Widget CustomTextField({String? title, String? hint, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text
          .color(Appcolors.redColor)
          .fontFamily(semibold)
          .size(16)
          .make(),
      5.heightBox,
      TextFormField(
        decoration: InputDecoration(
            hintStyle: const TextStyle(
                fontFamily: semibold, color: Appcolors.textfieldGrey),
            hintText: hint,
            isDense: true,
            fillColor: Appcolors.lightGrey,
            filled: true,
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Appcolors.redColor))),
      ),
      10.heightBox
    ],
  );
}
