import 'package:ecommerce_user/consts/consts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
       child: "Cart is empty!".text.fontFamily(semibold).center.color(Appcolors.darkFontGrey).make()
    );
  }
}