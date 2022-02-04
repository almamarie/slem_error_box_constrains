import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const slemTextColor = Color(0xFF088F97);

var textInputDecoration = InputDecoration(
  
  border: OutlineInputBorder(
    
    borderRadius: BorderRadius.circular(16.r),
    borderSide: const BorderSide(color: slemTextColor),
    
  ),
  focusedBorder: OutlineInputBorder(
    
    borderRadius: BorderRadius.circular(16.r),
    borderSide: const BorderSide(color: slemTextColor),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.r),
    borderSide: const BorderSide(color: slemTextColor),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.r),
    borderSide: const BorderSide(color: Colors.red),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.r),
    borderSide: const BorderSide(color: Colors.red),
  ),
  
);

var hintTextStyle = const TextStyle(
  color: Color(0xFF088F97),
  fontSize: 10,
);

TextFormField customisedInputField(
    TextEditingController controller, String hint) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      hintText: hint,
      hintStyle: hintTextStyle,
    ),
  );
}

TextStyle slemTextStyle = TextStyle(
    color: slemTextColor,
    fontSize: 10.sp,
    fontWeight: FontWeight.w700,
    fontFamily: 'FacebookSansRegular');
