import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../utils.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: a,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: GestureDetector(
            onTap: () async {
              bool confirm = false;

              await showDialog<void>(
                context: context,
                barrierDismissible: true,
                builder: (BuildContext context) {
                  return Center(
                    child: AlertDialog(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        insetPadding: const EdgeInsets.all(16),
                        content: Container(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 30, bottom: 16),
                          height: 200,
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: a,
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 16,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Are you sure want to close',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '? ',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: orange,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Because you will lost best offer',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '? ',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: orange,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text(
                                      'I\'m Back',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        color: orange,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      confirm = true;
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'i\'Know',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        color: orange,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                  );
                },
              );

              if (confirm) {
                Navigator.pop(context);
              }
            },
            child: CircleAvatar(
              backgroundColor: a,
              radius: 24.0,
              child: Icon(
                CupertinoIcons.back,
                size: 18.0,
                color: teal,
              ),
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(
                "https://i.ibb.co/PGv8ZzG/me.jpg",
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: teal,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(64.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Book Now",
                    style: GoogleFonts.montserrat(
                      color: a,
                      fontSize: 16,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: 390,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1548919973-5cef591cdbc9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c2hhbmdoYWl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.5),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shanghai",
                                style: GoogleFonts.montserrat(
                                  color: fontcolor,
                                  fontSize: 34,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Shanghai, Tiongkok",
                                style: GoogleFonts.montserrat(
                                  color: fontcolor,
                                  fontSize: 16,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: 38.0,
                            width: 100,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 2),
                            decoration: BoxDecoration(
                              color: teal,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  64.0,
                                ),
                              ),
                            ),
                            child: Text(
                              "⭐️4,5/5",
                              style: GoogleFonts.montserrat(
                                color: a,
                                fontSize: 16,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ReadMoreText(
                        'adalah kota terbesar Republik Rakyat Tiongkok dan terletak di tepi delta Changjiang. Perkembangan kota ini dalam beberapa dekade terakhir telah membuatnya menjadi pusat ekonomi, perdagangan, finansial dan komunikasi terpenting Tiongkok. Sebelum terbentuknya kota Shanghai, Shanghai adalah bagian dari kotamadya Songjiang yang diatur oleh provinsi Suzhou. Kotamadya ini dibentuk sekitar 1000 tahun yang lalu. Sejak zaman pemerintahan Dinasti Song (960-1279), Shanghai secara bertahap berkembang menjadi pelabuhan yang sibuk. Kota Shanghai mulai dibangun sejak didirikannya tembok kota pada tahun 1553 SM. Tetapi sebelum abad ke-19, Shanghai bukanlah kota yang besar, dan bila dibandingkan dengan kota-kota besar Tiongkok lainnya, Shanghai hanya memiliki sedikit bangunan bersejarah. Sebelum tahun 1927 Shanghai berada di bawah pemerintah provinsi Jiangsu dengan ibukota Nanjing. Sejak Shanghai menjadi Kota Administrasi Spesial pada tahun 1927, statusnya menjadi sama seperti provinsi Tiongkok yang lain.',
                        trimLines: 4,
                        preDataText: "Shanghai",
                        preDataTextStyle: GoogleFonts.montserrat(
                          color: fontcolor,
                          fontSize: 14,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w500,
                        ),
                        style: GoogleFonts.montserrat(
                          color: fontcolor,
                          fontSize: 14,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w500,
                        ),
                        colorClickableText: teal,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Read More...',
                        trimExpandedText: ' Show less',
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Features",
                        style: GoogleFonts.montserrat(
                          color: fontcolor,
                          fontSize: 20,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Wrap(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 10, bottom: 16),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 50.0,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.blue[100],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                  child: const Icon(
                                    CupertinoIcons.wifi,
                                    color: Colors.blue,
                                    size: 24.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Wafi",
                                  style: GoogleFonts.montserrat(
                                    color: fontcolor,
                                    fontSize: 14,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 10, bottom: 16),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 50.0,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.orange[100],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.local_parking_rounded,
                                    color: Colors.orange,
                                    size: 24.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Parking",
                                  style: GoogleFonts.montserrat(
                                    color: fontcolor,
                                    fontSize: 14,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 10, bottom: 16),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 50.0,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.pink[100],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.fastfood,
                                    color: Colors.pink,
                                    size: 24.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Food",
                                  style: GoogleFonts.montserrat(
                                    color: fontcolor,
                                    fontSize: 14,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 10, bottom: 16),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 50.0,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.purple[100],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                  child: const Icon(
                                    CupertinoIcons.chart_bar_alt_fill,
                                    color: Colors.purple,
                                    size: 24.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Heater",
                                  style: GoogleFonts.montserrat(
                                    color: fontcolor,
                                    fontSize: 14,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 10, bottom: 16),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 50.0,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.green[100],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.view_column_sharp,
                                    color: Colors.green,
                                    size: 24.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Map",
                                  style: GoogleFonts.montserrat(
                                    color: fontcolor,
                                    fontSize: 14,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 10, bottom: 16),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 50.0,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.red[100],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.local_hotel_rounded,
                                    color: Colors.red,
                                    size: 24.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Hotel",
                                  style: GoogleFonts.montserrat(
                                    color: fontcolor,
                                    fontSize: 14,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
