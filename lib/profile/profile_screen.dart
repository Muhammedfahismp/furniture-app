import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen{
  final String name;
  final Icon Icons;
  final Icon Icon1;
  ProfileScreen({required this.name,required this.Icons,required this.Icon1});
  
}
List<ProfileScreen> profileData=[
  ProfileScreen(name: "Profile", Icons: Icon(Icons.person_outline),Icon1: Icon(Icons.arrow_forward_ios_rounded)),
  ProfileScreen(name: "Saved Address", Icons: Icon(Icons.location_on_outlined),Icon1: Icon(Icons.arrow_forward_ios_rounded)),
  ProfileScreen(name: "Help Center", Icons: Icon(Icons.help_outline_outlined),Icon1: Icon(Icons.arrow_forward_ios_rounded)),
  ProfileScreen(name: "Emergency Contact", Icons: Icon(Icons.call_outlined),Icon1: Icon(Icons.arrow_forward_ios_rounded)),
  ProfileScreen(name: "Settings", Icons: Icon(Icons.settings_outlined),Icon1: Icon(Icons.arrow_forward_ios_rounded)),
  ProfileScreen(name: "Send Feedback", Icons: Icon(Icons.send_outlined),Icon1: Icon(Icons.arrow_forward_ios_rounded)),
  ProfileScreen(name: "Share This App", Icons: Icon(Icons.share_outlined),Icon1: Icon(Icons.arrow_forward_ios_rounded)),  
  ];