import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/featuers/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    NavigateToHome();
        
  }

  

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      Image.asset(AssetsData.logo),
      SizedBox(height:4 ,),
      Sliding_Text(slidingAnimation: slidingAnimation)
    ],);
  }



  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: 
      Duration(seconds: 1)
      );
    
      slidingAnimation = Tween<Offset>(
        begin:Offset(0, 2) ,
        end:Offset.zero).animate(animationController);
    
        animationController.forward();
  }
  void NavigateToHome() {
    Future.delayed(Duration(seconds: 2),(){
    
     Get.to(()=> HomeView(),
     transition: Transition.fade,
     duration:kTranstionDuration );
    });
  }
}

