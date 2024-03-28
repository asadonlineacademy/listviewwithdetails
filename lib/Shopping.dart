import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listviewwithdetails/ShoesDetails.dart';

class Shopping extends StatelessWidget {
  const Shopping({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: AnimatedOpacity(
            duration: Duration(seconds: 2),
            opacity: 0.7,
            child: Text("Shoes",style: TextStyle(color: Colors.black,fontSize: 25),)),
        actions: [
          AnimatedOpacity(
            duration: Duration(seconds: 2),
            opacity: 0.7,
            child: IconButton(
              onPressed: () => "Clicked",
              icon: Icon(Icons.notifications_none,color: Colors.black,),
            ),
          ),
          AnimatedOpacity(
          duration: Duration(seconds: 2),
          opacity: 0.7,
            child: IconButton(
              onPressed: () => "Clicked",
              icon: Icon(Icons.shopping_cart,color: Colors.black,),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    AspectRatio(aspectRatio:2.3/1,
                      child: AnimatedOpacity(
                        duration: Duration(seconds: 2),
                        opacity: 0.7,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Center(child: Text("All",style: TextStyle(fontSize: 20),),),
                        ),
                      ),
                    ),
                    AspectRatio(aspectRatio:2.3/1,
                      child: AnimatedOpacity(
                        duration: Duration(seconds: 2),
                        opacity: 0.7,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Center(child: Text("Sneakers",style: TextStyle(fontSize: 17),),),
                        ),
                      ),
                    ),
                    AspectRatio(aspectRatio:2.3/1,
                      child: AnimatedOpacity(
                        duration: Duration(seconds: 2),
                        opacity: 0.7,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Center(child: Text("Football",style: TextStyle(fontSize: 17),),),
                        ),
                      ),
                    ),
                    AspectRatio(aspectRatio:2.3/1,
                      child: AnimatedOpacity(
                        duration: Duration(seconds: 2),
                        opacity: 0.7,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Center(child: Text("Soccer",style: TextStyle(fontSize: 17),),),
                        ),
                      ),
                    ),
                    AspectRatio(aspectRatio:2.3/1,
                      child: AnimatedOpacity(
                        duration: Duration(seconds: 2),
                        opacity: 0.7,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Center(child: Text("Golf",style: TextStyle(fontSize: 17),),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              makeItem(image: "Images/shoes1.jpg",tag: 'red',context: context),
              makeItem(image: "Images/shoes2.jpg",tag: 'red',context: context),
              makeItem(image: "Images/shoes3.jpg",tag: 'red',context: context),
              makeItem(image: "Images/shoes4.jpg",tag: 'red',context: context),
            ],

          ),
        ),
      ),


    );
  }
  Widget makeItem({image,tag,context}){
    return Hero(tag: tag, child: GestureDetector(
      onTap: () {
       Navigator.push(context, MaterialPageRoute(builder: (context) {
         return ShoesDetails(image: image,);
       },));
        },

      child: Container(
        height: 250,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 10,
              offset: Offset(0,10),
            )
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Expanded(child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     AnimatedOpacity(  duration: Duration(seconds: 2),
                         opacity: 0.7,child: Text("Sneakers",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
                     SizedBox(height: 10,),
                     Text("Nike",style: TextStyle(color: Colors.white,fontSize: 30),)
                   ],
                 )),
                 AnimatedOpacity(
                   duration: Duration(seconds: 2),
                   opacity: 0.7,
                   child: Container(
                     width: 40,
                     height: 40,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.white,
                     ),
                     child: Center(
                       child: Icon(Icons.favorite_border,size: 20,),
                     ),
                   ),
                 )
               ],
             )
          ],

        ),
      ),
    ));
  }
}
