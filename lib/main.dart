import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Expansion Panel',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


//! instagram
//! @Aradazr.dev
//
//? GitHub
//? github.com/aradazr
//
//* Telegram
//* @aradazr
//
// Calculator With Abimated Dark , Light Theme
// i ohpe you [like it]



class _MyHomePageState extends State<MyHomePage> {

  //! cuz we have 4 exPanel so we use 4 false
  final List<bool> _isOpen = [false, false, false, false];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //? Simple AppBar
      appBar: AppBar(backgroundColor: Colors.blue,
      title: Text('ExpansionPanel',
      style: GoogleFonts.inter(fontWeight:FontWeight.w500,color:Colors.white,),
      ),
      centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 35, 34, 40),
      body: SafeArea(
        child: Center(

          //!for expansion panel to scroll
          child: SingleChildScrollView(
            child: Column(
              //? List for Expansion Panel
              
              children: [
                ExpansionPanelList(

                  animationDuration: const Duration(milliseconds: 1000),
                  elevation: 0,
                  dividerColor: const Color.fromARGB(255, 35, 34, 40),
                  expandIconColor: Colors.white,
                  materialGapSize: 10,
                  expansionCallback: (i, isExpanded) {
                    setState(() {
                      _isOpen[i] = isExpanded;
                    });
                  },
                  children: [
                    //*Expansion Panel 1
                    ExpansionPanel(
                        backgroundColor: const Color.fromARGB(255, 35, 34, 40),
                        isExpanded: _isOpen[0],
                        headerBuilder: (context, isExpanded) => 
                        ListTile(
                              title: Text(
                                'About Us',
                                style: GoogleFonts.playfairDisplay(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                        body: Padding(
                          padding: const EdgeInsets.fromLTRB(10,0,0,0),
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type spe",
                            style: GoogleFonts.playfairDisplay(
                                color: Colors.white, fontSize: 15,),
                          ),
                        )),

                    //!-------------------------------------------------------------------------------------------
                   //*Expansion Panel 2
                    ExpansionPanel(
                        backgroundColor: const Color.fromARGB(255, 35, 34, 40),
                        isExpanded: _isOpen[1],
                        headerBuilder: (context, isExpanded) => ListTile(
                              title: Text(
                                
                                'Contact Us',
                                style: GoogleFonts.playfairDisplay(
                                    color: Colors.white, fontSize:25,),
                              ),
                            ),
                        body:  Padding(
                          padding: const EdgeInsets.fromLTRB(10,0,0,0),
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type spe",
                            style: GoogleFonts.playfairDisplay(
                                color: Colors.white, fontSize: 15,height:2.2),
                          ),
                        )),
                    
                    
                    //!-------------------------------------------------------------------------------------------
                   //*Expansion Panel 3
                    ExpansionPanel(
                        backgroundColor: const Color.fromARGB(255, 35, 34, 40),
                        isExpanded: _isOpen[2],
                        headerBuilder: (context, isExpanded) => ListTile(
                              title: Text(
                                'Customer Services',
                                style: GoogleFonts.playfairDisplay(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                        body: Padding(
                          padding: const EdgeInsets.fromLTRB(10,0,0,0),
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type spe",
                            style: GoogleFonts.playfairDisplay(
                                color: Colors.white, fontSize: 15,height:2.2),
                          ),
                        )),
                    
                    //!-------------------------------------------------------------------------------------------
                   //*Expansion Panel 4
                   ExpansionPanel(
                        backgroundColor: const Color.fromARGB(255, 35, 34, 40),
                        isExpanded: _isOpen[3],
                        headerBuilder: (context, isExpanded) => ListTile(
                              title: Text(
                                'Learn More',
                                style: GoogleFonts.playfairDisplay(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                        body: Padding(
                          padding: const EdgeInsets.fromLTRB(10,0,0,0),
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type spe",
                            style: GoogleFonts.playfairDisplay(
                                color: Colors.white, fontSize: 15,height:2.2),
                          ),
                        )),
                  ],
                )

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
