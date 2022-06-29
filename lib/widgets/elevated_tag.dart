part of flager_ui;



class FElevatedTag extends StatefulWidget {
  final MaterialColor? color;
  final String labelText;
  final Function? onPressed;
  final bool? disabled;
  final bool? selected;
  final double? labelFontSize;
  final double? iconSize;
  final EdgeInsets? padding;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function? onPrefixTap;
  final Function? onSuffixTap;
  const FElevatedTag({
    this.color,
    this.onPressed,
    this.disabled,
    this.selected,
    this.labelFontSize,
    this.iconSize,
    this.padding,
    this.prefixIcon,
    this.suffixIcon,
    this.onPrefixTap,
    this.onSuffixTap,
    required this.labelText,
    Key? key
  }) : super(key: key);

  @override
  State<FElevatedTag> createState() => _FElevatedTagState();
}

class _FElevatedTagState extends State<FElevatedTag> {


  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: widget.padding ?? EdgeInsets.symmetric(
              vertical: (!kIsWeb && (Platform.isIOS || Platform.isAndroid)) ? 6.0 : 12.0,
              horizontal: 12.0
          ),
          minimumSize: Size(10, 10),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ).copyWith(
          backgroundColor:  MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)){
                return widget.color?.shade300 ?? primaryColor.withAlpha(70);
              }

              return (widget.selected ?? false) ? widget.color?.shade400 ?? primaryColor.withAlpha(150) : widget.color?.shade200 ?? primaryColor.withAlpha(100);
            },
          ),
          overlayColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)){
                return widget.color?.shade300 ?? primaryColor.withAlpha(70);
              }
              if (states.contains(MaterialState.disabled)){
                return widget.color?.shade300 ?? primaryColor.withAlpha(50);
              }


              return (widget.selected ?? false) ? widget.color?.shade400 ?? primaryColor.withAlpha(150) : widget.color?.shade200 ?? primaryColor.withAlpha(100);
            },
          ),
        ),
        onPressed:
        (widget.disabled ?? false) ? null : widget.onPressed != null ? () => widget.onPressed!() : (){} ,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            widget.prefixIcon != null ?
            InkWell(
              onTap: widget.onPrefixTap != null ? () => widget.onPrefixTap!() : null,
              child: Icon(
                  widget.prefixIcon, size: widget.iconSize ?? 16,
                  color: (widget.selected ?? false) ? widget.color?.shade800 ?? primaryColor.withAlpha(255) : widget.color ?? primaryColor.withAlpha(200)
              ),
            ) : const SizedBox.shrink(),
            widget.prefixIcon != null ? const SizedBox(width: 6,) : const SizedBox.shrink(),

            Text(widget.labelText, style: TextStyle(
                fontSize: widget.labelFontSize ?? 12,
                color: (widget.selected ?? false) ? widget.color?.shade800 ?? primaryColor.withAlpha(255) : widget.color ?? primaryColor.withAlpha(200)),
            ),
            widget.suffixIcon != null ? const SizedBox(width: 6,) : const SizedBox.shrink(),
            widget.suffixIcon != null ?
            InkWell(
              onTap: widget.onSuffixTap != null ? () => widget.onSuffixTap!() : null,
              child: Icon(
                  widget.suffixIcon, size: widget.iconSize ?? 16,
                  color: (widget.selected ?? false) ? widget.color?.shade800 ?? primaryColor.withAlpha(255) : widget.color ?? primaryColor.withAlpha(200)
              ),
            ) : const SizedBox.shrink(),
          ],
        )
    );
  }
}
