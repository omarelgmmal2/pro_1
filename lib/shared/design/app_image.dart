import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class AppImage extends StatelessWidget {
  final String path;
  final double? height, width;
  final BoxFit fit;
  final Color? color;

  const AppImage(
      this.path,
      {
    super.key,
    this.height,
    this.width,
    this.fit = BoxFit.scaleDown,this.color,
  });

  @override
  Widget build(BuildContext context){
    if(path.endsWith("svg",))
    {
      return SvgPicture.asset(
        path,
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    }
    else if(path.startsWith("http",))
    {
      return Image.network(
        path,
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    }
    else if(path.contains("assets",))
    {
      return Image.asset(
        path,
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    }
    else
    {
      return Image.file(
        File(path),
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    }
  }
}