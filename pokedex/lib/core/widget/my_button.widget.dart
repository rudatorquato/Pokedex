import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/colors.dart';
class MyButtonWidget extends StatefulWidget {
  final String text;
  final VoidCallback? onTap;
  final bool isLoading;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? textColor;

  const MyButtonWidget({
    Key? key,
    required this.text,
    this.onTap,
    this.isLoading = false,
    this.height,
    this.width,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  @override
  State<MyButtonWidget> createState() => _MyButtonWidgetState();
}

class _MyButtonWidgetState extends State<MyButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Material(
          color: widget.backgroundColor,
          child: InkWell(
            onTap: widget.isLoading ? null : widget.onTap,
            child: Stack(
              children: [
                Positioned(
                  right: -75,
              top: -20,
              bottom: -20,
                  child: Image.asset(
                    'assets/images/pkeball.png',
                    color: translucentWhite,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,top: 20),
                  child: widget.isLoading
                      ? CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(Colors.white),
                        )
                      : Text(
                          widget.text,
                          textAlign: TextAlign.start,
                          style: TextStyle(color: widget.textColor ?? Colors.white),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}