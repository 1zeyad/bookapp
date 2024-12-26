

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> uri_lancher(context ,String urii)async{
  if (urii != null) {
  Uri uri =Uri.parse( urii);
   if(await canLaunchUrl(uri)){
       await launchUrl(uri);
      }
      else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Url Not found')));
      }
}
}
