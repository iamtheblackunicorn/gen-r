// gen-r by Alexander Abraham, The Black Unicorn
// Licensed under the MIT license.

import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Info extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    String infoMessage = AppLocalizations.of(context).infoLabel;
    String versionMessage = AppLocalizations.of(context).versionLabel;
    String authorMessage = AppLocalizations.of(context).authorLabel;
    String licenseMessage = AppLocalizations.of(context).licenseLabel;
    return Scaffold(
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
        backgroundColor: mainColor,
        elevation: stdElevation,
        centerTitle: isSo,
        title: new Padding(
          padding: EdgeInsets.all(paddingTwo),
          child: new Text(
            '$infoMessage',
            style: new TextStyle(
              color: babyWhite,
              fontSize: headingFontSize,
              fontFamily: defaultFont
            )
          )
        )
      ),
      body: new SingleChildScrollView(child:
          new Center(
            child: new Column(
              children: <Widget> [
              new Padding(
                padding: EdgeInsets.all(headingFontSize),
                child: new SizedBox(
                  width: spacerBox,
                  height: spacerBox,
                  child: new Image(
                    image: AssetImage(iconPath),
                  )
                )
              ),
              new Padding(
                padding: EdgeInsets.all(stdPadding),
                child:new SizedBox(
                  height: boxHeight,
                  width: boxWidth,
                  child:new Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(stdRounding)
                    ),
                    color: babyBlack,
                    child: new Padding(
                      padding: EdgeInsets.all(paddingTwo),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget> [
                          new Padding(
                            padding: EdgeInsets.all(stdPadding),
                            child:new Text(
                              '$versionMessage',
                              style: new TextStyle(
                                color: babyPink,
                                fontSize: labelFontSize,
                                fontFamily: defaultFont
                              )
                            )
                          ),
                          new Padding(
                            padding: EdgeInsets.all(stdPadding),
                            child:new Text(
                              '$appVersion',
                              style: new TextStyle(
                                color: babyPink,
                                fontSize: labelFontSize,
                                fontFamily: defaultFont
                              )
                            )
                          ),
                        ]
                      )
                    )
                  )
                )
              ),
              new Padding(
                padding: EdgeInsets.all(stdPadding),
                child:new SizedBox(
                  height: boxHeight,
                  width: boxWidth,
                  child:new Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(stdRounding)
                    ),
                    color: babyBlack,
                    child: new Padding(
                      padding: EdgeInsets.all(paddingTwo),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget> [
                          new Padding(
                            padding: EdgeInsets.all(stdPadding),
                            child:new Text(
                              '$authorMessage',
                              style: new TextStyle(
                                color: babyPink,
                                fontSize: labelFontSize,
                                fontFamily: defaultFont
                              )
                            )
                          ),
                          new Padding(
                            padding: EdgeInsets.all(stdPadding),
                            child:new Text(
                              '$appAuthor',
                              style: new TextStyle(
                                color: babyPink,
                                fontSize: labelFontSize,
                                fontFamily: defaultFont
                              )
                            )
                          ),
                        ]
                      )
                    )
                  )
                )
              ),
              new Padding(
                padding: EdgeInsets.all(stdPadding),
                child:new SizedBox(
                  height: boxHeight,
                  width: boxWidth,
                  child:new Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(stdRounding)
                    ),
                    color: babyBlack,
                    child: new Padding(
                      padding: EdgeInsets.all(paddingTwo),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget> [
                          new Padding(
                            padding: EdgeInsets.all(stdPadding),
                            child:new Text(
                              '$licenseMessage',
                              style: new TextStyle(
                                color: babyPink,
                                fontSize: labelFontSize,
                                fontFamily: defaultFont
                              )
                            )
                          ),
                          new Padding(
                            padding: EdgeInsets.all(stdPadding),
                            child:new Text(
                              '$appLicense',
                              style: new TextStyle(
                                color: babyPink,
                                fontSize: labelFontSize,
                                fontFamily: defaultFont
                              )
                            )
                          ),
                        ]
                      )
                    )
                  )
                )
              ),
            ]
          )
        )
      )
    );
  }
}
