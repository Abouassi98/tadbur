import 'package:flutter/material.dart';

import 'package:tadbur/models/surah.dart';

class SurrahPage extends StatelessWidget {
  final List<Surah> surah;
  final int surahid;
  const SurrahPage({Key? key, required this.surah, required this.surahid})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = surah.where((element) => element.surahId == surahid).toList();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tadbur App',
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                alignment: WrapAlignment.start,
                direction: Axis.horizontal,
                spacing: 1,
                textDirection: TextDirection.rtl,
                children: list
                    .map((e) {
                      return ListTile(
                        title: Text(
                          e.orignalArabicText,
                          style: TextStyle(fontFamily: 'Amiri'),
                        ),
                        leading: CircleAvatar(
                          child: Text(
                            '${e.ayahNo}',
                            style: TextStyle(fontFamily: 'Amiri'),
                          ),
                        ),
                      );
                    })
                    .toList()
                    .cast<Widget>(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
