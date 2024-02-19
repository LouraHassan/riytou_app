import 'package:flutter/material.dart';

class FormContainerWidget extends StatefulWidget {
  final TextEditingController? controller;
  final Key? fieldKey;
  final bool? isPasswordField;
  final String? hintText;
  final Icon? icon;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? inputType;

  const FormContainerWidget(
      {this.controller,
      this.fieldKey,
      this.isPasswordField,
      this.hintText,
      this.icon,
      this.labelText,
      this.helperText,
      this.onSaved,
      this.validator,
      this.onFieldSubmitted,
      this.inputType});

  @override
  State<FormContainerWidget> createState() => _FormContainerWidgetState();
}

class _FormContainerWidgetState extends State<FormContainerWidget> {
  bool _obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        style: const TextStyle(color: Colors.amber),
        controller: widget.controller,
        keyboardType: widget.inputType,
        key: widget.fieldKey,
        obscureText: widget.isPasswordField == true ? _obsecureText : false,
        onSaved: widget.onSaved,
        validator: widget.validator,
        onFieldSubmitted: widget.onFieldSubmitted,
        decoration: InputDecoration(
            border: InputBorder.none,
            filled: true,
            prefixIcon: widget.icon,
            prefixIconColor: Colors.amber,
            hintText: widget.hintText,
            hintStyle: const TextStyle(color: Colors.black38),
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obsecureText = !_obsecureText;
                  });
                },
                child: widget.isPasswordField == true
                    ? Icon(
                        _obsecureText ? Icons.visibility_off : Icons.visibility,
                        color:
                            _obsecureText == false ? Colors.amber : Colors.grey,
                      )
                    : const Text(''))),
      ),
    );
  }
}
