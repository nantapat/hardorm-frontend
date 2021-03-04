import 'package:HarDorm/icon_hardorm_icons.dart';
import 'package:flutter/material.dart';

class ConfirmBooking extends StatefulWidget {
  @override
  _ConfirmBookingState createState() => _ConfirmBookingState();
}

class _ConfirmBookingState extends State<ConfirmBooking> {
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
              height: 420.0,
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
                            'Price : ฿550/day ',
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
          ],
        ),
      ),
        );
  }
}