import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                //color: Colors.white,
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: BigText(
                    text: "Chinese Side",
                    size: Dimensions.font26,
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                    text:
                        "flavourful rice dish of Persian origin that has become a popular celebratory dish in South Asia, as well as a widely sold street food. The term biryani comes from the Farsi phrase birinj biriyan, “fried rice.” Rice is fried separately until about half-cooked, usually in oil or ghee, and then placed in a pot along with marinated meat or vegetables and spices. The other ingredients are also precooked for a short time, then layered in a pot called a deg, with the rice at the top so that the juices of the other ingredients steam it. In one common preparation, the pot is sealed with dough and then covered so that no steam escapes. flavourful rice dish of Persian origin that has become a popular celebratory dish in South Asia, as well as a widely sold street food. The term biryani comes from the Farsi phrase birinj biriyan, “fried rice.” Rice is fried separately until about half-cooked, usually in oil or ghee, and then placed in a pot along with marinated meat or vegetables and spices. The other ingredients are also precooked for a short time, then layered in a pot called a deg, with the rice at the top so that the juices of the other ingredients steam it. In one common preparation, the pot is sealed with dough and then covered so that no steam escapes.flavourful rice dish of Persian origin that has become a popular celebratory dish in South Asia, as well as a widely sold street food. The term biryani comes from the Farsi phrase birinj biriyan, “fried rice.” Rice is fried separately until about half-cooked, usually in oil or ghee, and then placed in a pot along with marinated meat or vegetables and spices. The other ingredients are also precooked for a short time, then layered in a pot called a deg, with the rice at the top so that the juices of the other ingredients steam it. In one common preparation, the pot is sealed with dough and then covered so that no steam escapes.flavourful rice dish of Persian origin that has become a popular celebratory dish in South Asia, as well as a widely sold street food. The term biryani comes from the Farsi phrase birinj biriyan, “fried rice.” Rice is fried separately until about half-cooked, usually in oil or ghee, and then placed in a pot along with marinated meat or vegetables and spices. The other ingredients are also precooked for a short time, then layered in a pot called a deg, with the rice at the top so that the juices of the other ingredients steam it. In one common preparation, the pot is sealed with dough and then covered so that no steam escapes.",
                  ),
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  iconColor: Colors.white,
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                ),
                BigText(
                  text: "\$12.88 " + " X " + " 0 ",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  iconColor: Colors.white,
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                ),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.reduis20 * 2),
                topRight: Radius.circular(Dimensions.reduis20 * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.reduis20),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  child:
                      BigText(text: "\$ 28 | add to cart", color: Colors.white),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.reduis20),
                    color: AppColors.mainColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
