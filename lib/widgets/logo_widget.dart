import 'package:flutter/material.dart';

class LogoNEARFTHorizontal extends StatelessWidget {
  const LogoNEARFTHorizontal({super.key, this.size});
  final double? size;

  @override
  Widget build(BuildContext context) {
    final IconThemeData iconTheme = Theme.of(context).iconTheme;
    final double? iconSize = size ?? iconTheme.size;
    return Image(
      image: const AssetImage('assets/images/logo_horizontal.png'),
      width: iconSize ?? 240,
      height: iconSize ?? 80,
    );
  }
}

class LogoNEARFTVertical extends StatelessWidget {
  const LogoNEARFTVertical({super.key, this.size});
  final double? size;

  @override
  Widget build(BuildContext context) {
    final IconThemeData iconTheme = Theme.of(context).iconTheme;
    final double? iconSize = size ?? iconTheme.size;
    return Image.asset(
      'assets/images/logo_vertical.png',
      width: iconSize ?? 70,
      height: iconSize ?? 70,
    );
  }
}
