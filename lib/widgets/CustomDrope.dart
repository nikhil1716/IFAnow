import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'buildtext.dart';

class BuildCustomDropDown<T> extends StatelessWidget {
  const BuildCustomDropDown({
    Key? key,
    required this.value,
    required this.items,
    required this.onChanged,
    required this.labelText,
    this.validator,
    required this.hindtext,
  }) : super(key: key);

  final T? value;
  final List<DropdownMenuItem<T>>? items;
  final ValueChanged<T?>? onChanged;
  final String? labelText;
  final FormFieldValidator<T>? validator;
  final String hindtext;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return DropdownButtonHideUnderline(
      child: ButtonTheme(
        // alignedDropdown: true,
        child: DropdownButtonFormField<T>(
          icon: const Icon(MdiIcons.chevronDown),
          hint: BuildText(
            hindtext,
            color: Colors.black,
            fontSize: width > 600 ? 12.sp : 16.sp,
            fontFamily: 'Lato',
          ),
          style: TextStyle(fontSize: 18.sp),
          isExpanded: true,
          value: value,
          elevation: 16,
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            labelText: labelText,
            // labelStyle: labelTextStyle.copyWith(fontSize: 14.sp),
            // errorStyle: errorTextStyle,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            contentPadding: EdgeInsets.all(14.w),
          ),
          onChanged: onChanged,
          validator: validator,
          items: items,
        ),
      ),
    );
  }
}
