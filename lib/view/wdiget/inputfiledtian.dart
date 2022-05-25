import 'package:courses_orange/constract.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputFiledtian extends StatelessWidget {

  final String hint;
  final TextEditingController? controller;
  final Widget? widget;

  const InputFiledtian({Key? key,
    required this.hint,
    this.controller,
    this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12,),
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 1,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey,
                  width: 1.0
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                     TextFormField(
                      autofocus: false,
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                          )
                      ),
                      decoration: InputDecoration(
                        hintText: hint,
                        hintStyle: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                            )
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(

                              width: 0,
                            )
                        ),
                        enabledBorder:  UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 0
                            )
                        ),

                      ),
                    )

              ],
            ),
          )
        ],
      ),
    );
  }
}
