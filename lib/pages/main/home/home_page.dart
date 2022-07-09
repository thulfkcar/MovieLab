import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movielab/constants/colors.dart';
import 'package:movielab/constants/types.dart';
import 'package:movielab/modules/system_ui_overlay_style.dart';
import 'package:movielab/pages/main/home/sections/trendings/trending_movies/all_trending_movies.dart';
import 'package:movielab/pages/main/home/sections/trendings/trending_tvs/all_trending_tvs.dart';
import 'package:movielab/pages/main/main_controller.dart';
import '../../../modules/navigate.dart';
import 'sections/box_office/box_office.dart';
import 'sections/companies/companies.dart';
import 'sections/imdb_lists/lists.dart';
import 'sections/navbar/navbar.dart';
import 'sections/trendings/trending_movies/home_trending_movies.dart';
import 'sections/trendings/trending_tvs/trending_tvs.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    setSystemUIOverlayStyle(systemUIOverlayStyle: SystemUIOverlayStyle.DARK);
    return GetBuilder<MainController>(builder: (_) {
      return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: Stack(
            children: [
              ListView(
                physics: const BouncingScrollPhysics(),
                controller: _.homeScrollController,
                children: [
                  const SizedBox(
                    height: 55,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 30, bottom: 5),
                        child: Text(
                          'Trending Movies',
                          style: GoogleFonts.ubuntu(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigate.pushTo(context, const AllTrendingMovies());
                        },
                        highlightColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 20, top: 30, bottom: 5),
                          child: Text(
                            'Show All',
                            style: GoogleFonts.ubuntu(
                                color: Colors.white.withOpacity(0.75),
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: HomeTrendingMovies(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 15, bottom: 5),
                        child: Text(
                          'Trending TV Shows',
                          style: GoogleFonts.ubuntu(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigate.pushTo(context, const AllTrendingTVs());
                        },
                        highlightColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 20, top: 15, bottom: 5),
                          child: Text(
                            'Show All',
                            style: GoogleFonts.ubuntu(
                                color: Colors.white.withOpacity(0.75),
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: HomeTrendingTVShows(),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 15, bottom: 5),
                        child: Text(
                          'Popular Companies',
                          style: GoogleFonts.ubuntu(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: HomePopularCompanies(),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 15, bottom: 5),
                        child: Text(
                          'IMDb Lists',
                          style: GoogleFonts.ubuntu(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: HomeIMDbLists(),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 15, bottom: 5),
                        child: Text(
                          'Box Office',
                          style: GoogleFonts.ubuntu(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: HomeBoxOffice(),
                  )
                ],
              ),
              Column(
                children: const [
                  HomeNavbar(),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
