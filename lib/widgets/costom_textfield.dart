import 'package:flutter/material.dart';

import '../constens.dart';

class CostomTextfield extends StatelessWidget {
  final String hint;
  final IconData icon;
  CostomTextfield({required this.icon, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          cursorColor: KMainColor,
          decoration: InputDecoration(
              hintText: hint,
              prefixIcon: Icon(
                icon,
                color: KMainColor,
              ),
              filled: true,
              fillColor: KSecodaryColor,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.white)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.white))),
        ));
  }
}
