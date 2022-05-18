import 'package:flutter/material.dart';
import 'package:spotify_clone_flutter/core/theme/theme_style.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final GestureTapCallback? onPressed;
  final Color? color;
  const PrimaryButton({ Key? key, required this.text, required this.onPressed, this.color }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        child: Text(text, style: Theme.of(context).textTheme.titleLarge!.copyWith(color: color)),
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(12.0)),
          foregroundColor: MaterialStateProperty.all<Color>(whiteColor),
          backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: const BorderSide(color: primaryColor)
            )
          )
        ),
        onPressed: onPressed,
      ),
    );
  }
}