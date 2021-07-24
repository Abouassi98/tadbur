
import 'package:tadbur/models/surah.dart';

class Verse {
  int num;
  String text;

  Surah surah;
  List<Surah> surahModel;
  Verse(this.num, this.text, this.surah,this.surahModel);
}
