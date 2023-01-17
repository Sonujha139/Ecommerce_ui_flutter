import 'package:ecommerce_user/consts/consts.dart';
import 'package:ecommerce_user/consts/list.dart';
import 'package:ecommerce_user/widget/button.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.lightGrey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:
            title!.text.color(Appcolors.darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
              )),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // swiper section (consoleslider)
                    VxSwiper.builder(
                      height: 350,
                        itemCount: 3,
                        aspectRatio: 16/9,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            imgFc4,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          );
                        }),
                        10.heightBox,
                        // title and detail section
                        title!.text.size(16).fontFamily(semibold).color(Appcolors.darkFontGrey).make(),
                        10.heightBox,
                        //rating section
                        VxRating(onRatingUpdate: (value){},normalColor: Appcolors.textfieldGrey,selectionColor: Appcolors.golden,count: 5,size: 25,stepInt: true,),
                        10.heightBox,
                        "\$30,000".text.color(Appcolors.redColor).size(18).fontFamily(bold).make(),
                        10.heightBox,
                        Row(children: [
                          Expanded(child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Seller".text.fontFamily(semibold).white.make(),
                              5.heightBox,
                              "In House Brands".text.fontFamily(semibold).size(16).color(Appcolors.darkFontGrey).make(),
                            ],
                          )),
                         const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.message_rounded, color: Appcolors.darkFontGrey,),
                          )
                        ],).box.height(60).padding(EdgeInsets.symmetric(horizontal: 16)).color(Appcolors.textfieldGrey).make(),
                  
                      //color section
                      20.heightBox,
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Color:".text.color(Appcolors.textfieldGrey).make(),
                              ),
                              Row(
                                children: List.generate(3, (index)=>VxBox().size(40, 40).roundedFull.color(Vx.randomPrimaryColor).margin(const EdgeInsets.symmetric(horizontal: 4)).make()),
                              ),

                            
                            ],
                          ).box.padding(EdgeInsets.all(8)).make(),
                          // quantity row
                         Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Quantity".text.color(Appcolors.textfieldGrey).make(),
                              ),
                              Row(
                                children: [
                                  IconButton(onPressed: (){}, icon: const Icon(Icons.remove)),
                                  "0".text.size(16).color(Appcolors.darkFontGrey).fontFamily(bold).make(),
                                  IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
                                  10.widthBox,
                                  "0 available".text.color(Appcolors.textfieldGrey).make()
                                  
                                ],
                              ),

                            
                            ],
                          ).box.padding(EdgeInsets.all(8)).make(),

                          //Total Row
                           Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Total".text.color(Appcolors.textfieldGrey).make(),
                              ),
                              "\$0.00".text.color(Appcolors.redColor).size(16).fontFamily(bold).make()

                            
                            ],
                          ).box.padding(EdgeInsets.all(8)).color(Appcolors.golden).make(),
                        ],
                      ).box.white.shadowSm.make(),

                      //description section

                      10.heightBox,

                      "Description".text.color(Appcolors.darkFontGrey).fontFamily(semibold).make(),
                      10.heightBox,
                      "this is a dummy item and dummy description here...".text.color(Appcolors.darkFontGrey).make(),
                      10.heightBox,
                      //button section
                      ListView(
                        physics:const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children:List.generate(itemDetailButtonList.length, (index) => ListTile(
                          title: "${itemDetailButtonList[index]}".text.fontFamily(semibold).color(Appcolors.darkFontGrey).make(),
                          trailing: const Icon(Icons.arrow_forward),
                        )),
                      ),
                      20.heightBox,
                      //products may like section
                      productsyoumaylike.text.size(16).fontFamily(bold).color(Appcolors.darkFontGrey).make(),
                      10.heightBox,
                      // i copied this widget from home screen featured products
                       SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                  children: List.generate(
                                      6,
                                      (index) => Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                imgP1,
                                                width: 150,
                                                fit: BoxFit.cover,
                                              ),
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
                                              .margin(EdgeInsets.symmetric(
                                                  horizontal: 4))
                                              .roundedSM
                                              .padding(EdgeInsets.all(8))
                                              .make())),
                            )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ourButton(
                color: Appcolors.redColor,
                onpress: () {},
                textColor: Appcolors.whiteColor,
                title: "Add to cart"),
          )
        ],
      ),
    );
  }
}
