import 'package:bw2_machinetask_mock_api/controller/api_services/api_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  Future<void> getNotification()async{
    await ApiServie().fetchNotifications();
  }
//  wants to create a scroll indicator
  @override
  Widget build(BuildContext context) {
    getNotification();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 101,
        title: Row(
          children: [
            SizedBox(
              height: 25,
              width: 25,
              child: Image.asset("assets/notif_page_arrow_back.png"),
            ),
            const SizedBox(width: 15),
            GestureDetector(
              onTap: ()async{
                
               
              },
              child: Text(
                'Notifications',
                style: GoogleFonts.quicksand(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 10,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              //height: double.infinity,
              height: 600,
              //color: Colors.red,
              child: FutureBuilder(
                future: ApiServie().fetchNotifications(),
                builder: (context, snapshot) {
                  if(snapshot.connectionState == ConnectionState.waiting){
                    return Center(child: CircularProgressIndicator(),);
                  }
                 return ListView.separated(
                    itemBuilder: (context, index) {
                      final notification = snapshot.data?[index];
                      return Padding(
                        padding: const EdgeInsets.only(
                            top: 8, left: 15, right: 15, bottom: 8),
                        child: Container(
                          //height: 89,
                          width: double.infinity,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 8 ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  height: 30,
                                  width: 30,
                                  color: Colors.green,
                                  //child:  Image.network(notification!.image),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 280,
                                      child: Text(
                                        '${notification?.title}',
                                        //'Get up to INR 100/-cashback using googlepay',
                                        style: GoogleFonts.quicksand(
                                            fontWeight: FontWeight.w700, fontSize: 16),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 280,
                                      child: Text(
                                        '${notification?.body}',
                                        //'Your order containg 2 items will be delivered within the prescribed time',
                                        style: GoogleFonts.quicksand(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                        '57 mins ago',
                                        style: GoogleFonts.quicksand(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12),
                                      ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(color: Color.fromARGB(87, 158, 158, 158),),
                    itemCount: snapshot.data!.length
                    );
                },
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
