import 'package:flutter/material.dart';
import 'components/app_bar.dart';
import 'components/search_bar.dart'; // This still points to the correct file
import 'components/image_grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MomentsPage());
  }
}

class MomentsPage extends StatelessWidget {
  const MomentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: const CustomAppBar(),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: MomentsContent(),
      ),
    );
  }
}

class MomentsContent extends StatelessWidget {
  const MomentsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomSearchBar(), // Update here
        SizedBox(height: 16.0),
        Expanded(child: ImageGrid()),
      ],
    );
  }
}
