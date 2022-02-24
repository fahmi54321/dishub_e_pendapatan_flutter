import 'package:flutter/material.dart';

import 'package:dishub_e_pendapatan_flutter/resource/colors.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_widgets.dart';
import 'package:dishub_e_pendapatan_flutter/page/pendapatan/admin/details.dart';
import 'package:dishub_e_pendapatan_flutter/resource/strings.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_text.dart';
import 'package:dishub_e_pendapatan_flutter/page/pendapatan/jenis_pendapatan/jenis_pendapatan_ijin_trayek.dart';
import 'package:dishub_e_pendapatan_flutter/page/pendapatan/jenis_pendapatan/jenis_pendapatan_parkir.dart';
import 'package:dishub_e_pendapatan_flutter/page/pendapatan/jenis_pendapatan/jenis_pendapatan_pengujian.dart';
import 'package:dishub_e_pendapatan_flutter/page/pendapatan/jenis_pendapatan/jenis_pendapatan_terminal.dart';
import 'package:dishub_e_pendapatan_flutter/page/pendapatan/jenis_pendapatan/jenis_pendapatan_blud.dart';
import 'package:dishub_e_pendapatan_flutter/page/pendapatan/jenis_pendapatan/jenis_pendapatan_denda.dart';


class ArgsDetail {
  final int idPendapatan;

  ArgsDetail(this.idPendapatan);
}


class PendapatanPage extends StatefulWidget {
  static const ROUTE = 'details-pendapatan-page';

  final ArgsDetail args;

  const PendapatanPage({Key? key, required this.args}) : super(key: key);

  @override
  _PendapatanPageState createState() => _PendapatanPageState();
}

class _PendapatanPageState extends State<PendapatanPage> {
  List<String> _listFilter = StringResources.listFilter;

  int _index = 0;

  @override
  Widget build(BuildContext context) {

    /*
    method untuk menampilkan text dari app bar
     */
    String _getTitle(int id) {
      switch (id) {
        case 0: return 'Parkir';
        case 1: return 'Terminal';
        case 2: return 'Pengujian Kendaraan';
        case 3: return 'Izin Trayek';
        case 4: return 'BLUD';
        case 5: return 'Denda Pelanggaran';
        default:return 'null';
      }
    }

    /*
    method untuk menampilkan text dari item pendapatan
     */
    String _getTitleItemDetails(int id) {
      if(id == 4 || id == 5){
        // jika jenis pendapatan blud atau denda
        return 'Perincian Pendapatan';
      }else{
        // jika jenis pendapatan parkir,terminal,pengujian, atau ijin trayek
        return 'Jenis Pendapatan';
      }
    }

    /*
    method untuk menampilkan widget dari masing2 item pendapatan
     */
    Widget _getJenisPendapatan(int id){
      switch (id) {
        case 0: return JenisPendapatanParkir(); // parkir
        case 1: return JenisPendapatanTerminal(); // terminal
        case 2: return JenisPendapatanPengujian(); // pengujian kendaraan
        case 3: return JenisPendapatanIjinTrayek(); // iiin trayek
        case 4: return JenisPendapatanBlud(); // BLUD
        case 5: return JenisPendapatanDenda(); // Denda pelanggaran
        default:return JenisPendapatanParkir();
      }
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: VAppBar(_getTitle(widget.args.idPendapatan),Warna.white),
      ),
      body: Container(
        color: Warna.white,
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
                    onTap: () {
                      setState(() {
                        _index = x;
                      });
                    },
                    child: VItemFilter(
                      title: _listFilter[x],
                      index: x,
                      indexTap: _index,
                      bgHalaman: Warna.white,
                    )),
              ),
            ),
            SizedBox(height: 20,),
            AdminPageDetails(),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  vText(
                    _getTitleItemDetails(widget.args.idPendapatan),
                    color: Warna.primaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            _getJenisPendapatan(widget.args.idPendapatan),
          ],
        ),
      ),
    );
  }
}


