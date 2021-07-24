import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tadbur/Screens/surah_page.dart';
import 'package:tadbur/components/loading_widget.dart';
import 'package:tadbur/components/rounded_numbers.dart';
import 'package:tadbur/controllers/search_controller.dart';
import 'package:tadbur/models/verse.dart';

import '../constants.dart';

class SearchPage extends StatelessWidget {
  final _controller = Get.put(SearchController());

  Widget itemBuilder(context, index) {
    final Verse verse = _controller.foundedVerses[index];
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => SurrahPage(surah: verse.surahModel,surahid: verse.surah.surahId,)));
      },
      child: Card(
        child: ListTile(
          subtitle: SelectableText(
            verse.text,
            style: kTextStyle,
          ),
          title: SelectableText(
            verse.surah.orignalArabicText,
            style: kTextStyle,
          ),
          leading: IconCircularNum(
            number: verse.num,
          ),
          enabled: true,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => SafeArea(
          child: _controller.isBusy
              ? LoadingWidget()
              : Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        onChanged: (value) {
                          _controller.searchByWord(value);
                        },
                        decoration: InputDecoration(
                          hintText: 'كلمة البحث',
                          suffixIcon: Icon(
                            Icons.search,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        child: ListTile(
                          title: Text(
                            'تكررت ${_controller.repeatCount}',
                            textAlign: TextAlign.center,
                            style: kTextStyle,
                          ),
                          enabled: true,
                        ),
                      ),
                      Expanded(
                        child: Obx(
                          () => Scrollbar(
                            child: ListView.builder(
                              itemCount: _controller.foundedVerses.length,
                              itemBuilder: itemBuilder,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
