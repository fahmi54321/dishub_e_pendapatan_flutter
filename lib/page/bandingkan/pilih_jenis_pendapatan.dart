import 'package:flutter/material.dart';

import 'package:dishub_e_pendapatan_flutter/resource/colors.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_text.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_widgets.dart';
import 'package:dishub_e_pendapatan_flutter/resource/strings.dart';


class PilihJenisPendapatan extends StatelessWidget {


  List<String> icPendapatan = StringResources.iconPendapatan;
  List<String> jnsPendapatan = StringResources.jenisPendapatan;

  @override
  Widget build(BuildContext context) {
    return VPopUp(
      context: context,
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          vText(
            'Pilih jenis pendapatan',
            fontSize: 18,
            color: Warna.primaryColor,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(
            height: 18,
          ),
          vText(
            'Anda bisa memilih minimal 2 jenis pendapatan.',
            fontSize: 12,
            color: Warna.darkGrey,
            fontWeight: FontWeight.w500,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
              ),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (ctx, x) => Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: ItemJenisPendapatan(
                    title: jnsPendapatan[x],
                    leading: icPendapatan[x],
                    index: x,
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: VButtonDefault(
                'Batal',
                colorButton: Warna.lightGrey2,
                colorText: Warna.darkGrey,
                height: 47,
                width: double.infinity,
                onTap: () {},
                isShadow: false,
              )),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: VButtonDefault(
                'Pilih',
                height: 47,
                width: double.infinity,
                onTap: () {
                  Navigator.of(context).pop();
                },
                isShadow: false,
              )),
            ],
          )
        ],
      ),
    );
  }
}

class ItemJenisPendapatan extends StatefulWidget {
  String title;
  String leading;
  int index;

  ItemJenisPendapatan({
    required this.leading,
    required this.title,
    required this.index,
  });

  @override
  State<ItemJenisPendapatan> createState() => _ItemJenisPendapatanState();
}

class _ItemJenisPendapatanState extends State<ItemJenisPendapatan> {
  final List<bool> _selected = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Warna.white,
        border: Border.all(
            width: 1,
            color: _selected[widget.index] == true
                ? Warna.primaryColor
                : Warna.lightGrey2),
        borderRadius: BorderRadius.all(
          Radius.circular(
            100,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 8,
        ),
        child: ListTile(
          title: vText(
            widget.title,
            fontSize: 16,
            color: Warna.primaryColor,
            fontWeight: FontWeight.w700,
          ),
          leading: Image.asset(widget.leading,width: 24,height: 24,),
          onTap: () {
            setState(() {
              _selected[widget.index] = !_selected[widget.index];
            });
          },
        ),
      ),
    );
  }
}

