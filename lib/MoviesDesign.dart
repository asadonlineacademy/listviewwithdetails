import 'package:flutter/material.dart';

class MoviesActivity extends StatefulWidget {
  const MoviesActivity({Key? key}) : super(key: key);

  @override
  State<MoviesActivity> createState() => _MoviesActivityState();
}

class _MoviesActivityState extends State<MoviesActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 450,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage('https://images.unsplash.com/photo-1701351382146-035bd68cdb6d?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDE2MXx0b3dKWkZza3BHZ3x8ZW58MHx8fHx8')
                      ),

                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black,
                            Colors.black.withOpacity(.3)
                          ]
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            AnimatedOpacity(
                              opacity: 1.0,
                                duration: Duration(seconds: 2),
                                child: Text("Emma Watson",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),)),
                             SizedBox(
                               height: 20,
                             ),
                            Row(
                              children: [
                                Text("60 Videos",style: TextStyle(color: Colors.grey,fontSize: 16),),
                                SizedBox(width: 50,),
                                Text("240K Subscribers",style: TextStyle(color: Colors.grey,fontSize: 16),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text('Emma Watson (born April 15, 1990, Paris, France) British actress and activist who was perhaps best known for playing the young wizard Hermione Granger in the Harry Potter films. She also garnered attention as a spokesperson for womens equality.',
                       style: TextStyle(color: Colors.grey,height: 1.4),),
                        SizedBox(height: 40,),
                        Text('Born',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text('April 15, 1990, Paris, France',style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 20,),
                        Text('Nationality',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text('British',style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 20,),
                        Text('Videos',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(height: 20,),
                        Container(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              makeVideo(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm0SHEnVaIPKufyie6STq4fnXD_l4rq-RGY0as8qXWD4IufAf5C85QY-0g152F9ulMwd8&usqp=CAU'),
                              makeVideo(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPeiGPasUgWeakTKmWLlm_wDyq1_e3WCsTuDZ8UpWKfH9kBH9op9AfSsLrepDXoVyG1r8&usqp=CAU'),
                              makeVideo(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6t7zdoyXTla5qtwa_tcasqn-wpMpXtf_-fQ4pteRJhEgV3LiyJ7X7hE9ZrGK3pc2-y_0&usqp=CAU'),
                            ],
                          ),
                        ),
                        SizedBox(height: 120,)


                      ],
                    ),
                  )

                ]
              )
              )
            ],
          ),
          Positioned.fill(
            bottom: 50,
              child: Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade700,
                      borderRadius: BorderRadius.circular(50),

                    ),
                    child: Align(child: Text("Follow",style: TextStyle(color:Colors.white),)),
                  ),
                ),
              )
          ),

        ],
      ),

    );
  }
  Widget makeVideo({image}){
    return AspectRatio(aspectRatio: 1.5/1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          )
        ),
        margin: EdgeInsets.only(right: 20),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.3)
                  ]
              )
          ),
          child: Align(
            child: Icon(Icons.play_arrow,color: Colors.white,size: 70,),
          ),
        ),
      ) ,


    );
  }
}
