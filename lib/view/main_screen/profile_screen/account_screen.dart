import 'package:ecommerce_user/consts/consts.dart';
import 'package:ecommerce_user/consts/list.dart';
import 'package:ecommerce_user/view/main_screen/profile_screen/components/detail_card.dart';
import 'package:ecommerce_user/widget/bg_widget.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _Account_screenState();
}

class _Account_screenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return bgwidget(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // Edit Profile Button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const  Align(
                  alignment: Alignment.topRight, 
                  child: Icon(Icons.edit,color: Appcolors.whiteColor,)).onTap(() {
                    
                  }),
            ),

              // User Detail Section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Image.asset(imgProfile2,width: 130,fit: BoxFit.cover).box.roundedFull.clip(Clip.antiAlias).make(),
                     10.widthBox,
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Dummy User".text.fontFamily(semibold).white.make(),
                        5.heightBox,
                        "User@gmail.com".text.white.make()
                      ],
                    )),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Appcolors.whiteColor
                        )
                      ),
                      onPressed: (){}, child: 'Log Out'.text.fontFamily(semibold).white.make())
                    ],
                  ),
                ),
                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    detaisCard(width: context.screenWidth / 3.4 , count:"00", title:"in your cart"),
                    detaisCard(width: context.screenWidth / 3.4 , count:"32", title:"in your wishlist"),
                    detaisCard(width: context.screenWidth / 3.4 , count:"675", title:"your orders"),
                  ],
                ).box.color(Appcolors.redColor).make(),
               
                // button section

                ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index){
                    return const Divider(
                      color: Appcolors.lightGrey,
                    );
                  },
                  itemCount: profileButtonList.length,
                 itemBuilder: (BuildContext context,int index){
                  return ListTile(
                    leading: Image.asset(profileButtonIcon[index],width: 22,),
                    title:  profileButtonList[index].text.fontFamily(semibold).color(Appcolors.darkFontGrey).make(),
                  );
                 }
          ).box.white.rounded.margin(EdgeInsets.all(12)).shadowSm.padding(const EdgeInsets.symmetric(horizontal: 16 )).make().box.color(Appcolors.redColor).make()
          ],
          )),
      )
    );
  }
}
