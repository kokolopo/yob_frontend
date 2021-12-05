part of 'widgets.dart';

Widget textFormat(
  String text,
  double fontSize, {
  TextAlign textAlign = TextAlign.center,
  FontWeight fontWeight = FontWeight.w600,
  Color fontColor = Colors.black87,
  int maxLines = 2,
}) {
  return Text(
    text,
    softWrap: true,
    textAlign: textAlign,
    maxLines: maxLines,
    overflow: TextOverflow.ellipsis,
    style: GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: fontColor,
    ),
  );
}
