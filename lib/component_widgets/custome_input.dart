import 'package:flutter/material.dart';
class CustomInput extends StatefulWidget {
  final String hintText;
  final void Function(String)? onChanged;

  const CustomInput({
    required this.hintText,
    required this.onChanged,
    super.key});

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(color: Colors.blue,width: 1)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          onChanged:widget.onChanged,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.location_searching_outlined),
            hintText: widget.hintText,
            border: InputBorder.none
          ),
        ),
      ),
    );
  }
}