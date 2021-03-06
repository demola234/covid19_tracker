/*
*
* saves raw data form api.covid19india.org
*
* Not in use anymore as Raw data size is increasing rapidly and
* complete information is not available
*
 */


import 'dart:async';

import 'package:covid19_tracker/utilities/helpers/network_handler.dart';

class RawData{

  static Future _data;

  static Future getInstance(){
    if(_data == null){
      NetworkHandler _networkHandler = NetworkHandler.getInstance();
      _data = _networkHandler.getRawData();
    }
    return _data;
  }

  static void refresh(){
    NetworkHandler networkHandler = NetworkHandler.getInstance();
    _data = networkHandler.getRawData();
  }

}