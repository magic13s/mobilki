import 'package:dsw60269/utils/app_images.dart';
import 'package:dsw60269/utils/app_texts.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../register/registe_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 62),
                Image.asset(AppImages.logo, width: 129, height: 129),
                SizedBox(height: 21),
                _signIn,
                SizedBox(height: 46),
                TextFormField(),
                SizedBox(height: 40),
                TextFormField(),
                ElevatedButton(
                  child: const Text('Open route'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const RegisteView(),
                      ),
                    );
                  },
                ),
                GestureDetector(
                  onTap: () => print("kliknieto"),
                  child: Text(AppTexts.signUp, style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget get _signIn {
  return Align(
    alignment: .topLeft,
    child: Text(
      AppTexts.signIn,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: AppColors.purpleColor,
      ),
    ),
  );
}
