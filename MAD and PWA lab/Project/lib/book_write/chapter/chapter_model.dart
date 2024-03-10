import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'chapter_widget.dart' show ChapterWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChapterModel extends FlutterFlowModel<ChapterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for chapterNo widget.
  FocusNode? chapterNoFocusNode;
  TextEditingController? chapterNoController;
  String? Function(BuildContext, String?)? chapterNoControllerValidator;
  // State field(s) for chapterTitle widget.
  FocusNode? chapterTitleFocusNode;
  TextEditingController? chapterTitleController;
  String? Function(BuildContext, String?)? chapterTitleControllerValidator;
  // State field(s) for chapterContent widget.
  FocusNode? chapterContentFocusNode;
  TextEditingController? chapterContentController;
  String? Function(BuildContext, String?)? chapterContentControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    chapterNoFocusNode?.dispose();
    chapterNoController?.dispose();

    chapterTitleFocusNode?.dispose();
    chapterTitleController?.dispose();

    chapterContentFocusNode?.dispose();
    chapterContentController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
