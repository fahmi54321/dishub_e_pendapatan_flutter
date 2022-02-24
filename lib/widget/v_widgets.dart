import 'package:dishub_e_pendapatan_flutter/resource/colors.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:dishub_e_pendapatan_flutter/resource/colors.dart';

class VButtonDefault extends StatelessWidget {
  final String title;
  final double? paddingVertical;
  final double? paddingHorizontal;
  final double height;
  final double? width;
  final Color? colorButton;
  final Color? colorText;
  final FontWeight? fontWeight;
  final double? fontSize;
  final FontStyle? fontStyle;
  final onTap;
  final bool isShadow;

  VButtonDefault(
    this.title, {
    this.paddingHorizontal,
    this.paddingVertical,
    required this.height,
    required this.width,
    this.colorButton,
    this.colorText,
    required this.onTap,
    this.fontWeight,
    this.fontSize,
    this.fontStyle,
    required this.isShadow,
  });

  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: colorText ?? Warna.white,
      //text font color
      primary: colorButton ?? Warna.primaryColor,
      minimumSize: Size(width ?? 0.0, height),
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal ?? 0.0,
          vertical: paddingVertical ?? 0.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      elevation: isShadow ? 0.0 : 0.0,
      shadowColor: isShadow ? Colors.grey : Colors.transparent,
    );

    return ElevatedButton(
      style: raisedButtonStyle,
      onPressed: onTap,
      child: vText(title,
          fontSize: 16,
          fontWeight: fontWeight ?? FontWeight.normal,
          fontStyle: fontStyle ?? FontStyle.normal,
          color: colorText ?? Warna.white,
          align: TextAlign.center),
    );
  }
}

class VButtonDefaultIcon extends StatelessWidget {
  final String title;
  final double? paddingVertical;
  final double? paddingHorizontal;
  final double height;
  final double? width;
  final Color? colorButton;
  final Color? colorText;
  final FontWeight? fontWeight;
  final double? fontSize;
  final FontStyle? fontStyle;
  final onTap;
  final icon;
  final bool isShadow;

  VButtonDefaultIcon(
    this.title, {
    this.paddingHorizontal,
    this.paddingVertical,
    required this.height,
    required this.width,
    this.colorButton,
    this.colorText,
    required this.onTap,
    required this.icon,
    this.fontWeight,
    this.fontSize,
    this.fontStyle,
    required this.isShadow,
  });

  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: colorText ?? Warna.white,
      //text font color
      primary: colorButton ?? Warna.primaryColor,
      minimumSize: Size(width ?? 0.0, height),
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal ?? 0.0,
          vertical: paddingVertical ?? 0.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      elevation: isShadow ? 0.0 : 0.0,
      shadowColor: isShadow ? Colors.grey : Colors.transparent,
    );

    return ElevatedButton.icon(
      style: raisedButtonStyle,
      onPressed: onTap,
      label: icon,
      icon: vText(title,
          fontSize: 16,
          fontWeight: fontWeight ?? FontWeight.normal,
          fontStyle: fontStyle ?? FontStyle.normal,
          color: colorText ?? Warna.white,
          align: TextAlign.center),
    );
  }
}

class VInputText extends StatelessWidget {
  final TextInputType? keyboardType;
  final String hint;
  final TextEditingController? controller;
  final TextCapitalization capitalization;
  final validator;
  final onSaved;
  final onFieldSubmitted;
  final double? width;
  final double? height;
  final onChange;
  final initialValue;
  final suffixIcon;
  final prefixIcon;
  final bool enabled;
  final bool readOnly;
  final int? maxLines;
  final int? minLines;
  final double? fontSize;
  final int? maxLength;
  final bool obscureText;
  final Color? fillColor;
  final Color? activeColor;
  final Color? outlineColor;
  final Color? textColor;
  final double? radius;
  final List<TextInputFormatter>? inputFormatter;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;

