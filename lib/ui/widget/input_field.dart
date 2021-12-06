part of 'widgets.dart';

class InputField extends StatefulWidget {
  final TextEditingController controller;
  final String? hint;
  final TextInputType? inputType;
  final int? maxInput;
  final int? maxLine;
  final Color? textColor;
  final double? textSize;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const InputField(
    this.controller, {
    this.inputType = TextInputType.name,
    this.hint = "",
    this.maxInput = 20,
    this.maxLine = 1,
    this.textColor = Colors.black87,
    this.textSize = 14,
    this.prefixIcon,
    this.suffixIcon,
    key,
  }) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool isObscureText = true;

  void changeObsecureText() {
    setState(() {
      isObscureText = !isObscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.inputType,
      maxLength: widget.maxInput,
      maxLines: widget.maxLine,
      style: GoogleFonts.poppins(
        color: widget.textColor,
        fontSize: widget.textSize,
      ),
      obscureText:
          (widget.inputType == TextInputType.visiblePassword) ? isObscureText : false,
      decoration: InputDecoration(
        filled: true,
        fillColor: inputBackgroundColor,
        labelText: widget.hint,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: inputBackgroundColor),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
          borderRadius: BorderRadius.circular(8),
        ),
        disabledBorder: InputBorder.none,
        prefixIcon: widget.prefixIcon,
        suffixIcon: (widget.inputType == TextInputType.visiblePassword)
            ? GestureDetector(
                onTap: changeObsecureText,
                child: (isObscureText)
                    ? const Icon(MdiIcons.eye)
                    : const Icon(MdiIcons.eyeOff),
              )
            : widget.suffixIcon,
      ),
    );
  }
}
