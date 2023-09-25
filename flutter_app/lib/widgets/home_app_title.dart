import 'package:flutter/material.dart';
import 'package:flutter_app/design/color.dart';

class HomeAppBarTitle extends StatelessWidget {
  const HomeAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.only(right: 12),
          decoration: const BoxDecoration(
              color: Colors.black12,
              image:
                  DecorationImage(image: AssetImage('assets/images/user.png')),
              borderRadius: BorderRadius.all(Radius.circular(12))),
        ),
        Expanded(
          child: Text(
            'Alejandro Vargas',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        ContainerHeaderIcon(
            configMargin: const EdgeInsets.only(right: 12),
            iconButton: IconButton(
                onPressed: () => print('Presionaron el icono'),
                icon: const Icon(
                  Icons.notifications,
                  color: AppColors.brandPrimaryColor,
                ))),
        ContainerHeaderIcon(
            iconButton: IconButton(
                onPressed: () => print('Presionaron el icono más'),
                icon: const Icon(
                  Icons.more_vert,
                  color: AppColors.brandPrimaryColor,
                ))),
      ],
    );
  }
}

class ContainerHeaderIcon extends StatelessWidget {
  final IconButton iconButton;
  final EdgeInsets? configMargin;
  const ContainerHeaderIcon(
      {super.key, required this.iconButton, this.configMargin});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: configMargin,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.brandLightColorBorder),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      child: iconButton,
    );
  }
}
