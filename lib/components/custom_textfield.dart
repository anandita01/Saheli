import 'package:flutter/material.dart';
class CustomTextfield extends StatelessWidget {
  //const CustomTextfield({Key? key}) : super(key: key);
  @required
  final TextEditingController? controller;// controller is a variable that catches the text u have entered
  final String? hintText;

  final String? Function(String?)? validate;
  final String? Function(String?)? onsave;
  final int? maxLine;
  final bool isPassword;
  final bool enable;
  final bool? check;
  final TextInputType? keyboardtype;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final Widget? prefix;
  final Widget? suffix;


  const CustomTextfield({
    super.key,
    this.controller,
    required this.hintText,
     this.validate, this.maxLine,  this.isPassword=false, this.enable=true, this.keyboardtype, this.textInputAction, this.focusNode, required
     this.prefix, this.suffix, this.onsave, this.check,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        enabled: enable == true ? true : enable,
        maxLines: maxLine == null ? 1: maxLine,
        onSaved: onsave,
        focusNode: focusNode,
        textInputAction: textInputAction,
        keyboardType: keyboardtype==null? TextInputType.name: keyboardtype,
        controller: controller,
        validator: validate,
        obscureText: isPassword==false?false:isPassword,
        decoration: InputDecoration(
          prefixIcon: prefix,
          suffixIcon: suffix,
          labelText: hintText?? "Hint text",
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Colors.lightBlue.shade700,
            )
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                style: BorderStyle.solid,
                color: Colors.lightBlue.shade700,
              )
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                style: BorderStyle.solid,
                color: Colors.lightBlue.shade700,
              )
          ),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  style: BorderStyle.solid,
                  color: Colors.redAccent,
                )
            )
        ),
      ),
    );
  }
}


