import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: const Color(0xfff5e6df),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          icon: SvgPicture.asset(
            'assets/Icons/fi-br-search.svg',
            width: 24,
            height: 24,
          ),
          hintText: 'Cari moment...',
          border: InputBorder.none,
          iconColor: const Color(0xFF593F3F),
        ),
      ),
    );
  }
}
