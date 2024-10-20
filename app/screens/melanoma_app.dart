import 'package:flutter/material.dart';
import './quiz_screen.dart';
import './about.dart';
import './picture_recognition.dart';

List<String> appBars = <String>[
  'Melanoma',
  'Self-diagnosis',
  'Recognition',
];

class MelanomaApp extends StatefulWidget{
  const MelanomaApp({super.key});

  @override
  _MelanomaApp createState() => _MelanomaApp();
}

class _MelanomaApp extends State<MelanomaApp> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Melanoma Self-diagnosis Assistant'),

        notificationPredicate: (ScrollNotification notification) {
          return notification.depth == 1;
        },

        scrolledUnderElevation: 1,
        shadowColor: Theme.of(context).focusColor,
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              icon: const Icon(Icons.help_outline),
              text: appBars[0],
            ),
            Tab(
              icon: const Icon(Icons.drive_file_rename_outline),
              text: appBars[1],
            ),
            Tab(
              icon: const Icon(Icons.add_a_photo),
              text: appBars[2],
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          About(),
          QuizScreen(),
          PictureRecognition(),
        ],
      ),
    );
  }
}