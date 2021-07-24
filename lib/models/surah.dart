import 'dart:convert';

SurahModel surahModelFromJson(String str) => SurahModel.fromJson(json.decode(str));



class SurahModel {
    SurahModel({
        required this.surah,
    });

    final List<Surah> surah;

    factory SurahModel.fromJson(Map<String, dynamic> json) => SurahModel(
        surah: List<Surah>.from(json["Surah"].map((x) => Surah.fromJson(x))),
    );

}

class Surah {
    Surah({
        required this.id,
        required this.juz,
        required this.juzNameArabic,
        required this.juzNameEnglish,
        required this.surahId,
        required this.surahNameArabic,
        required this.surahNameEnglish,
        required this.surahMeaning,
        required this.page,
        required this.classification,
        required this.ayahNo,
        required this.englishTranslation,
        required this.orignalArabicText,
        required this.arabicText,
        required this.arabicWordCount,
        required this.arabicLetterCount,
        required this.lineStart,
        required this.lineEnd,
        required this.ayaTafseerMoussar,
    });

    final int id;
    final int juz;
    final String juzNameArabic;
    final String juzNameEnglish;
    final int surahId;
    final String surahNameArabic;
    final String surahNameEnglish;
    final String surahMeaning;
    final int page;
    final String classification;
    final int ayahNo;
    final String englishTranslation;
    final String orignalArabicText;
    final String arabicText;
    final int arabicWordCount;
    final int arabicLetterCount;
    final int lineStart;
    final int lineEnd;
    final String ayaTafseerMoussar;

    factory Surah.fromJson(Map<String, dynamic> json) => Surah(
        id: json["id"] == null ? null : json["id"],
        juz: json["Juz"] == null ? null : json["Juz"],
        juzNameArabic: json["JuzNameArabic"] == null ? null : json["JuzNameArabic"],
        juzNameEnglish: json["JuzNameEnglish"] == null ? null : json["JuzNameEnglish"],
        surahId: json["surah_id"] == null ? null : json["surah_id"],
        surahNameArabic: json["SurahNameArabic"] == null ? null : json["SurahNameArabic"],
        surahNameEnglish: json["SurahNameEnglish"] == null ? null : json["SurahNameEnglish"],
        surahMeaning: json["SurahMeaning"] == null ? null : json["SurahMeaning"],
        page: json["page"] == null ? null : json["page"],
        classification: json["Classification"] == null ? null : json["Classification"],
        ayahNo: json["AyahNo"] == null ? null : json["AyahNo"],
        englishTranslation: json["EnglishTranslation"] == null ? null : json["EnglishTranslation"],
        orignalArabicText: json["OrignalArabicText"] == null ? null : json["OrignalArabicText"],
        arabicText: json["ArabicText"] == null ? null : json["ArabicText"],
        arabicWordCount: json["ArabicWordCount"] == null ? null : json["ArabicWordCount"],
        arabicLetterCount: json["ArabicLetterCount"] == null ? null : json["ArabicLetterCount"],
        lineStart: json["line_start"] == null ? null : json["line_start"],
        lineEnd: json["line_end"] == null ? null : json["line_end"],
        ayaTafseerMoussar: json["aya_tafseer_moussar"] == null ? null : json["aya_tafseer_moussar"],
    );


}
