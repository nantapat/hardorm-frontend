import 'package:HarDorm/common_widgets/alertWithIcon.dart';
import 'package:flutter/material.dart';
import 'package:HarDorm/common_widgets/alert_dialog.dart';
import 'package:HarDorm/icon_hardorm_icons.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRangePicker;
import 'package:intl/intl.dart';
import 'dart:async';



class MonthPickerDate extends StatefulWidget {
  @override
  _MonthPickerDateState createState() => _MonthPickerDateState();
}
class _MonthPickerDateState extends State<MonthPickerDate> {
  bool tappedYes = false;
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now().add(Duration(days: 1));

  Future displayDateRangePicker(BuildContext context) async {
    final List<DateTime> picked = await DateRangePicker.showDatePicker(
        context: context,
        initialFirstDate: _startDate,
        initialLastDate: _endDate,
        firstDate: new DateTime(DateTime.now().year - 50),
        lastDate: new DateTime(DateTime.now().year + 50));
    if (picked != null && picked.length == 2) {
      setState(() {
        _startDate = picked[0];
        _endDate = picked[1];
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: new AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text(
          'HarDorm',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 480.0,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(25.0),
              child: Expanded(
                child: Card(
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Container(
                    // height: 150.0,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 150.0,
                              child: FittedBox(
                                child: Image.asset('picHor/Hor1.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 10.0),
                              child: Text(
                                'Teddy@Thammasat',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    IconHardorm.pin,
                                    color: Colors.black,
                                    size: 20.0,
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    'Khlong luang',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16.0),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    IconHardorm.users,
                                    color: Colors.black,
                                    size: 20.0,
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    '2 Adults / 1 room',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16.0),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12.0, right: 10.0, top: 5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    IconHardorm.electric,
                                    color: Colors.black,
                                    size: 16.0,
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    'Electricity cost per unit :  7 Baht/Unit',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13.0),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12.0, right: 10.0, top: 5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    IconHardorm.water_drops,
                                    color: Colors.black,
                                    size: 16.0,
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    'Water cost per unit :  7 Baht/Unit',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13.0),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                              child: Text(
                                '*Check in time will be 2PM and check out time will be at Noon.',
                                style:
                                    TextStyle(fontSize: 11, color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10.0),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 20.0, right: 10.0),
                          child: Text(
                            'Price : ฿3,500 per month',
                            style:
                                TextStyle(color: Colors.black, fontSize: 20.0),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () async {
                      await displayDateRangePicker(context);
                    },
                    color: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 13),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      'SELECT DATE',
                      style: TextStyle(
                          fontSize: 14.0,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    IconHardorm.calendar,
                    size: 40.0,
                  ),
                  SizedBox(width: 20.0),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Check in    :  ${DateFormat('MM/dd/yyyy').format(_startDate).toString()}',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                       
                      ])
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RaisedButton(
                    onPressed: () async {
                      final action = await AlertDialogs.yesCancelDialog(context,
                          'Book Room', 'Are you sure you want to book a room?','Cancel','Confirm',
                          Colors.black);
                      if (action == DialogsAction.yes) {
await Future.delayed(Duration(seconds: 1));
                        showDialog(
                            context: context,
                            builder: (context) => AlertWithIcon(
                                  title: "Success",
                                  description:
                                      'Your reservation has been successful Please contact the dormitory for payment',
                                  important: '*Payment must be completed within 24 hours after booking ',
                                ));
                      } else {
                        setState(() => tappedYes = false);
                      }
                    },
                    color: Colors.indigo,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 13),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      'BOOK ROOM',
                      style: TextStyle(
                          fontSize: 14.0,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



