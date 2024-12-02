import 'package:flutter/material.dart';
import 'package:musika/common/widgets/button/basic_app_button.dart';
import 'package:musika/core/configs/assets/app_images.dart';
import 'package:musika/core/configs/theme/app_colors.dart';
import 'package:musika/presentation/choose_mode/pages/choose_mode.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

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
                    fit: BoxFit.cover, 
                    image: AssetImage(AppImages.introBG)
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
                          alignment: Alignment.center,
                           child: Image(image: 
                           AssetImage(AppLogo.introLogo),
                            width: 150, height: 250),
                         ),
            
                          const Spacer(),
                          const Text(
                            'Enjoy listening to Musika',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
            
                          const SizedBox(height: 15),
            
                            const Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum libero eu lacus imperdiet, in ornare orci imperdiet. In vel nibh aliquam, ornare nibh non, hendrerit neque.',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.grey,
                              fontSize: 13,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 20,),
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
