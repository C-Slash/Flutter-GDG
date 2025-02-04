import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_icon.dart';

class CustomContainerWeight extends StatelessWidget {
  const CustomContainerWeight({super.key, required this.text1, required this.text2, required this.function, required this.function2});
  
final String text1;
final String text2;
final Function() function;
final Function() function2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Text(
                            text1,
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            text2,
                            style: TextStyle(
                                fontSize: 45,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomIcon(
                                function: function,
                                 icon: Icons.remove,
                                 ),
                          
                                SizedBox(width: 10,),
        
                                CustomIcon(
                                function: function2,
                                
                                 icon: Icons.add,
                                 )
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