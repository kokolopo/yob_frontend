part of 'widgets.dart';

Widget loadingWidget({double widht = 4}) {
  return CircularProgressIndicator(
    color: secondaryColor,
    strokeWidth: widht,
  );
}
