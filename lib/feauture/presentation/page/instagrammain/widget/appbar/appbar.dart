import 'package:flutter/material.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/constant/assets.dart';
import 'package:instagram_test_app/feauture/presentation/core/ui/svg_icon.dart';

 class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,),
          child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomSvgIcon(
                    assetName: Assets.cameraIcon,
                    width: 25,
                    height: 25,
                  ),
                 
                  Image.asset(
                    Assets.logoImage,
                  ),
                const  Row(children:  [
                     CustomSvgIcon(
                    assetName: Assets.tvIcon,
                    width: 25,
                    height: 25,
                  ),
                   SizedBox(
                    width: 20,
                  ),
                   CustomSvgIcon(
                    assetName: Assets.sendIcon,
                    width: 25,
                    height: 25,
                  ),
                  ],),
                  
                  
                  
                ],
              ),
           
        ),
      ),
    );
  }
  

  
}
