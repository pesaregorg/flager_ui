part of flager_ui;

class FCheckbox extends StatefulWidget {

  final ValueChanged<bool>? onChange;
  final MaterialColor? color;
  final IconData? iconData;
  final double? size;
  final double? iconSize;
  final MaterialColor? iconColor;
  final bool value;
  final bool? disabled;

  const FCheckbox({
    Key? key,
    this.onChange,
    this.color,
    this.iconData,
    this.size,
    this.iconSize,
    this.iconColor,
    required this.value,
    this.disabled

  }) : super(key: key);

  @override
  State<FCheckbox> createState() => _FCheckboxState();
}

class _FCheckboxState extends State<FCheckbox> {

  bool _selected = false;

  @override
  void initState(){
    _selected = widget.value;
    super.initState();
  }


  void _onTap() {
    setState(() {
      _selected = !_selected;
    });
    widget.onChange != null ? widget.onChange!(_selected) : null;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: (widget.disabled == null || widget.disabled == false) ? _onTap : (){},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: widget.disabled == true ? FColors.oil.shade300 : FColors.oil.shade500)
        ),
        height: widget.size ?? 24,
        width: widget.size ?? 24,
        child: Padding(
          padding: const EdgeInsets.all(1.5),
          child: widget.value ? Container(
            decoration: BoxDecoration(
              color: widget.disabled == true ? widget.color?.shade100 ?? Theme.of(context).primaryColor.withAlpha(100) : widget.color ?? Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(6),
            ),
            child: Icon(widget.iconData ?? Icons.check_rounded, size: widget.iconSize ?? 14,color: widget.iconColor ?? FColors.white,),
          ) : const SizedBox.shrink(),
        ),
      ),
    );
  }
}
