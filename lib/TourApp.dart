
import 'package:flutter/material.dart';

class TourApp extends StatefulWidget {
  const TourApp({Key? key}) : super(key: key);

  @override
  State<TourApp> createState() => _TourAppState();
}

class _TourAppState extends State<TourApp> {
  PageController? _pageController;
  var totalpages=4;
  @override
  void initState() {
   _pageController=PageController(initialPage: 0);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
         Makepage(page:1 ,image: 'Images/tour1.jpg',text:'Gateway Communities' ,description:'New Mexico is home to some of the oldest, continuously inhabited communities in North America. The Pueblos of Taos, Acoma, and Zuni have existed for countless lifetimes. Places like Chaco Canyon and Aztec were developed and populated thousands of years before Europeans arrived to America’s shores' ),
          Makepage(page:2, image: 'Images/tour2.jpg',text:'Albuquerque' ,description:'Enjoy the countless opportunities for exploration and unforgettable experiences New Mexico’s bustling, vibrant metropolitan center has to offer. Discover the history, culture and excitement of the city—from immersing yourself in ancient Pueblo traditions to seeking adventure up in the Sandia Mountains for hiking, biking, skiing, and more.'),
          Makepage(page:3,image: 'Images/tour3.jpg',text:'National Parks & Monuments' ,description:'Salinas Pueblo Missions National Monument provides a unique glimpse into the history of New' ),

          Makepage(page:4,image: 'Images/tour4.jpg',text:'Gila Cliff Dwellings ' ,description:'Every aspect of travel in New Mexico is defined by both culture and adventure, whether youre exploring art galleries, tasting local cuisine, participating in an event or tradition, or spending time outdoors. Its all happening here. ' ),


        ],
      ),
    );
  }
  Widget Makepage({required image,required text,required description,required page}){

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3,0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ]
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                Text(page.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
                  Text('/'+totalpages.toString(),style: TextStyle(fontSize: 15,color: Colors.white),),

              ],),
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(Icons.star,color: Colors.grey,size: 15,),
                      ),
                      Text('4.0',style: TextStyle(color: Colors.white70),),
                      Text('(2300)',style: TextStyle(fontSize: 12,color: Colors.white38),),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(description,style: TextStyle(color: Colors.white),),
                  SizedBox(
                    height: 20,
                  ),
                  Text('READ MORE',style: TextStyle(color: Colors.white70),),
                ],
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
