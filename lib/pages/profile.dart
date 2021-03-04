
import 'package:HarDorm/common_widgets/alert_dialog.dart';
import 'package:HarDorm/icon_hardorm_icons.dart';
import 'package:HarDorm/pages/editProfile.dart';

import 'package:flutter/material.dart';

import 'landing_page.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

void _editProfile(BuildContext context) {
  Navigator.of(context,rootNavigator: true).push(
    MaterialPageRoute<void>(
      fullscreenDialog: true,
      builder: (context) => EditProfile(),
    ),
  );
}
//   Future<void> _signOut(BuildContext context) async {
//     try {
//       final auth = Provider.of<AuthBase>(context);
//       await auth.signOut();
//     } catch (e) {
//       print(e.toString());
//     }
//   }
// Future<void> _confirmLogOut(BuildContext context) async {
//     final didRequestSignOut = await PlatformAlertDialog(
//       title: 'Logout',
//       content: 'Are you sure that you want to logout?',
//       cancelActionText: 'Cancel',
//       defaultActionText: 'Logout',
//     ).show(context);
//     if (didRequestSignOut == true) {
//       _signOut(context);
//       Navigator.pushAndRemoveUntil(
//         context, MaterialPageRoute(builder: (context) => LandingPage()),(
//           Route < dynamic > route) => false,);
//     }
//   }

class _ProfileState extends State<Profile> {
  bool tappedYes = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/components/topProfile1.png'),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: Stack(
                  // alignment: Alignment.bottomCenter,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 30.0),
                              child: Text(
                                "Profile",
                                style: TextStyle(
                                  fontSize: 30,
                                  letterSpacing: 1.5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20.0, top: 30.0),
                              child: IconButton(
                                icon: Icon(
                                  IconHardorm.logout,
                                  size: 35.0,
                                  color: Colors.white,
                                ),
                                // onPressed: () {  
                                //    print('logout');}),
                                onPressed: () async {
                                  final action =
                                      await AlertDialogs.yesCancelDialog(
                                          context,
                                          'Logout',
                                          'Are you sure you want to logout?','Cancle','Logout',Colors.black);
                                          if(action == DialogsAction.yes){
                                            Navigator.of(context, rootNavigator: true).pushReplacement(MaterialPageRoute(builder: (context) => new LandingPage()));
        //                                     
                                          }else {
                                            setState(() => tappedYes = false);
                                          }
                                },
                                // {
                                // print('logout');
                                // },
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 30, right: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Mantita',
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Weangtham',
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Container(
                                width: 155,
                                height: 155,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 4),
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/Avatar/zhoufang.jpg'),
                                            ),
                                            ),
                                            
                              ),
                            ],
                          ),
                        ),
                                            
                      ],
                    ),
            
                    Positioned(
                      right:20,
                      top: 210,
                                          child: Container(
                        width: 40,
                        height:40,
                        decoration: BoxDecoration(
                          color:Colors.black54,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          
                          child: IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, top: 360.0),
                      child: Container(
                        width: 65.0,
                        height: 65.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/components/telephone.png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 130.0, top: 350.0, right: 40.0),
                      child: buildTextField('Phone number', '095-456-7891'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, top: 480.0),
                      child: Container(
                        width: 65.0,
                        height: 65.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/components/information.png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 130.0, top: 480.0, right: 40.0),
                      child: _buildTextField1(
                          'Hi I am Chun, I can\'t sleep if the light still turn on'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 620.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RaisedButton(
                            onPressed: () => _editProfile(context),
                            color: Colors.indigo,
                            padding: EdgeInsets.symmetric(horizontal: 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              'EDIT PROFILE',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  letterSpacing: 2.2,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 700.0, right: 20.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String labelText, String placeholder) {
    return TextField(
        decoration: InputDecoration(
      enabled: false,
      // filled: true,
      labelText: labelText,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hintText: placeholder,
      hintStyle: TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
      labelStyle: TextStyle(fontSize: 28.0, color: Colors.black),
    ));
  }
}

Widget _buildTextField1(String placeholder) {
  final maxLines = 5;

  return Container(
    margin: EdgeInsets.all(0),
    height: maxLines * 24.0,
    child: TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: placeholder,
        hintStyle: TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
        fillColor: Colors.grey[200],
        enabled: false,
        // filled: false,
      ),
    ),
  );
}
