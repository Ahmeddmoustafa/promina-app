import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:promina_app/resources/Managers/colors_manager.dart';
import 'package:promina_app/resources/Managers/values_manager.dart';
import 'package:promina_app/screens/home/cubit/home_cubit.dart';

class ImagesWidget extends StatelessWidget {
  const ImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: cubit.images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: AppSize.s10,
            mainAxisSpacing: AppSize.s10,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) => Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: ColorManager.Black),
              image: DecorationImage(
                  image: MemoryImage(cubit.images[index]), fit: BoxFit.cover),
            ),
            // child: Image.memory(
            //   cubit.images[index],
            //   fit: BoxFit.fill,
            // ),
          ),
        );
      },
    );
  }
}
