import 'package:flutter/material.dart';
import 'package:patient_teledoc/auth_pages/login.dart';
import 'package:patient_teledoc/pageview/appointmentList.dart';
import 'package:patient_teledoc/pageview/newAppointmentList.dart';
import 'package:patient_teledoc/main.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  PageController pageController = PageController();
  TabController _tabController;
  int currentIndex = 0;
  var currentTab = [appointmentPage(), newAppointmentPage()];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  // PageStorageBucket _bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    var len = MediaQuery.of(context).size;
    var gradient2 = LinearGradient(colors:[Color.fromRGBO(0, 0, 0, 1),Color.fromRGBO(45, 45, 45, 1)]);
    return Scaffold(
        drawer:
        Container(
          width: MediaQuery.of(context).size.width,
          child: Drawer(
            child: Container(
              decoration: BoxDecoration(gradient: gradient2),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                                radius: len.width*0.3,
                                backgroundImage: AssetImage('assets/images/doc.jpg'),
                              ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                            color: Color.fromRGBO(0, 64, 93, 1),
                            padding: EdgeInsets.all(10),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width*0.6,
                              child: Center(
                                child: Text(
                                'My Profile',
                                style: TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.normal),),
                              ),
                            ),
                            
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                              onPressed:() {
                                pref.remove('phone_num');
                        //del_data('phone_num');
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) {return login_page();}));
                        
                      },),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                            color: Color.fromRGBO(0, 64, 93, 1),
                            padding: EdgeInsets.all(10),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width*0.6,
                              child: Center(
                                child: Text(
                                'Chat Assistant',
                                style: TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.normal),),
                              ),
                            ),
                            
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                              onPressed:() {
                                pref.remove('phone_num');
                        //del_data('phone_num');
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) {return login_page();}));
                        
                      },),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                            color: Color.fromRGBO(0, 64, 93, 1),
                            padding: EdgeInsets.all(10),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width*0.6,
                              child: Center(
                                child: Text(
                                'Diet Plans',
                                style: TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.normal),),
                              ),
                            ),
                            
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                              onPressed:() {
                                pref.remove('phone_num');
                        //del_data('phone_num');
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) {return login_page();}));
                        
                      },),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                            color: Color.fromRGBO(0, 64, 93, 1),
                            padding: EdgeInsets.all(10),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width*0.6,
                              child: Center(
                                child: Text(
                                'Medication',
                                style: TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.normal),),
                              ),
                            ),
                            
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                              onPressed:() {
                                pref.remove('phone_num');
                        //del_data('phone_num');
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) {return login_page();}));
                        
                      },),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                            color: Color.fromRGBO(0, 64, 93, 1),
                            padding: EdgeInsets.all(10),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width*0.6,
                              child: Center(
                                child: Text(
                                'Logout',
                                style: TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.normal),),
                              ),
                            ),
                            
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                              onPressed:() {
                                pref.remove('phone_num');
                        //del_data('phone_num');
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) {return login_page();}));
                        
                      },),
                  ),
                ],
              ),
            ),
          ),
        ),
        appBar: GradientAppBar(
          iconTheme: IconThemeData(size: 50,color: Colors.white),
          actionsIconTheme: IconThemeData(size: 50,color: Colors.white),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.add_circle,
                  //color: Colors.black,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) {}));
                }),
            SizedBox(
              width: 10,
            )
          ],
          gradient: LinearGradient(colors: [Color.fromRGBO(0, 76, 113, 1), Color.fromRGBO(0, 55, 80, 1)]),
          bottom: TabBar(

            controller: _tabController,
            tabs: <Widget>[
              Tab(
                                
                icon: Container(
                  child: Center(child: Text('Appointment')),
                  height: MediaQuery.of(context).size.height*0.06,
                  width:  MediaQuery.of(context).size.height*0.4,
                  ///color: Color.fromRGBO(0, 22, 32, 1),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 22, 32, 1)
                    ,borderRadius:BorderRadius.circular(10)),
                  ),
                //text: 'Appointment',
              ),
              Tab(
                icon: Container(
                  child: Center(child: Text('New Appointment')),
                  height: MediaQuery.of(context).size.height*0.06,
                  width:  MediaQuery.of(context).size.height*0.4,
                  ///color: Color.fromRGBO(0, 22, 32, 1),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 22, 32, 1)
                    ,borderRadius:BorderRadius.circular(10)),
                  ),
                //text: 'New Appointment',
              )
            ],
          ),
          // Row(
          //     children: [
          //       ElevatedButton(
          //           onPressed: () {
          //             currentIndex = 0;
          //             pageController.animateToPage(0,
          //                 duration: Duration(milliseconds: 500),
          //                 curve: Curves.easeIn);
          //           },
          //           child: Text('appointment')),
          //       ElevatedButton(
          //           onPressed: () {
          //             currentIndex = 1;
          //             pageController.animateToPage(1,
          //                 duration: Duration(milliseconds: 500),
          //                 curve: Curves.easeIn);
          //           },
          //           child: Text('newAppointment'))
          //     ],
          //   ),
        ),
        body: TabBarView(
          children: currentTab,
          controller: _tabController,
        )
        // PageView(
        //   children: currentTab,
        //   controller: pageController,
        //   onPageChanged: (int index) {
        //     setState(() {
        //       currentIndex = index;
        //     });
        //   },
        // ),
        // body: PageStorage(
        //   bucket: _bucket,
        //   child: currentTab[currentIndex],
        // ),
        // bottomNavigationBar: BottomNavigationBar(
        //   selectedItemColor: Colors.blueAccent,
        //   unselectedItemColor: Colors.black,
        //   backgroundColor: Colors.white,
        //   currentIndex: currentIndex,
        //   onTap: (index) {
        //     setState(() {
        //       currentIndex = index;
        //       pageController.animateToPage(index,
        //           duration: Duration(milliseconds: 500), curve: Curves.easeIn);
        //     });
        //   },
        //   items: [
        //     BottomNavigationBarItem(
        //       label: 'Home',
        //       icon: new Icon(Icons.home),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: new Icon(Icons.update),
        //       label: 'Events',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.library_add),
        //       label: 'Library',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.settings),
        //       label: 'Settings',
        //     ),
        //   ],
        // ),
        );
  }
}
