import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text("DISCOVER", style: Theme.of(context).textTheme.displayMedium),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.message_sharp),
          color: Theme.of(context).primaryColor,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.person_sharp),
          color: Theme.of(context).primaryColor,
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56);
}
