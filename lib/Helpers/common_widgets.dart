import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonWidget {
  Widget alatsiText(
      {text,
      textMaxline,
      textOverFlow,
      textAlign,
      textColor,
      textSize,
      textWeight}) {
    return Text(text,
        maxLines: textMaxline,
        overflow: textOverFlow,
        textAlign: textAlign,
        style: GoogleFonts.alatsi(
          color: textColor,
          fontSize: textSize,
          fontWeight: textWeight,
        ));
  }

  Future<bool?> commontoast({msg, color}) {
    return Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 1,
        backgroundColor: color,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
