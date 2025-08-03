import 'package:flutter/material.dart';
import 'package:pokedex/core/theme/colors.dart';

class MyButtonWidget extends StatefulWidget {
  final String? text;
  final Function? onTap;
  final bool? isLoading;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? disabledColor;
  final Color? textColor;
  final Color? borderColor;

  const MyButtonWidget({
    Key? key,
    @required this.text,
    @required this.onTap,
    this.isLoading = false,
    this.height,
    this.width,
    this.backgroundColor,
    this.disabledColor,
    this.textColor,
    this.borderColor,
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
        child: Stack(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: widget.backgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                elevation: 0,
              ),
              onPressed: widget.isLoading ?? true ? functionEmpty : widget.onTap as void Function()?,
              child: widget.isLoading ?? false
                  ? Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              valueColor: const AlwaysStoppedAnimation(Colors.white),
                              backgroundColor: Theme.of(context).primaryColor,
                              strokeWidth: 2,
                            ),
                          )
                        ],
                      ),
                    )
                  : 
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 1.0),
                        child: Text(
                          widget.text ?? "",
                          style: TextStyle(color: widget.textColor ?? Colors.white),
                        ),
                      ),
                    ),
            ),
            Positioned(
              right: -75,
              top: -20,
              bottom: -20,
              child: Image.asset(
                'assets/images/pkeball.png',
                color: translucentWhite,
                fit: BoxFit.cover,
                height: (widget.height ?? 50) + 40,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void functionEmpty() {}
}