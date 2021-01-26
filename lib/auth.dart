

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';
import 'package:expensetracker/ui/views/spash_view.dart';
import 'package:expensetracker/locator.dart';
// import 'package:expensetracker/ui/router.dart' ;

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  
  LocalAuthentication _auth = LocalAuthentication();
  bool _checkBio= false;
  bool _isBioFinger= false;

  @override
  void initState() {
    super.initState();
    _checkBiometrics();
    _listBioAndFingerType();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text('Scan Fingerprint'),
      ),
      body: Center (
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.fingerprint,
                size: 50,
              ),
              onPressed: _startAuth,
              iconSize: 60,
              ),
            SizedBox(height: 15),
            Text('Tap Here'),
          ],
        ),
      ),
      
    );
  }


void _checkBiometrics() async {
  try {
    final bio= await _auth.canCheckBiometrics;
    setState(() {
      _checkBio= bio;
    });
    print( 'Biometrics= $_checkBio');
  } catch (e) {}
  
} //end method

void _listBioAndFingerType () async {
  List<BiometricType> _listType;
  try {
    _listType = await _auth.getAvailableBiometrics();
  } on PlatformException catch (e) {
    print(e.message);
  }
  print ('List Biometrics = $_listType');

  if (_listType.contains(BiometricType.fingerprint)) {
  setState(() {
    _isBioFinger = true;
  });
} //end if
print('Fingerprint is $_isBioFinger');
} //end void



void _startAuth() async {
  bool _isAuthenticated= false;
  AndroidAuthMessages _msg= AndroidAuthMessages(
    signInTitle: 'Expense Tracker',
    cancelButton: 'Cancel',
  );
  try {
     _isAuthenticated= await  _auth.authenticateWithBiometrics(
      localizedReason: 'Scan your fingerprint  to enter',
      useErrorDialogs: true,
      stickyAuth: true,// native process
      androidAuthStrings: _msg,
    );
  } on PlatformException catch (e) {
    print(e.message);
  }

if (_isAuthenticated) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) => SpashView()));
 
    //Navigator.of(context).pushReplacementNamed('/');
}

}// end void
}
