
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class NearbyStoresListView extends StatelessWidget {
  const NearbyStoresListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(height: 5),
        itemCount: 2,
        itemBuilder: (context, index) => 
         SizedBox(
          height: 150,
          width: double.infinity,
          //color: Colors.red,
          child: Row(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              nearbyStoreImage(),
        
              const SizedBox(width: 20),
        
              nearbyStoresDetail()
            ],
          ),
        ),
      ),
    
      
    );
  }
}
  


Container nearbyStoreImage() {
    return Container(
                            height: 80,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5),
                              image: const DecorationImage(image: AssetImage('assets/dish.png'),fit: BoxFit.cover)
                            ),
                    
                          );
  }



  Expanded nearbyStoresDetail() {
    return Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                     
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Freshly Baker',
                                        style: GoogleFonts.quicksand(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700
                                        ),
                                        ),
                                         Text('Sweets, North Indian',
                                        style: GoogleFonts.quicksand(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500
                                        ),
                                        ),
                                
                                         Text('Site No-1 | 6.4 kms',
                                        style: GoogleFonts.quicksand(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500
                                        ),
                                        ),
                                
                                        const SizedBox(height: 10),
                                
                                        Container(
                                          height: 16,
                                          width: 48,
                                         
                                          decoration: BoxDecoration(
                                             color: const Color.fromARGB(255, 233, 233, 233),
                                             borderRadius: BorderRadius.circular(2)
                                          ),
                                          child: Center(child: Text('Top Store',
                                          style: GoogleFonts.roboto(
                                            fontSize: 8,
                                            fontWeight:FontWeight.w500
                                          ),
                                          ),),
                                        )
                                      ],
                                    ),
                                
                                    SizedBox(
                                      height: 50,
                                     // width: 50,
                                     // color: Colors.red,
                                      child: Column(
                                         
                                        children: [
                                          Text('★ 4.1',
                                          style: GoogleFonts.quicksand(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500
                                          ),
                                          ),
                                          Text('45 mins',
                                          style: GoogleFonts.quicksand(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.orange
                                          ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                                  
                                const Divider(),
                                                  
                                 
                                   Row(
                                     children: [
                                        SizedBox(
                                         height: 15,
                                         width: 15,
                                         child: Image.asset('assets/offer.png'),
                                        ),
                                        Text('Upto 10% OFF',
                                        style: GoogleFonts.quicksand(
                                         fontSize: 11,
                                         fontWeight: FontWeight.w700
                                        ),
                                        ),
                                        
                                        SizedBox(
                                         height: 15,
                                         width: 15,
                                         child: Image.asset('assets/items.png'),
                                        ),
                                          Text('3400+ items available',
                                        style: GoogleFonts.quicksand(
                                         fontSize: 11,
                                         fontWeight: FontWeight.w700
                                        ),
                                        ),
                                        
                                     ],
                                   ),
                                
                              ],
                            ),
                          );
  }

  

  
  

  


