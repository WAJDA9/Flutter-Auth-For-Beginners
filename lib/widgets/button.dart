import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String _Buttontext;
  final VoidCallback onClick;
  const Button(this._Buttontext, {super.key, required this.onClick});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin:EdgeInsets.only(top:40),
      child: MaterialButton(
        minWidth: size.width,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
        color: Color.fromARGB(255, 11, 46, 203), // Background color
        textColor: Colors.white, // Text Color (Foreground color)
        onPressed: onClick,
        child: Text(_Buttontext),
        
      ),
    );
  }
}
