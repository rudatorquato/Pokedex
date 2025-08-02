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

  const MyButtonWidget(
      {Key? key,
      @required this.text,
      @required this.onTap,
      this.isLoading = false,
      this.height,
      this.width,
      this.backgroundColor,
      this.disabledColor,
      this.textColor,
      this.borderColor})
      : super(key: key);

  @override
  State<MyButtonWidget> createState() => _MyButtonWidgetState();
}

class _MyButtonWidgetState extends State<MyButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 50,
      child: ElevatedButton(
          onPressed: widget.isLoading ?? true ? functionEmpty() : widget.onTap,
          // style: ElevatedButton.styleFrom(
          //       primary: Colors.amber,
          //       onPrimary: Colors.red
          //     ),
          style: ElevatedButton.styleFrom(
            backgroundColor: widget.backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
              ),
            ),
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
                          valueColor:
                              const AlwaysStoppedAnimation(Colors.white),
                          backgroundColor: Theme.of(context).primaryColor,
                          strokeWidth: 2,
                        ),
                      )
                    ],
                  ),
                )
              : Text(
                  widget.text ?? "",
                  style: TextStyle(color: widget.textColor ?? Colors.white),
                )),
    );
  }

  functionEmpty() {}
}
