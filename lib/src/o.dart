// gen-r by Alexander Abraham, The Black Unicorn
// Licensed under the MIT license.

import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Output extends StatefulWidget{
  final String data;
  Output({
    Key key,
    @required this.data
  }) : super(key: key);
  @override
  OutputState createState() => OutputState();
}
class OutputState extends State<Output> {
  String qrData;
  @override
  void initState(){
    qrData = widget.data;
  }
  @override
  Widget build(BuildContext context){
    String codeMessage = AppLocalizations.of(context).codeLabel;
    return Scaffold(
      extendBody: isSo,
      backgroundColor: mainColor,
      appBar: new AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: babyWhite,
            size: stdIconSize
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: stdElevation,
        backgroundColor: mainColor,
        centerTitle: isSo,
        title: new Padding(
          padding: EdgeInsets.all(stdPadding),
          child: new Text(
            '$codeMessage',
            style: new TextStyle(
              color: babyWhite,
              fontFamily: defaultFont,
              fontSize: headingFontSize
            )
          )
        )
      ),
      body: new Center(
        child: new Column(
          children: <Widget> [
            new SizedBox(
              height: spacerBox
            ),
            new Padding(
              padding: EdgeInsets.all(headingFontSize),
              child:Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      babyBlue,
                      babyPink
                    ]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(headingFontSize)),
                ),
                child: new Center(
                  child: new Column(
                    children: <Widget> [
                      new Padding(
                        padding: EdgeInsets.all(stdPadding),
                        child: new Text(
                          '$codeMessage:',
                          style: new TextStyle(
                            color: babyWhite,
                            fontSize: labelFontSize,
                            fontFamily: defaultFont
                          )
                        )
                      ),
                      new Padding(
                        padding: EdgeInsets.all(stdPadding),
                        child: QrImage(
                          backgroundColor: Colors.transparent,
                          foregroundColor: babyWhite,
                          data: qrData,
                          version: QrVersions.auto,
                          size: spacerBox,
                        ),
                      )
                    ]
                  )
                )
              )
            ),
            new SizedBox(
              height: spacerBox
            )
          ]
        )
      ),
    );
  }
}
