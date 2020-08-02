import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
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
            child: Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[300],
                              blurRadius: 40,
                              offset: Offset(0, 30),
                            ),
                          ],
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              stops: [0.0, 0.8],
                              colors: [
                                Color(0xffEEEEEE),
                                Color(0xffD6D7D8),
                              ],
                            ),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 50,
                                    width: double.infinity,
                                    color: Color(0xffA91B63),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 24.0),
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            'Account No.',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w100,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          Text(
                                            '0123 - 456789',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 24.0),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          'Name',
                                          style: TextStyle(
                                            color: Color(0xffA91B63),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w100,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Text(
                                          'Ahmed M. H. Shaat',
                                          style: TextStyle(
                                            color: Color(0xffA91B63),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    'BANK OF PALESTINE',
                                    style: TextStyle(color: Colors.black87),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: <Widget>[
                    _listTile(
                      title: 'Accounts',
                      subtitle: 'Manage your accounts',
                      leading: Icons.account_balance,
                    ),
                    Divider(),
                    _listTile(
                      title: 'Cards',
                      subtitle: 'Manage your cards',
                      leading: Icons.credit_card,
                    ),
                    Divider(),
                    _listTile(
                      title: 'Transfers',
                      subtitle: 'Manage your transfers',
                      leading: Icons.swap_horiz,
                    ),
                    Divider(),
                    _listTile(
                      title: 'Payment history',
                      subtitle: 'See all payments history',
                      leading: Icons.history,
                    ),
                    Divider(),
                    _listTile(
                      title: 'Pay a Bill',
                      subtitle: 'Pay bills using the Card',
                      leading: Icons.account_balance_wallet,
                    ),
                    Divider(),
                    _listTile(
                      title: 'Show more',
                      subtitle: 'Tap to show more properties',
                      leading: Icons.more_horiz,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _listTile({title,subtitle, leading}){
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.black87, fontSize: 18),
      ),
      subtitle: Text(subtitle),
      trailing: Icon(Icons.chevron_right),
      leading: Icon(
        leading,
        color: Theme.of(context).buttonColor,
        size: 45,
      ),
      onTap: () {},
    );
  }
}
