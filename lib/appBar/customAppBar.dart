import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? icon;
  final VoidCallback? onIconPressed;
  final VoidCallback? onBackButtonPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    this.icon,
    this.onIconPressed,
    this.onBackButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: onBackButtonPressed ?? () => Navigator.of(context).pop(),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Color(0xff0C1037),
          fontWeight: FontWeight.w700,
        ),
      ),
      actions: [
        if (icon != null && onIconPressed != null)
          Stack(alignment: AlignmentDirectional.topEnd, children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Center(
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                    icon: Icon(icon),
                    iconSize: 18,
                    onPressed: onIconPressed,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    color: const Color(0xffFE4A46),
                    borderRadius: BorderRadius.circular(50)),
                child: const Center(
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ]),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
