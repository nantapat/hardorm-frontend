import 'package:flutter/material.dart';
import 'package:hardorm/app/sign_in/thirdParty_button.dart';
import 'package:hardorm/pages/login_detail.dart';

class ThirdPartyLogin extends StatefulWidget{
  @override
  _ThirdPartyLoginState createState() => _ThirdPartyLoginState();
}

  class _ThirdPartyLoginState extends State<ThirdPartyLogin> {

    void _testUser(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => LoginDetail(),
      ),
    );
  }  





  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Stack(
      children:<Widget> [
        Positioned(
          top: 0,
          child: new Image.asset(
            'assets/top.png',
            fit: BoxFit.cover,
          ),
        ),
                Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: new Image.asset(
            'assets/bottom.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Sign in',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600,fontFamily: 
                  'Poppins'),
                ),
                SizedBox(
                  height: 40.0,
                ),
                ThirdPartyButton(
                  iconName: 'icon/facebook_logo.png',width: 35, height: 35,
                  text: 'connect with Facebook',
                  textColor: Colors.white,
                  color: Color(0xFF334D92),
                  onPressed: () => _testUser(context),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ThirdPartyButton(
                  iconName: 'icon/twitter_logo.png',width:30,height:30,
                  text: 'connect with Twitter',
                  textColor: Colors.white,
                  color: Color.fromRGBO(29, 161, 242, 1.0),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 20.0,
                ),
                ThirdPartyButton(
                  iconName: 'icon/google_logo.png',width:45,height:45,
                  text: 'connect with Gmail',
                  textColor: Colors.white,
                  color: Color.fromRGBO(178, 49, 33, 1.0),
                  onPressed: () {},
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
  
   
