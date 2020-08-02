import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rebuild_bop_app/dashboard_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        iconTheme: IconThemeData(color: Colors.grey[800]),
        elevation: 0.0,
        leading: Icon(Icons.menu),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.language),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    /*SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),*/
                    Image.asset('images/card.png',fit: BoxFit.contain,),
                    Text(
                      'Welcome Back.',
                      style: TextStyle(
                        color: Theme.of(context).buttonColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    //SizedBox(height: 4,),
                    Text(
                      'Login!',
                      style: TextStyle(
                        color: Theme.of(context).buttonColor,
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[400],
                            blurRadius: 10,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            cursorColor: Theme.of(context).buttonColor,
                            decoration: InputDecoration(
                              hintText: 'Username',
                              alignLabelWithHint: false,
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.perm_identity,
                                color: Theme.of(context).buttonColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[400],
                            blurRadius: 10,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            obscureText: true,
                            cursorColor: Theme.of(context).buttonColor,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Theme.of(context).buttonColor,
                              ),
                              hintText: 'Password',
                              alignLabelWithHint: false,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[400],
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ]
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardPage()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Theme.of(context).buttonColor,
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "BANK OF PALESTINE",
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
