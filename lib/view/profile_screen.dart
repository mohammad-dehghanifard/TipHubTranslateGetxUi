import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tip_hub_getx_translate/componenets/change_language_dialog.dart';
import 'package:tip_hub_getx_translate/gen/assets.gen.dart';
import 'package:tip_hub_getx_translate/view/profile_option_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        actions: [
          SizedBox(
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.left_chevron, color: Colors.black)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.moon, color: Colors.black,)),
              ],
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // user profile
          Stack(
            children: [
              // image
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: Image
                            .asset(Assets.images.myimage.path)
                            .image,
                        fit: BoxFit.fill
                    )
                ),
              ),
              // edit btn
              Positioned(
                right: 5,
                bottom: 0,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: CupertinoColors.systemYellow
                  ),
                  child: const Icon(CupertinoIcons.pen),
                ),
              )
            ],
          ),
          SizedBox(height: size.height * 0.01),

           const Text("Mohammad Dehghanifard", style: TextStyle(fontSize: 18,
              fontWeight: FontWeight.bold,
              color: CupertinoColors.black)),
          SizedBox(height: size.height * 0.01),
          const Text("info@dehghanifard.ir", style: TextStyle(fontSize: 14,
              fontWeight: FontWeight.w400,
              color: CupertinoColors.systemGrey)),
          SizedBox(height: size.height * 0.02),

          // upgrade user
          Container(
            width: 220,
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: CupertinoColors.systemYellow
            ),
            child:  const Center(child: Text("Upgrade To Pro",
                style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: CupertinoColors.black))),

          ),
          SizedBox(height: size.height * 0.02),
          // options
          ProfileOptionItem(
              title: "Privacy",
              icon: Icons.privacy_tip,
              onTap: () {},
              size: size),
          ProfileOptionItem(
              title: "History",
              icon: Icons.history,
              onTap: () {},
              size: size),
          ProfileOptionItem(
              title: "Help",
              icon: Icons.help_outline,
              onTap: () {},
              size: size),
          ProfileOptionItem(
              title: "Change Language",
              icon: Icons.abc_outlined,
              onTap: () => changeLanguageDialog(),
              size: size),
          ProfileOptionItem(
              title: "Settings",
              icon: Icons.settings,
              onTap: () {},
              size: size),
          ProfileOptionItem(
              title: "Share App",
              icon: Icons.share,
              onTap: () {},
              size: size),
          ProfileOptionItem(
              title: "Log Out",
              icon: Icons.login_outlined,
              onTap: () {},
              size: size),
        ],
      ),
    );
  }
}

