import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:promina_app/screens/auth/cubit/login_cubit.dart';
import 'package:promina_app/resources/Managers/colors_manager.dart';
import 'package:promina_app/resources/Managers/routes_manager.dart';
import 'package:promina_app/resources/Managers/values_manager.dart';
import 'package:promina_app/resources/Utils/responsive.dart';
import 'package:promina_app/screens/home/cubit/home_cubit.dart';
import 'package:promina_app/screens/home/widgets/dialog_widget.dart';
import 'package:promina_app/screens/home/widgets/images_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void showAlertialog(BuildContext context) {
    showDialog(context: context, builder: (context) => const DialogWidget());
  }

  @override
  Widget build(BuildContext context) {
    final double width = Responsive.isMobile(context)
        ? MediaQuery.of(context).size.width
        : MediaQuery.of(context).size.width * 0.5;
    return Scaffold(
        body: Center(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/home_bg.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        width: width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Text(
                          "User",
                          style: Theme.of(context).textTheme.displaySmall,
                        )
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/account.png"),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
                const SizedBox(
                  height: AppSize.s10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        context.read<LoginCubit>().logout();
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          ColorManager.White,
                        ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/red.svg"),
                          const SizedBox(
                            width: AppSize.s10,
                          ),
                          Text(
                            "log out",
                            style: TextStyle(color: ColorManager.Black),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        // if (context.mounted) Navigator.pop(true);
                        // Navigator.pushReplacementNamed(
                        //     context, Routes.homeRoute);
                        // pickImage();
                        showAlertialog(context);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          ColorManager.White,
                        ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/orange_icon.svg"),
                          const SizedBox(
                            width: AppSize.s10,
                          ),
                          Text(
                            "upload",
                            style: TextStyle(color: ColorManager.Black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppSize.s20,
                ),
                const ImagesWidget(),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
