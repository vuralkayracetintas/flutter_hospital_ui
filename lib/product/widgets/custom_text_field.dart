import 'package:flutter/material.dart';
import 'package:flutter_hospital_ui/product/constants/string_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: StringConstants.homeSearchHint,
        prefixIcon: const Icon(Icons.search),
        suffixIcon: const Icon(Icons.filter_list_outlined),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
