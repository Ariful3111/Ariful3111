import 'package:flutter/material.dart';
import 'package:e_bazar/bangla.dart';
import 'package:e_bazar/english.dart';
import 'package:get/get.dart';

class Language extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_us': eng,
    'bn_BD': ban,

  };

}