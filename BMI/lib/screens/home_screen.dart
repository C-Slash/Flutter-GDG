import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Gender_Container.dart';
import 'package:flutter_application_1/widgets/custom_container_weight.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool is_male = false;
  bool is_female = false;
  double height = 180.0;
  int weight = 74;
  int age = 19;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF111428),
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu), color: Colors.white,),
        backgroundColor: Color.fromARGB(255, 13, 15, 31),
        centerTitle: true,
        title: Text('BMI CALCULATOR',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Colors.white)),
      ),
      body: Column(
        children: [
          Row(
            children: [
              GenderContainer(
                imagePath: "assets/images/male.png",
                text: "MAlE",
                function: () {
                  setState(() {
                    is_male = true;
                    is_female = false;
                  });
                },
                color: is_male ? Colors.blueAccent : Color(0xFF1D1E33),
              ),
              GenderContainer(
                imagePath: "assets/images/female.png",
                text: "FEMAlE",
                function: () {
                  setState(() {
                    is_male = false;
                    is_female = true;
                  });
                },
                color: is_female ? Colors.pink : Color(0xFF1D1E33),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "HEIGHT",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${height.round()}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.white),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                        activeTrackColor: is_female
                            ? Colors.pink
                            : Colors
                                .blueAccent, // Color of the active part of the slider
                        thumbColor: is_female
                            ? Colors.pink
                            : Colors.blueAccent, // color of the moving circle
                      ),
                      child: Slider(
                          min: 100,
                          max: 250,
                          value: height,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            
            children: [
              CustomContainerWeight(
                  text1: "WEIGHT",
                  text2: "$weight",
                  function: () {
                    setState(() {
                      weight--;
                    });

                  },

                  function2: (){
                    setState(() {
                      weight++;
                    });
                  },
                  
                  
                  
                  ),
              CustomContainerWeight(
                  text1: "Age",
                  text2: "$age",
                   function: () {
                    setState(() {
                      age--;
                    });

                  },

                  function2: (){
                    setState(() {
                      age++;
                    });
                  },
              )
            ],
          )
        ],


      ),

    bottomNavigationBar:Container(
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
      ),
      child: Center(child: Text( "Next",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white,))),
    ) ,
    
     
    );
  }
}
