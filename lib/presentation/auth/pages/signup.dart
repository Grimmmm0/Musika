import 'package:flutter/material.dart';
import 'package:musika/common/widgets/appbar/app_bar.dart';
import 'package:musika/common/widgets/button/basic_app_button.dart';
import 'package:musika/core/configs/assets/app_images.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: _signinText(context),
      appBar: BasicAppBar(
        title: Image.asset(
          AppLogo.introLogo,
          height: 150,
          width: 150,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 30
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            const SizedBox(height: 30,),
            _fullNameField(context),
            const SizedBox(height: 20,),
             _emailField(context),
             const SizedBox(height: 20,),
             _passwordField(context),
              const SizedBox(height: 25,),
              BasicAppButton(
                onPressed: () {}, 
                title: 'Create Account'
                ),
          ],
        ),
      ),
    );
  }

  Widget _registerText(){
    return const Text(
      'Register',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      textAlign: TextAlign.center,
    );
  }
  
  Widget _fullNameField(BuildContext context){
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Full Name'
      )
      .applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _emailField(BuildContext context){
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Email'
      )
      .applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _passwordField(BuildContext context){
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Password'
      )
      .applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _signinText(BuildContext context){

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            const Text(
              'Already have an Account?',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            TextButton(
              onPressed: () {}, 
              child: const Text(
              'Sign In')
              )
        ],
        ),
    );
  }

}