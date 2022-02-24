import 'package:flutter/material.dart';

import 'package:dishub_e_pendapatan_flutter/page/home/admin/semua.dart';
import 'package:dishub_e_pendapatan_flutter/resource/colors.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_widgets.dart';
import 'package:dishub_e_pendapatan_flutter/page/auth/profile_page.dart';
import 'package:dishub_e_pendapatan_flutter/page/home/jenis_pendapatan.dart';
import 'package:dishub_e_pendapatan_flutter/resource/strings.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';


class HomePage extends StatefulWidget {
  static const ROUTE = 'home-page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _listFilter = StringResources.listFilter;

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: VAppBar('Halo', Warna.lightGrey2, 'Administrator', () {
          Navigator.push(
            context,
            MaterialPageRoute(
              fullscreenDialog: true,
              builder: (ctx) => ProfilePage(),
            ),
          );
        }),
      ),
      body: Container(
        color: Warna.lightGrey2,
        child: ListView(
          children: [
            SizedBox(
              height: 35.78,
            ),
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                shrinkWrap: true,
                itemCount: _listFilter.length,
                itemBuilder: (ctx, x) => InkWell(
                    onTap: () async{
                      setState(() {
                        _index = x;
                      });

                      if(x==5){

                        showModalBottomSheet<dynamic>(
                          isScrollControlled: true,
                          context: context,
                          backgroundColor: Colors.white,
                          builder: (ctx) => Container(
                            height: MediaQuery.of(context).size.height * 0.75,
                            child: ScrollableCleanCalendar(
                              onRangeSelected: (firstDate, secondDate) {
                                // mystate(() {
                                //   state.startDate =
                                //       DateFormat("yyyy-MM-dd", "id_ID")
                                //           .format(firstDate);
                                //   if (secondDate != null) {
                                //     state.endDate =
                                //         DateFormat("yyyy-MM-dd", "id_ID")
                                //             .format(secondDate);
                                //   }
                                //   log('onTap ${state.startDate} ${state.endDate}');
                                // });
                              },
                              onTapDate: (date) {
                                // log('onTap $date');
                              },
                              locale: 'id',
                              //default is en
                              minDate: DateTime.now(),
                              maxDate: DateTime.now().add(
                                Duration(days: 365),
                              ),
                              renderPostAndPreviousMonthDates: true,
                            ),
                          ),
                        );
                      }

                    },
                    child: VItemFilter(
                      title: _listFilter[x],
                      index: x,
                      indexTap: _index,
                      bgHalaman: Warna.lightGrey2,
                    )),
              ),
            ),
            SizedBox(height: 20,),
            AdminPage(),
            SizedBox(height: 47,),
            JenisPendapatanPage(),
          ],
        ),
      ),
    );
  }
}
