import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:promina_app/resources/Managers/colors_manager.dart';
import 'package:promina_app/screens/home/cubit/home_cubit.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return Dialog(
      backgroundColor: Colors.white.withOpacity(0.3),
      clipBehavior: Clip.antiAlias,
      insetAnimationDuration: const Duration(milliseconds: 500),
      insetAnimationCurve: Curves.easeIn,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 4,
          sigmaY: 4,
        ), // Adjust the sigma values for desired blur intensity
        child: Container(
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              border: Border.all(color: ColorManager.White)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () async {
                    cubit.pickGalleryImage();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      ColorManager.White,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset('assets/gallery.svg'),
                      Text(
                        "Gallery",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () async {
                    // pickImage();
                    cubit.pickCameraImage();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      ColorManager.White,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/camera.png',
                        height: 50,
                        width: 50,
                      ),
                      Text(
                        "Camera",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
