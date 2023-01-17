import 'package:ecommerce_user/consts/consts.dart';
import 'package:ecommerce_user/consts/list.dart';
import 'package:ecommerce_user/view/main_screen/categories/categories_detail.dart';
import 'package:ecommerce_user/widget/bg_widget.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return bgwidget(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: categories.text.fontFamily(bold).white.make(),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              mainAxisExtent: 200,
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(
                    categoriesImages[index],
                    height: 120,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  10.heightBox,
                  "${categoriesList[index]}"
                      .text
                      .color(Appcolors.darkFontGrey)
                      .align(TextAlign.center)
                      .make()
                ],
              )
                  .box
                  .white
                  .rounded
                  .clip(Clip.antiAlias)
                  .outerShadowSm
                  .make()
                  .onTap(() {
                Get.to(() => CategoryDetail(title: categoriesList[index]));
              });
            }),
      ),
    ));
  }
}
