import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:travel_app/pages/detail_page.dart';
import 'package:travel_app/utils.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: selectedIndex,
      child: Scaffold(
        backgroundColor: a,
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          // leading: Padding(
          //   padding: const EdgeInsets.only(left: 16),
          //   child: CircleAvatar(
          //     backgroundColor: a,
          //     radius: 24.0,
          //     child: Icon(
          //       CupertinoIcons.back,
          //       size: 18.0,
          //       color: teal,
          //     ),
          //   ),
          // ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: CircleAvatar(
                backgroundColor: a,
                radius: 24,
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
            )
          ],
        ),
        body: Stack(
          children: [
            Container(
              height: 390,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://www.theurbanist.org/wp-content/uploads/2016/07/Google-Wallingford-Zoomed-Out.png",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0, top: 120),
              child: Container(
                height: 70.0,
                width: 70,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1624122403892-d44751de056e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDN8fHNob3B8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130.0, top: 230),
              child: Container(
                height: 70.0,
                width: 70,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1581683705068-ca8f49fc7f45?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHNob3B8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 310.0, top: 210),
              child: Container(
                height: 70.0,
                width: 70,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1616091025259-4acbb7cd2fa9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTl8fHNob3B8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 640,
              right: 100,
              child: Container(
                height: 70.0,
                width: 70,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://asset.kompas.com/crop/0x0:777x518/750x500/data/photo/2019/10/17/5da85a643fafc.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 2.5),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: a,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: ScrollController(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 60,
                          padding: const EdgeInsets.only(left: 20),
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 24,
                                offset: Offset(0, 11),
                              ),
                            ],
                            color: a,
                            borderRadius: BorderRadius.all(
                              Radius.circular(64.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  cursorColor: teal,
                                  style: GoogleFonts.montserrat(
                                    color: fontcolor,
                                    fontSize: 15,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  initialValue: null,
                                  decoration: InputDecoration.collapsed(
                                    filled: true,
                                    fillColor: Colors.transparent,
                                    hintText: "Search",
                                    hintStyle: GoogleFonts.montserrat(
                                      color: fontcolor,
                                      fontSize: 15,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  onChanged: (value) {},
                                ),
                              ),
                              CircleAvatar(
                                radius: 28,
                                backgroundColor: teal,
                                child: const Icon(
                                  CupertinoIcons.search,
                                  color: a,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 50.0,
                        ),
                        Row(
                          children: [
                            RotatedBox(
                              quarterTurns: 1,
                              child: SizedBox(
                                width: 300,
                                child: TabBar(
                                  isScrollable: false,
                                  labelStyle: GoogleFonts.montserrat(
                                    color: fontcolor,
                                    fontSize: 14,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  tabs: const [
                                    Tab(
                                      text: "Home",
                                    ),
                                    Tab(
                                      text: "Local",
                                    ),
                                    Tab(
                                      text: "View",
                                    ),
                                  ],
                                  labelColor: fontcolor,
                                  indicator: DotIndicator(
                                    color: fontcolor,
                                    distanceFromCenter: 16,
                                    radius: 3,
                                    paintingStyle: PaintingStyle.fill,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                padding: const EdgeInsets.only(left: 20),
                                height:
                                    MediaQuery.of(context).size.width / 1.36,
                                width: double.maxFinite,
                                child: TabBarView(
                                  children: [
                                    //Home
                                    SingleChildScrollView(
                                      controller: ScrollController(),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    7,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    3.5,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      "https://images.unsplash.com/photo-1516834611397-8d633eaec5d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cmlvJTIwZGUlMjBqYW5laXJvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(
                                                      16.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10.0,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Rio De Janeiro",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      color: fontcolor,
                                                      fontSize: 16,
                                                      letterSpacing: 1,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  FittedBox(
                                                    child: SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              2.3,
                                                      child: Text(
                                                        "Rio de Janeiro merupakan ibu kota negara bagian Rio de Janeiro, di bagian tenggara Brasil. Kota ini mempunyai luas sebesar 1.256 km² dan penduduk sekitar 6.150.000 juta jiwa. Sekitar 10 juta orang tinggal di wilayah metropolitan Rio de Janeiro, yang saat ini merupakan kota terbesar keempat di dunia",
                                                        maxLines: 6,
                                                        overflow:
                                                            TextOverflow.fade,
                                                        style: fontbasic1,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 16.0,
                                          ),
                                          GestureDetector(
                                            onTap: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const DetailPage()),
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      7,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      3.5,
                                                  decoration:
                                                      const BoxDecoration(
                                                    image: DecorationImage(
                                                      image: NetworkImage(
                                                        "https://images.unsplash.com/photo-1548919973-5cef591cdbc9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c2hhbmdoYWl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                        16.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10.0,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Shanghai",
                                                      style: GoogleFonts
                                                          .montserrat(
                                                        color: fontcolor,
                                                        fontSize: 16,
                                                        letterSpacing: 1,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 10.0,
                                                    ),
                                                    FittedBox(
                                                      child: SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            2.3,
                                                        child: Text(
                                                          "Shanghai adalah kota terbesar Republik Rakyat Tiongkok dan terletak di tepi delta Changjiang. Perkembangan kota ini dalam beberapa dekade terakhir telah membuatnya menjadi pusat ekonomi, perdagangan, finansial dan komunikasi terpenting Tiongkok",
                                                          maxLines: 6,
                                                          overflow:
                                                              TextOverflow.fade,
                                                          style: fontbasic1,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 16.0,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    7,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    3.5,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      "https://images.unsplash.com/photo-1517154421773-0529f29ea451?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(
                                                      16.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10.0,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Seoul",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      color: fontcolor,
                                                      fontSize: 16,
                                                      letterSpacing: 1,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  FittedBox(
                                                    child: SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              2.3,
                                                      child: Text(
                                                        "Seoul, secara resmi dikenal sebagai Kota Khusus Seoul, adalah ibu kota Korea Selatan yang berusia lebih dari 600 tahun dan hingga 1945, ibu kota dari seluruh Korea. Kota ini merupakan Kota Khusus Korea.",
                                                        maxLines: 6,
                                                        overflow:
                                                            TextOverflow.fade,
                                                        style: fontbasic1,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    //Local
                                    SingleChildScrollView(
                                      controller: ScrollController(),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    7,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    3.5,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      "https://images.unsplash.com/photo-1575864716793-49a09717eb03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8amFrYXJ0YXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(
                                                      16.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10.0,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Jakarta",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      color: fontcolor,
                                                      fontSize: 16,
                                                      letterSpacing: 1,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  FittedBox(
                                                    child: SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              2.3,
                                                      child: Text(
                                                        "Jakarta, atau secara resmi bernama Daerah Khusus Ibukota Jakarta atau Jakarta Raya adalah ibu kota negara dan kota terbesar di Indonesia. Menurut sistem pembagian administratif Indonesia, Jakarta merupakan provinsi dengan status daerah khusus.",
                                                        maxLines: 6,
                                                        overflow:
                                                            TextOverflow.fade,
                                                        style: fontbasic1,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 16.0,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    7,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    3.5,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      "https://images.unsplash.com/photo-1549942166-e9d7b7009443?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bWFrYXNzYXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(
                                                      16.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10.0,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Makassar",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      color: fontcolor,
                                                      fontSize: 16,
                                                      letterSpacing: 1,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  FittedBox(
                                                    child: SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              2.3,
                                                      child: Text(
                                                        "Makassar adalah ibu kota provinsi Sulawesi Selatan, Indonesia. Kota yang sejak 1971 hingga 1999 dikenal secara resmi sebagai Ujungpandang ini merupakan kota terbesar di wilayah Indonesia Timur dan pusat kota terbesar kelima di Indonesia setelah Jakarta, Surabaya, Bandung, dan Medan",
                                                        maxLines: 6,
                                                        overflow:
                                                            TextOverflow.fade,
                                                        style: fontbasic1,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 16.0,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    7,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    3.5,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      "https://images.unsplash.com/photo-1599466610297-aaced28a8a1c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGFkYW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(
                                                      16.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10.0,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Padang",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      color: fontcolor,
                                                      fontSize: 16,
                                                      letterSpacing: 1,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  FittedBox(
                                                    child: SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              2.3,
                                                      child: Text(
                                                        "Padang adalah kota terbesar di pantai barat Pulau Sumatra sekaligus ibu kota Provinsi Sumatra Barat, Indonesia. Kota ini adalah pintu gerbang barat Indonesia dari Samudra Hindia.",
                                                        maxLines: 6,
                                                        overflow:
                                                            TextOverflow.fade,
                                                        style: fontbasic1,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    //View
                                    SingleChildScrollView(
                                      controller: ScrollController(),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    7,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    3.5,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      "https://images.unsplash.com/photo-1535916707207-35f97e715e1c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8dmlld3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(
                                                      16.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10.0,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Turkey",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      color: fontcolor,
                                                      fontSize: 16,
                                                      letterSpacing: 1,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  FittedBox(
                                                    child: SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              2.3,
                                                      child: Text(
                                                        "Turki atau Turkiye, secara resmi disebut sebagai Republik Turkiye adalah sebuah negara kesatuan dengan sistem presidensial di kawasan Eurasia. Wilayahnya terbentang dari Semenanjung Anatolia di Asia Barat Laut hingga daerah Balkan di Eropa Tenggara.",
                                                        maxLines: 6,
                                                        overflow:
                                                            TextOverflow.fade,
                                                        style: fontbasic1,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 16.0,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    7,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    3.5,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      "https://images.unsplash.com/photo-1582522830284-172076f71e39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(
                                                      16.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10.0,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Toronto",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      color: fontcolor,
                                                      fontSize: 16,
                                                      letterSpacing: 1,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  FittedBox(
                                                    child: SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              2.3,
                                                      child: Text(
                                                        "Toronto adalah kota terbesar di Kanada dan merupakan ibu kota provinsi Ontario. Populasi Toronto adalah 2.518.772; dan yang di Daerah Toronto Raya adalah 5.715.386. Penghuni Toronto dijuluki Torontonian.",
                                                        maxLines: 6,
                                                        overflow:
                                                            TextOverflow.fade,
                                                        style: fontbasic1,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 16.0,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    7,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    3.5,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      "https://images.unsplash.com/photo-1583883773638-a8996f5b8cc1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(
                                                      16.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10.0,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Deutschland",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      color: fontcolor,
                                                      fontSize: 16,
                                                      letterSpacing: 1,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  FittedBox(
                                                    child: SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              2.3,
                                                      child: Text(
                                                        "Jerman, secara resmi disebut sebagai Republik Federal Jerman adalah negara berbentuk federasi di Eropa. Negara ini memiliki posisi ekonomi dan politik yang sangat penting di Eropa maupun di dunia.",
                                                        maxLines: 6,
                                                        overflow:
                                                            TextOverflow.fade,
                                                        style: fontbasic1,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
