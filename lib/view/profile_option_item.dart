import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProfileOptionItem extends StatelessWidget {
  const ProfileOptionItem({
    super.key,
    required this.size, required this.icon, required this.title, required this.onTap,
  });

  final Size size;
  final IconData icon;
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width,
        height: 45,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: CupertinoColors.systemGrey.withOpacity(0.4)
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(icon),
            SizedBox(width: size.width * 0.02),
            Text(title.tr,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: CupertinoColors.black)),
            const Expanded(child: SizedBox()),
            const Icon(CupertinoIcons.right_chevron)
          ],
        ),

      ),
    );
  }
}