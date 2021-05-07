// gen-r by Alexander Abraham, The Black Unicorn
// Licensed under the MIT license.

import 'o.dart';
import 'dart:io';
import 'info.dart';
import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Input extends StatelessWidget {
  Widget build(BuildContext context){
    TextEditingController inputController = new TextEditingController();
    String dataMessage = AppLocalizations.of(context).dataLabel;
    String generateMessage = AppLocalizations.of(context).generateLabel;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: mainColor,
      extendBody: isSo,
      appBar: new AppBar(
        elevation: stdElevation,
        centerTitle: isSo,
        backgroundColor: mainColor,
        title: new Padding(
          padding: EdgeInsets.all(stdPadding),
          child: new Text(
            appTitle,
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
              padding: EdgeInsets.all(stdPadding),
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
                          '$dataMessage:',
                          style: new TextStyle(
                            color: babyWhite,
                            fontSize: labelFontSize,
                            fontFamily: defaultFont
                          )
                        )
                      ),
                      new Padding(
                        padding: EdgeInsets.all(stdPadding),
                        child: new TextField(
                          cursorColor: babyWhite,
                          cursorWidth: stdLineDimension,
                          controller: inputController,
                          decoration: new InputDecoration(
                            counterText: '',
                            hintText: '',
                            hintStyle: TextStyle(
                              fontSize: stdPadding,
                              color: babyWhite,
                              fontFamily: defaultFont
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: babyWhite,
                                width: stdLineDimension
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: babyWhite,
                                width: stdLineDimension
                              ),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: babyWhite,
                                width: stdLineDimension
                              ),
                            ),
                          ),
                          style: TextStyle(
                            color: babyWhite,
                            fontSize: stdPadding,
                            fontFamily: defaultFont
                          )
                        )
                      )
                    ]
                  )
                )
              )
            ),
            new SizedBox(
              height: spacerBox
            ),
          ]
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: new Container(
        height: fabDimension,
        width: fabDimension,
        child: new FittedBox(
          child: new Padding(
            padding: EdgeInsets.all(paddingOne),
            child: new FloatingActionButton(
              tooltip: '$generateMessage',
              backgroundColor: babyBlack,
              foregroundColor: babyPink,
              child: Icon(
                Icons.add_rounded,
                color: babyPink,
                size: stdIconSize,
              ),
              elevation: stdElevation,
              onPressed: () {
                String input = inputController.text;
                if (input == null || input == ''){}
                else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Output(
                        data: inputController.text
                      )
                    )
                  );
                }
              }
            )
          )
        )
      ),
      bottomNavigationBar: new BottomAppBar(
        color: babyBlack,
        shape: CircularNotchedRectangle(),
        child: new Row(
          children: <Widget> [
            new Padding(
              padding: EdgeInsets.all(paddingTwo),
              child: IconButton(
                icon: Icon(
                  Icons.sort_rounded,
                  color: babyPink,
                  size: stdIconSize,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Info()
                    )
                  );
                },
              )
            ),
            new Padding(
              padding: EdgeInsets.all(paddingTwo),
              child: IconButton(
                icon: Icon(
                  Icons.exit_to_app,
                  color: babyPink,
                  size: stdIconSize,
                ),
                onPressed: () {
                  exit(0);
                },
              )
            )
          ]
        )
      )
    );
  }
}
