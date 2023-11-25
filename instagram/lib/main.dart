// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InstagramClone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Scaffold(
          body: Column(
            children: [
              Container( 
                width:double.infinity, 
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Image.asset("assets/images/insta_logo.png"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add_circle,
                            color:Colors.black87,
                            size: 20,
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.black87,
                            size:20,
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0, left: 8, bottom: 8, right: 20),
                          child: Icon(
                            Icons.send,
                            color: Colors.black87,
                            size:20,
                                              ),
                        ),
                      ],
                    ),
                    
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  //width: 50,
                child: SingleChildScrollView(
                  child: Column(children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        storyWidget("assets/images/Talha.JPG","Talh_Pamukcu"),
                        storyWidget("assets/images/photo1.jpeg","Selin.Çardakçı"),
                        storyWidget("assets/images/photo2.jpeg","ObayanaCuma53"),
                        storyWidget("assets/images/photo3.jpeg","ferhat1gencer"),
                        storyWidget("assets/images/photo4.jpeg","MelisaDöngel"),
                        storyWidget("assets/images/photo2.jpeg","ObayanaCuma53"),
                        storyWidget("assets/images/photo4.jpeg","MelisaDöngel"),
                        storyWidget("assets/images/Talha.JPG","Talha_Pamukcu"),
                        storyWidget("assets/images/photo3.jpeg","ferhat1gencer"),
                  
                      ],),
                    ),
                    PostItem("assets/images/Talha.JPG","assets/images/bmw.jpeg","Talha_Pamukcu","İstanbul/MERTER"),
                    PostItem("assets/images/photo1.jpeg","assets/images/drone.jpeg","Selin.Çardakçı","İstanbul/ZeytinBurnu"),
                    PostItem("assets/images/photo2.jpeg","assets/images/gs.jpeg","ObayanaCuma53","İstanbul/Kartal"),
                    PostItem("assets/images/photo3.jpeg","assets/images/golf.jpeg","ferhat1gencer","İstanbul/Pendik"),
                    PostItem("assets/images/photo4.jpeg","assets/images/manzara.jpeg","MelisaDöngel","İstanbul/Esenler"),
                    
                    
                  ],),
                ),
                )
                ),
              Container(
                width:double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.home,size: 28,color:Colors.black54),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.search,size: 28,color:Colors.black54),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.smart_display,size: 28,color:Colors.black54),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.favorite,size: 28,color:Colors.black54),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.person,size: 28,color:Colors.black54),
                  ),
                ],) ,
                ),
            ],
          ),
      ),
    );
  }

  Container PostItem(String avatar, String photo, String name, String location) => Container(
    child: Padding(
      padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(backgroundImage: AssetImage(avatar),
                    radius: 20,
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name,
                        style: TextStyle(
                          fontSize: 12, 
                          fontWeight:FontWeight.bold ),),
                          Text(location,
                        style: TextStyle(
                          fontSize: 10, 
                          fontWeight:FontWeight.normal ),),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.more_horiz),

                
                
            ],),
          ),
          
             Container(
              width: double.infinity,
              child: Image.asset(photo, fit: BoxFit.cover,)
            ),
          LikeCommentBox(),
          CommentBox("ObayanaCuma53", "Çok İyi Olmuş Kardeşim Eline Sağlık MiSs Gibi Olmuş Benide Etiketle."),
          CommentBox("Selin.Çardakçı", "Talha Bayıldım Fotoğrafa Bana Ne Zaman Alıyoruz Bi BMW :)"),
          CommentBox("ferhat1gencer", "Kankam Hayırlı Olsun Yeni Arabann.")
      ],),
    ),
  );

  

  Padding LikeCommentBox() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: [
          Row(
            children: [
              Icon(Icons.favorite_border, color: Colors.black87,),
              SizedBox(width: 8,),
              Icon(Icons.comment_bank_outlined,color:Colors.black87,),
            ],
          ),
          Icon(Icons.flag_circle_outlined,color:Colors.black87,),
        ],),
      );
  }


  

  Padding CommentBox(String name, String comment) {
    return Padding(
        padding: const EdgeInsets.all(3.0),
        child: Row(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: RichText(
                maxLines: 3,
                text: TextSpan(
                children:[
                  TextSpan(
                    text:name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 12,
                      ),
                    ),
                    TextSpan(text: " "),
                    TextSpan(
                    text: comment,
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 12,
                      ),
                      
                    ),
                    
                ]
              )),
            ),

            
          // Text(
          //   "MelisaDöngel", 
          //   style: TextStyle(
          //     fontWeight: FontWeight.bold,
          //     color: Colors.black87,
          //     fontSize: 12,
          //   ),),
          //   SizedBox(width: 5,),
            
          //   Expanded(
          //     child: Text(
          //       "Off Bayıldım Talhaaa Gerçekten Çok Güzel Bir Fotoğraf Eline Sağlık",
          //       style: TextStyle(
                
          //       color: Colors.black54,
          //       fontSize: 12,
          //       ),
          //       ),
          //   )
        ],),
      );
  }

Widget storyWidget(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              gradient:LinearGradient(colors: [
                                const Color.fromRGBO(214, 71, 103, 1),
                                const Color.fromRGBO(241, 166, 117, 1),
                                
                                
                                ]),
                              shape:BoxShape.circle, 
                            ),
                            child: Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: CircleAvatar(backgroundImage: AssetImage(avatar),
                              radius: 35,
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(name, style: TextStyle(fontSize: 11),),
                          
                        ],
                      ),
    );
  }
}





  