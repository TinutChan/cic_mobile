import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatefulWidget {
  const CustomTextFieldWidget({
    super.key,
    this.controller,
    this.onChanged,
    this.validator,
    this.minLines = 1,
    this.maxLines = 1,
    this.obscureText = false,
    this.focusNode,
    this.onSaved,
    this.onTap,
    this.readOnly = false,
    this.initialValue,
    this.border,
    this.isValidate = false,
    this.isRequird,
    this.labelText,
    this.maxLength,
    this.counterText,
    this.errorText,
  });

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final int? minLines;
  final int? maxLines;
  final bool obscureText;
  final FocusNode? focusNode;
  final FormFieldSetter<String>? onSaved;
  final GestureTapCallback? onTap;
  final bool readOnly;
  final String? initialValue;
  final InputBorder? border;
  final bool? isValidate;
  final bool? isRequird;
  final String? labelText;
  final int? maxLength;
  final bool? counterText;
  final String? errorText;

  @override
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  final _locatTextEditingController = TextEditingController();

  void _initialTextField() {
    (widget.controller ?? _locatTextEditingController).text =
        widget.initialValue ?? '';
  }

  @override
  void initState() {
    _initialTextField();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: widget.controller,
          maxLength: widget.maxLength,
          onChanged: (value) {
            widget.onChanged?.call(value);
            setState(() {});
          },
          validator: widget.validator,
          minLines: widget.minLines,
          maxLines: widget.maxLines,
          obscureText: widget.obscureText,
          focusNode: widget
              .focusNode, // When click done auto go throw to next textfield
          onSaved: widget.onSaved,
          onTap: widget.onTap,
          readOnly: widget.readOnly,
          initialValue: widget.initialValue,
          decoration: InputDecoration(
            border: widget.border,
            contentPadding: const EdgeInsets.all(12.0),
            filled: true,
            alignLabelWithHint: true,
            counterText:
                widget.counterText == null || widget.counterText == false
                    ? ''
                    : null,
            errorBorder: blackOutlineBorder,
            fillColor: (widget.controller ?? _locatTextEditingController)
                    .text
                    .isNotEmpty
                ? widget.readOnly == true
                    ? const Color(0xffF2F2F2).withOpacity(0.5)
                    : const Color(0xffF2F2F2)
                : Colors.white,
            enabledBorder: widget.isValidate!
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        width: widget.readOnly == true ? 0.5 : 1,
                        color: const Color(0xff858C94)),
                  )
                : widget.readOnly ||
                        (widget.controller ?? _locatTextEditingController)
                            .text
                            .isNotEmpty
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )
                    : OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
            focusedBorder: widget.isValidate!
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: widget.readOnly == true ? 0.5 : 1,
                      color: const Color(0xff004AD7),
                    ),
                  )
                : (widget.controller ?? _locatTextEditingController)
                        .text
                        .isEmpty
                    ? trueOutLineBorder
                    : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: widget.readOnly == true ? 0.5 : 1,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
            focusedErrorBorder: blackOutlineBorder,
            label: widget.labelText == null
                ? null
                : Container(
                    padding: EdgeInsets.zero,
                    child: Row(
                      children: [
                        widget.isRequird != null && widget.isRequird!
                            ? Text(
                                '*',
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                      fontSize: 16,
                                      color: Colors.red,
                                    ),
                              )
                            : const SizedBox(),
                        const SizedBox(width: 5.0),
                        Text(widget.labelText ?? ''),
                      ],
                    ),
                  ),
            labelStyle: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: const Color(0xff828282),
                ),
            hintStyle: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff828282),
                ),
            errorStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.red,
                ),
          ),
        ),
        const SizedBox(height: 8.0),
        Visibility(
          visible: widget.isValidate ?? false,
          child: Row(
            children: [
              const Icon(CupertinoIcons.exclamationmark_circle),
              Text(
                widget.errorText ?? '',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.red.shade500),
              )
            ],
          ),
        ),
      ],
    );
  }

  OutlineInputBorder readOnlyOutlineBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: const BorderSide(
      color: Color(0xffF2F2F2),
      width: 1,
    ),
  );
  OutlineInputBorder errorOutlineBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: const BorderSide(
      color: Color(0xffEB5757),
      width: 1,
    ),
  );
  OutlineInputBorder trueOutLineBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(
      color: const Color(0xff858C94).withOpacity(0.7),
      width: 1,
    ),
  );
  OutlineInputBorder blackOutlineBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(
      color: Colors.black.withOpacity(0.7),
      width: 1,
    ),
  );
}
