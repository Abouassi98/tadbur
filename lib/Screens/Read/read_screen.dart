import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tadbur/Screens/Juzz/components/background.dart';
import 'package:tadbur/components/rounded_button.dart';

import 'package:tadbur/models/surah.dart';

import '../surah_page.dart';

class ReadScreen extends StatefulWidget {
  @override
  _ReadScreenState createState() => _ReadScreenState();
}

class _ReadScreenState extends State<ReadScreen> {
  List<Surah> surahList = [];

  List<String> list2 = [];
  Future<void> loadSurah() async {
    final List<Surah> loaded = [];
    final List<String> list = [];
    String surah = await rootBundle.loadString('assets/surah_1.json');
    var decodedSurah = jsonDecode(surah);
    SurahModel x = SurahModel.fromJson(decodedSurah);
    x.surah.forEach((e) {
      loaded.add(Surah(
        arabicLetterCount: e.arabicLetterCount,
        arabicText: e.arabicText,
        arabicWordCount: e.arabicWordCount,
        ayaTafseerMoussar: e.ayaTafseerMoussar,
        ayahNo: e.ayahNo,
        classification: e.classification,
        englishTranslation: e.englishTranslation,
        id: e.id,
        juz: e.juz,
        juzNameArabic: e.juzNameArabic,
        juzNameEnglish: e.juzNameEnglish,
        lineEnd: e.lineEnd,
        lineStart: e.lineStart,
        orignalArabicText: e.orignalArabicText,
        page: e.page,
        surahId: e.surahId,
        surahMeaning: e.surahMeaning,
        surahNameArabic: e.surahNameArabic,
        surahNameEnglish: e.surahNameEnglish,
      ));
    });

    surahList = loaded.toList();

    for (int i = 0; i < surahList.length; i++) {
      list.add(surahList[i].surahNameArabic);
    }
    print(list[1]);
    list2 = list.toSet().toList();
    print(list2[1]);
  }

  bool load = true;
  @override
  void didChangeDependencies() async {
  
    super.didChangeDependencies();
    if (load) {
      await loadSurah();

      setState(() {
        load = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tadbur App'),
      ),
      body: load
          ? Center(child: CircularProgressIndicator())
          : Background(
              child: Container(
                  child: GridView.builder(
                      padding: EdgeInsets.only(
                          top: 25, bottom: 25, left: 5, right: 5),
                      itemCount: list2.length,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                      ),
                      itemBuilder: (context, index) {
                        return new Container(
                          child: new RoundedButton(
                            text: list2[index],
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SurrahPage(
                                      surah: surahList,
                                      surahid: surahList[index].id,
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        );
                      }))),
    );
  }
}
