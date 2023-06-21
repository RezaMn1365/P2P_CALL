import 'package:flutter/material.dart';
import 'package:screen_recorder_device/main.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget(
      {required this.PaddingValue,
      required this.hint,
      required this.lable,
      required this.onTextFormFieldValueChanged,
      required this.textFormFieldController,
      super.key});

  Function onTextFormFieldValueChanged;

  double PaddingValue;
  String hint;
  String lable;

  TextEditingController textFormFieldController;

  @override
  Widget build(BuildContext context) {
    // textFormFieldController.text = inputText;
    return Padding(
        padding: EdgeInsets.all(PaddingValue),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: TextFormField(
            onChanged: (value) {
              onTextFormFieldValueChanged(value);
            },
            obscureText: false,
            autofillHints: const [AutofillHints.email],
            keyboardType: TextInputType.text,
            textCapitalization: TextCapitalization.none,
            controller: textFormFieldController,
            // validator: (value) => _callValidator(),
            decoration: InputDecoration(
              // floatingLabelAlignment: FloatingLabelAlignment.start,
              alignLabelWithHint: true,
              // filled: true,
              // fillColor: Colors.purple[50],
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: appColor, width: 2.0),
                borderRadius: BorderRadius.circular(15.0),
              ),

              labelText: lable,
              hintText: hint,
              // prefixIcon: const Icon(Icons.lock),
              // suffixIcon: IconButton(
              //     onPressed: () => textFormFieldController.clear(),
              //     icon: const Icon(Icons.close)),
            ),
          ),
        ));
  }
}
