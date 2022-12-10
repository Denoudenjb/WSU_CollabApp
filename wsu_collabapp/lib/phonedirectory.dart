// ignore_for_file: prefer_const_constructors, sort_child_properties_last, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart' hide Row, Column;
import 'dart:io';
import 'package:path_provider/path_provider.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:open_file/open_file.dart';
import 'package:universal_html/html.dart' show AnchorElement;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:convert';

class PhoneDirectory extends StatelessWidget {
  const PhoneDirectory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Directory'),
        backgroundColor: Color.fromARGB(255, 7, 90, 158),
      ),
      body: Center(
        child:

            ElevatedButton(
                child: Text('Export Excel File to Current Device'), onPressed: createExcel),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 7, 90, 158),
        child: SizedBox(
          height: 20.0,
        ),
      ),
    );
  }

  Future<void> createExcel() async {
    final Workbook workbook = Workbook();
    final Worksheet sheet = workbook.worksheets[0];
    sheet.getRangeByName('A1').setText('FIRST');
    sheet.getRangeByName('A2').setText('Jonathon');
    sheet.getRangeByName('A3').setText('Jacob');
    sheet.getRangeByName('A4').setText('Third');
    sheet.getRangeByName('A5').setText('Fourth');
    sheet.getRangeByName('A6').setText('Fifth');
    sheet.getRangeByName('A7').setText('Sixth');
    sheet.getRangeByName('A8').setText('Seventh');
    sheet.getRangeByName('A9').setText('Eight');
    sheet.getRangeByName('B1').setText('LAST');
    sheet.getRangeByName('B2').setText('Denouden');
    sheet.getRangeByName('B3').setText('Brand');
    sheet.getRangeByName('B4').setText('Person');
    sheet.getRangeByName('B5').setText('Person');
    sheet.getRangeByName('B6').setText('Person');
    sheet.getRangeByName('B7').setText('Person');
    sheet.getRangeByName('B8').setText('Person');
    sheet.getRangeByName('B9').setText('Person');
    sheet.getRangeByName('C1').setText('ROLE');
    sheet.getRangeByName('C2').setText('VP');
    sheet.getRangeByName('C3').setText('VP');
    sheet.getRangeByName('C4').setText('CDO');
    sheet.getRangeByName('C5').setText('CFO');
    sheet.getRangeByName('C6').setText('IT');
    sheet.getRangeByName('C7').setText('EXEC');
    sheet.getRangeByName('C8').setText('DISTRO');
    sheet.getRangeByName('C9').setText('PROD');
    sheet.getRangeByName('D1').setText('Phone Number');
    sheet.getRangeByName('D2').setText('(316)123-4567');
    sheet.getRangeByName('D3').setText('(316)123-4567');
    sheet.getRangeByName('D4').setText('(316)123-4567');
    sheet.getRangeByName('D5').setText('(316)123-4567');
    sheet.getRangeByName('D6').setText('(316)123-4567');
    sheet.getRangeByName('D7').setText('(316)123-4567');
    sheet.getRangeByName('D8').setText('(316)123-4567');
    sheet.getRangeByName('D9').setText('(316)123-4567');

    final List<int> bytes = workbook.saveAsStream();
    workbook.dispose();

    if (kIsWeb) {
      AnchorElement(
          href:
              'data:application/octet-stream;charset=utf-16le;base64,${base64.encode(bytes)}')
        ..setAttribute('download', 'Output.xlsx')
        ..click();
    } else {
      final String path = (await getApplicationSupportDirectory()).path;
      final String fileName =
          Platform.isWindows ? '$path\\Output.xlsx' : '$path/Output.xlsx';
      final File file = File(fileName);
      await file.writeAsBytes(bytes, flush: true);
      OpenFile.open(fileName);
    }
  }
}
