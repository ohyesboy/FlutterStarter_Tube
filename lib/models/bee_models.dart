
import 'dart:convert';

List<BeeParagraph> articleFromJson(String str) => List<BeeParagraph>.from(json.decode(str).map((x) => BeeParagraph.fromJson(x)));

class BeeParagraph {
    String translation;
    List<BeeSegment> segments;

    BeeParagraph({
        required this.translation,
        required this.segments,
    });

    factory BeeParagraph.fromJson(Map<String, dynamic> json) => BeeParagraph(
        translation: json["Translation"],
        segments: List<BeeSegment>.from(json["Segments"].map((x) => BeeSegment.fromJson(x))),
    );

}

class BeeSegment {
    int order;
    String text;
    String timeStart;
    String timeEnd;

    BeeSegment({
        required this.order,
        required this.text,
        required this.timeStart,
        required this.timeEnd,
    });

    factory BeeSegment.fromJson(Map<String, dynamic> json) => BeeSegment(
        order: json["Order"],
        text: json["Text"],
        timeStart: json["TimeStart"],
        timeEnd: json["TimeEnd"],
    );
}