  VInputText(
    this.hint, {
    this.keyboardType,
    this.width,
    this.height,
    this.readOnly = false,
    this.controller,
    this.validator,
    this.onSaved,
    this.onFieldSubmitted,
    this.initialValue,
    this.enabled = true,
    this.onChange,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLines,
    this.fontSize,
    this.minLines,
    this.maxLength,
    this.capitalization = TextCapitalization.none,
    this.obscureText = false,
    this.fillColor = Warna.white,
    this.textColor = Warna.darkGrey,
    this.activeColor = Warna.white,
    this.outlineColor = Warna.white,
    this.radius,
    this.inputFormatter,
    this.focusNode,
    this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: TextFormField(
        textInputAction: textInputAction ?? TextInputAction.done,
        inputFormatters: inputFormatter ?? [],
        enabled: enabled,
        initialValue: initialValue ?? null,
        controller: controller ?? null,
        obscureText: obscureText,
        decoration: InputDecoration(
          fillColor: fillColor,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: activeColor ?? Warna.white, width: 1.0),
            borderRadius: BorderRadius.circular(radius ?? 8.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: outlineColor ?? Warna.white, width: 1.0),
            borderRadius: BorderRadius.circular(radius ?? 8.0),
          ),
          hintText: hint,
          contentPadding: EdgeInsets.symmetric(horizontal: 22, vertical: 17),
          hintStyle: TextStyle(fontSize: fontSize, color: textColor),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
        ),
        keyboardType: this.keyboardType ?? TextInputType.text,
        style: TextStyle(
            fontSize: fontSize, color: enabled ? Colors.black : textColor),
        // style: GoogleFonts.ubuntu(
        //     fontSize: fontSize, color: textColor ?? Colors.black),
        textCapitalization: capitalization,
        validator: validator,
        onSaved: onSaved,
        onChanged: onChange,
        onFieldSubmitted: onFieldSubmitted,
        maxLines: maxLines,
        minLines: minLines,
        readOnly: readOnly,
        maxLength: maxLength,
        focusNode: focusNode ?? null,
      ),
    );
  }
}

class VCard extends StatelessWidget {
  Widget child;
  Color borderColor;
  Color bgColor;

  VCard({
    required this.child,
    this.borderColor = Warna.white,
    this.bgColor = Warna.white
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(color: borderColor, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
          bottom: 20,
        ),
        child: child,
      ),
    );
  }
}

class VProgressBar extends StatelessWidget {
  double percent;

  VProgressBar({
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedProgressBar(
      style: RoundedProgressBarStyle(
        borderWidth: 0,
        widthShadow: 0,
        colorBackgroundIcon: Warna.mediumPurple,
        colorProgress: Warna.mediumPurple,
        colorProgressDark: Warna.mediumPurple,
        backgroundProgress: Warna.lightPurple2,
      ),
      margin: EdgeInsets.symmetric(vertical: 16),
      borderRadius: BorderRadius.circular(24),
      percent: percent,
      height: 10,
    );
  }
}

Widget VPopUp({
  required BuildContext context,
  required Widget widget,
}) {
  return Stack(
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 40,
          bottom: MediaQuery.of(context).viewInsets.bottom + 10,
        ),
        child: widget,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              child: Container(
                width: 80,
                height: 8,
                color: Warna.lightGrey,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

class VListTileWhite extends StatelessWidget {
  String title;
  Widget trailing;
  Widget leading;
  final onTap;

  VListTileWhite({
    required this.leading,
    required this.title,
    required this.trailing,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(
          20,
        ),
      ),
      child: Container(
        color: Warna.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 13.5,
          ),
          child: ListTile(
            leading: leading,
            title: Text(
              title,
            ),
            trailing: trailing,
            onTap: onTap,
          ),
        ),
      ),
    );
  }
}

class VListTileRincianPendapatan extends StatelessWidget {
  const VListTileRincianPendapatan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            leading: vText(
              'JAN',
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Warna.primaryColor,
            ),
            title: vText(
              'Rp 0',
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: Warna.primaryColor,
            ),
            subtitle: VProgressBar(
              percent: 99,
            ),
          ),
        ),
        vText('99%',fontWeight: FontWeight.w600,
          fontSize: 10,
          color: Warna.primaryColor,),
      ],
    );
  }
}

class VItemOval extends StatelessWidget {
  const VItemOval({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(
          13,
        )),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 9.5,
            ),
            child: Icon(
              Icons.lock,
              color: Warna.white,
            ),
          ),
          color: Warna.orange,
        ));
  }
}

class VAppBar extends StatelessWidget {
  String title;
  String subTitle;
  Color backgroundColor;
  dynamic onTap;

  VAppBar([
    this.title = '',
    this.backgroundColor = Warna.primaryColorLight,
    this.subTitle = '',
    this.onTap,
  ]);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: subTitle.isEmpty
          ? vText(
              title,
              color: Warna.primaryColor,
            )
          : InkWell(
              onTap: onTap,
              child: Column(
                children: [
                  vText(
                    title,
                    color: Warna.darkGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Administrator',
                          style: TextStyle(
                            color: Warna.primaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        WidgetSpan(
                          child: Icon(Icons.keyboard_arrow_down_outlined,
                              size: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
      backgroundColor: backgroundColor,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Warna.purple,
      ),
      automaticallyImplyLeading: subTitle.isEmpty ? true : false,
    );
  }
}

class VItemFilter extends StatelessWidget {
  String title;
  int indexTap;
  int index;
  Color bgHalaman;

  VItemFilter({
    required this.title,
    required this.indexTap,
    required this.index,
    required this.bgHalaman,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(
        10,
      )),
      child: Container(
        color: index == indexTap ? Warna.primaryColor : bgHalaman,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 16.08,
          ),
          child: Center(
            child: vText(
              title,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: index == indexTap ? Warna.white : Warna.darkGrey,
            ),
          ),
        ),
      ),
    );
  }
}
