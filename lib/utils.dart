// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Font
final fontbasic = GoogleFonts.montserrat(
  color: fontcolor,
  fontSize: 14,
  letterSpacing: 1,
  fontWeight: FontWeight.w500,
);

final fontbasic1 = GoogleFonts.montserrat(
  color: fontcolor,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

//Colors
const a = Colors.white;
Color black = CupertinoColors.black;
Color orange = const Color.fromRGBO(238, 126, 90, 1.0);
Color teal = const Color.fromRGBO(81, 177, 184, 1.0);
Color fontcolor = const Color.fromRGBO(65, 66, 82, 1.0);
Color grey = const Color.fromRGBO(187, 200, 219, 1.0);

//List
final images = [
  'https://img.freepik.com/free-vector/sunset-sky-clouds-city-skyscrapers_107791-10805.jpg?size=626&ext=jpg',
  'https://img.freepik.com/free-vector/landscape-mountains-forest-flying-birds_603843-2191.jpg?size=626&ext=jpg',
  'https://img.freepik.com/free-vector/log-bridge-mountains-cliff-rock-peaks-landscape-with-waterfall-trees-background-beautiful-scenery-nature-view-beam-bridgework-connect-rocky-edges-cartoon-vector-illustration_107791-4568.jpg?w=740&t=st=1664953320~exp=1664953920~hmac=0d24aa3930c0eda3f92c9939b201c34a6248af3abc7c004e02c06e65ee8ff658',
  'https://img.freepik.com/free-vector/vector-illustration-mountain-landscape_1441-72.jpg?w=740&t=st=1664953352~exp=1664953952~hmac=b7cb955e37d9f3c5b8ec41c7776b603af6795ba2bb0ea49473bb8082d1aaa868',
  'https://img.freepik.com/free-vector/earth-view-night-from-alien-planet-neon-space_33099-1876.jpg?size=626&ext=jpg',
  'https://img.freepik.com/free-vector/lonely-man-stand-window-look-night-street-with-vintage-train-riding-along-retro-house-glow-facade-glasses-male-character-look-outside-from-home-room-melancholy-cartoon-vector-illustration_107791-10678.jpg?size=626&ext=jpg'
];

final images2 = [
  'https://images.unsplash.com/photo-1598267410503-d0ef01973f69?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHZpZXd8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1463725876303-ff840e2aa8d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dmlld3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1505142468610-359e7d316be0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHZpZXd8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1582522830284-172076f71e39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHZpZXd8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1628082878598-ed6b930efb74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHZpZXd8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1515224526905-51c7d77c7bb8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fHZpZXd8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1496945589647-8784b8d04934?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTczfHx2aWV3fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1554483004-15f773c84d9b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHZpZXd8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1533231681263-76328007f383?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTF8fHZpZXd8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1583883773638-a8996f5b8cc1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDl8fHZpZXd8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60',
  'https://images.unsplash.com/photo-1529858483845-477149308bea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTh8fHZpZXd8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1563792144333-d3284d9ca3fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nzh8fHZpZXd8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1473772564351-202a22a93101?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODN8fHZpZXd8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1509619159938-4efea8aa33c3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTJ8fHZpZXd8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1525803509870-8c8052716f30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTAwfHx2aWV3fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1508442279723-a01da83be32b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA0fHx2aWV3fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1501183136936-4cba0b804e32?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTc5fHx2aWV3fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1517053238300-5228455c04c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTM1fHx2aWV3fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1483683804023-6ccdb62f86ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTUxfHx2aWV3fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1499752228123-488eb1d280dd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTYwfHx2aWV3fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
];
final images3 = [
  'https://images.unsplash.com/photo-1551232864-3f0890e580d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3R5bGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1492707892479-7bc8d5a4ee93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c3R5bGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1566206091558-7f218b696731?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHN0eWxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1575202332411-b01fe9ace7a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHN0eWxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1578632292335-df3abbb0d586?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHN0eWxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1558769132-cb1aea458c5e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fHN0eWxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1504198458649-3128b932f49e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDZ8fHN0eWxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1555529771-835f59fc5efe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDd8fHN0eWxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1490481651871-ab68de25d43d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDh8fHN0eWxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1519710164239-da123dc03ef4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTV8fHN0eWxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1587802480811-4be6efcdf373?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTl8fHN0eWxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
];

final name = [
  'City',
  'Mountains',
  'Forest',
  'Night ',
  'Space ',
  'Holiday ',
];
