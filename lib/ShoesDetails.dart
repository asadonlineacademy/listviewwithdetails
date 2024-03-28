import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoesDetails extends StatefulWidget {
 final String image;
   ShoesDetails({Key? key,required this.image}) : super(key: key);

  @override
  State<ShoesDetails> createState() => _ShoesDetailsState();
}

class _ShoesDetailsState extends State<ShoesDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Hero(
          tag:  'red',
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.image),
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
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Icon(Icons.favorite_border,size: 20,),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  child: AnimatedOpacity(
                    opacity: 1.0,
                    duration: Duration(seconds: 5),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(.9),
                            Colors.black.withOpacity(.0),
                          ],
                        )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Sneakers",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
                          SizedBox(height: 25,),
                          Text("Size",style: TextStyle(color: Colors.white,fontSize: 20,),),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white
                                ),
                                width: 40,height: 40,margin: EdgeInsets.only(right: 20),
                                child: Center(child: Text('40',style: TextStyle(fontWeight: FontWeight.bold),),),
                              ),
                              Container(
                                width: 40,height: 40,margin: EdgeInsets.only(right: 20),
                                child: Center(child: Text('42',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                              ),
                              Container(
                                width: 40,height: 40,margin: EdgeInsets.only(right: 20),
                                child: Center(child: Text('44',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                              ),
                              Container(
                                width: 40,height: 40,margin: EdgeInsets.only(right: 20),
                                child: Center(child: Text('46',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              Container(
                                height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                child: Center(
                                  child: Text('Buy Now',style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),

                            ],
                          )

                        ],
                      ),
                    ),
                  ),


                )
              ],

            ),
          ),
        ),
      ),
    );
  }
}
