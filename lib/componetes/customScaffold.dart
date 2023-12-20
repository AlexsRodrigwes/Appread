import 'package:appread/componetes/barranav.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends Scaffold {
  // Add other properties if needed

  CustomScaffold({
    Key? key,
    PreferredSizeWidget? appBar,
    Widget? body,
    Widget? bottomNavigationBar,
  }) : super(
            key: key,
            appBar: appBar,
            body: body,
            bottomNavigationBar: bottomNavigationBar,
            resizeToAvoidBottomInset: false);
}
