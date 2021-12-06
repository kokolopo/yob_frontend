part of 'widgets.dart';

Widget iconApp({double? size}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(size ?? 50),
    child: Container(
      width: size ?? 160.w,
      height: size ?? 160.w,
      color: primaryColor,
      child: Image.asset('assets/icons/yob_logo.png'),
    ),
  );
}
