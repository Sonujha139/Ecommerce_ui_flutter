import 'package:ecommerce_user/consts/consts.dart';
import 'package:ecommerce_user/view/main_screen/categories/item_details.dart';
import 'package:ecommerce_user/widget/bg_widget.dart';
import 'package:get/get.dart';

class CategoryDetail extends StatelessWidget {
  final String? title;
  const CategoryDetail({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgwidget(
        child: Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      6,
                      (index) => "Baby clothing"
                          .text
                          .size(12)
                          .fontFamily(semibold)
                          .color(Appcolors.darkFontGrey)
                          .makeCentered()
                          .box
                          .rounded
                          .white
                          .size(120, 60)
                          .margin(EdgeInsets.symmetric(horizontal: 4))
                          .make())),
            ),
            20.heightBox,

            // items container
            Expanded(
                child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 250,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP3,
                            height: 150,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                          const Spacer(),
                          10.heightBox,
                          "Laptop 32GB/64GB"
                              .text
                              .fontFamily(semibold)
                              .color(Appcolors.darkFontGrey)
                              .make(),
                          10.heightBox,
                          "\$600"
                              .text
                              .color(Appcolors.redColor)
                              .fontFamily(bold)
                              .size(16)
                              .make()
                        ],
                      )
                          .box
                          .white
                          .margin(EdgeInsets.symmetric(horizontal: 4))
                          .roundedSM
                          .outerShadowSm
                          .padding(EdgeInsets.all(12))
                          .make()
                          .onTap(() {
                        Get.to(ItemDetails(title: "Dammy Item"));
                      });
                    }))
          ],
        ),
      ),
    ));
  }
}
