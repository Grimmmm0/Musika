import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musika/core/configs/assets/app_vectors.dart';

import '../../../common/widgets/button/basic_app_button.dart';
import '../../../core/configs/assets/app_images.dart';
import '../../../core/configs/theme/app_colors.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, 
                    image: AssetImage(AppImages.chooseModeBG)
                    )
                    ),
          ),

          Container(
            color: Colors.black.withOpacity(0.20),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40
            ),
            child: Column(
                        children: [
                         const Align(
                          alignment: Alignment.topCenter,
                           child: Image(image: 
                           AssetImage(AppLogo.introLogo),
                            width: 150, height: 250),
                         ),
            
                          const Spacer(),
                          const Text(
                            'Choose Mode',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
            
                          const SizedBox(height: 40),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Color(0xff30393C).withOpacity(0.5),
                                  shape: BoxShape.circle
                                ),
                                child: SvgPicture.asset(
                                  AppVectors.moonLogo,
                                   fit: BoxFit.none,
                                ),   
                              ),
                            ),
                          ),
                          SizedBox(width: 40,),
                         ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: AppColors.primary,
                                  shape: BoxShape.circle,
                                ),
                                 child: SvgPicture.asset(
                                  AppVectors.sunLogo,
                                  fit: BoxFit.none,
                                )                     
                              ),
                            ),
                          ),
                        ],
                      ),
                    
                          const SizedBox(height: 50),

                          BasicAppButton(onPressed: () {
                              Navigator.push(
                                context, 
                              MaterialPageRoute(
                                builder: (BuildContext context) => const ChooseModePage()
                                )
                                );
                          }, 
                          title: 'Get Started')
                        ],
                      ),
          ),
        ],
      ),
    );
  }
}