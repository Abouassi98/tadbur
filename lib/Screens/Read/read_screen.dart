import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:tadbur/Screens/Juzz/components/background.dart';
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
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 10),
                  itemCount: list2.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: new InkWell(
                        child: Container(
                          child: Text(
                            '${list2[index]}',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'Amiri'),
                          ),
                          padding: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(212, 175, 55, 1)),
                        ),
                        onTap: () {
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
                  },
                ),
                // child: LayoutBuilder(
                //   builder: (BuildContext context, BoxConstraints constraint) {
                //     var constraints;
                //     return SingleChildScrollView(
                //       child: (ConstrainedBox(
                //         constraints: BoxConstraints.tightFor(height: max(500, constraints.maxHeight)),
                //         child: Column(children: <Widget>[

                //         ],),
                //       )),
                //     );
                //   },
                // ),
                // child: GridView.builder(
                //     padding: EdgeInsets.only(
                //         top: 25, bottom: 25, left: 5, right: 5),
                //     itemCount: list2.length,
                //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                //       maxCrossAxisExtent: 400,
                //       crossAxisSpacing: 10.0,
                //       mainAxisSpacing: 10.0,
                //     ),
                //     itemBuilder: (context, index) {
                //       return new Container(
                //         child: new RaisedButton(
                //           shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(10),
                //           ),
                //           child: Text(list2[index]),
                //           onPressed: () {
                //             Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                 builder: (context) {
                //                   return SurrahPage(
                //                     surah: surahList,
                //                     surahid: surahList[index].id,
                //                   );
                //                 },
                //               ),
                //             );
                //           },
                //         ),
                //       );
                //     }))),
              )));
  }
}
