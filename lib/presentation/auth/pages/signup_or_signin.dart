import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musika/common/helpers/is_dark_mode.dart';
import 'package:musika/common/widgets/button/basic_app_button.dart';
import 'package:musika/core/configs/assets/app_images.dart';
import 'package:musika/core/configs/assets/app_vectors.dart';
import 'package:musika/core/configs/theme/app_colors.dart';
import 'package:musika/presentation/auth/pages/signin.dart';
import 'package:musika/presentation/auth/pages/signup.dart';

import '../../../common/widgets/appbar/app_bar.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BasicAppBar(),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              AppVectors.topPattern
            ),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              AppVectors.bottomPattern
            ),
          ),

           Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              AppImages.authBG,
               width: 300, height: 300
            )
          ),

           Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Image.asset(
                  AppLogo.introLogo,
                   width: 150, height: 150
                 ),
                 const SizedBox(
                  height: 10,
                 ),
                 const Text(
                  'Enjoy Listening to Musika',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  ),
                  const SizedBox(
                  height: 21,
                 ),
                 const Text(
                  'Musika is a proprietary Philippine`s audio \nstreaming and media service provider',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: AppColors.grey
                  ),
                  textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                  height: 30,
                 ),
                 Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: BasicAppButton(
                        onPressed: () {
                          Navigator.push(context,
                           MaterialPageRoute(
                            builder: (BuildContext context) =>  SignupPage()
                            )
                            );
                        }, 
                        title: 'Register'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                           MaterialPageRoute(
                            builder: (BuildContext context) => const SigninPage()
                            )
                            );
                        },  
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: context.isDarkMode ? Colors.white : Colors.black
                          ),
                          )
                          ),
                    )
                  ],
                 )
                 
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}