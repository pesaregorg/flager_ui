part of flager_ui;

class FRadio extends StatefulWidget {
  final String value;
  final String? groupValue;
  final bool? disabled;
  final double? size;
  final MaterialColor? color;
  final ValueChanged<String>? onChange;

  const FRadio({
    Key? key,
    required this.value,
    required this.groupValue,
    this.disabled,
    this.size,
    this.color,
    this.onChange,


  }) : super(key: key);

  @override
  State<FRadio> createState() => _FRadioState();
}

class _FRadioState extends State<FRadio> {

/*
  String? _value;

  @override
  void initState(){
    _value = widget.value;
    super.initState();
  }
*/


  void _onTap() {
    widget.onChange != null ? widget.onChange!(widget.value) : null;
  }


  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: const BoxDecoration(
        shape: BoxShape.circle
      ),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: (widget.disabled == null || widget.disabled == false) ? _onTap : (){},
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: widget.disabled == true ? FColors.oil.shade300 : FColors.oil.shade500)
          ),
          height: widget.size ?? 24,
          width: widget.size ?? 24,
          child: Padding(
            padding: const EdgeInsets.all(1.5),
            child: widget.value == widget.groupValue ? Container(
              decoration: BoxDecoration(
                color: widget.disabled == true ? widget.color?.shade100 ?? Theme.of(context).primaryColor.withAlpha(100) : widget.color ?? Theme.of(context).primaryColor,
                shape: BoxShape.circle,
              ),
            ) : const SizedBox.shrink(),
          ),
        ),
      ),
    );
  }
}
