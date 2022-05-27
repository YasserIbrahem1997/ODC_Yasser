import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AlertDialog{

  Key key;
  Widget? title;
  EdgeInsetsGeometry titlePadding;
  TextStyle titleTextStyle;
  Widget content;
  EdgeInsetsGeometry contentPadding= const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0);
  TextStyle contentTextStyle;
  List<Widget> actions;
  EdgeInsetsGeometry actionsPadding= EdgeInsets.zero;
  VerticalDirection actionsOverflowDirection;
      double actionsOverflowButtonSpacing;
  EdgeInsetsGeometry buttonPadding;
      Color backgroundColor;
  double elevation;
      String semanticLabel;
  EdgeInsets insetPadding= const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0);
  Clip clipBehavior= Clip.none;
  ShapeBorder shape;
      bool scrollable;

  AlertDialog(
      this.key,
      this.title,
      this.titlePadding,
      this.titleTextStyle,
      this.content,
      this.contentPadding,
      this.contentTextStyle,
      this.actions,
      this.actionsPadding,
      this.actionsOverflowDirection,
      this.actionsOverflowButtonSpacing,
      this.buttonPadding,
      this.backgroundColor,
      this.elevation,
      this.semanticLabel,
      this.insetPadding,
      this.clipBehavior,
      this.shape,
      this.scrollable);
}


