import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int a = 20, w = 66, h = 160;
  num bmi = 0;
  bool isMale = true;
  String state = "Normal";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("BMI APP", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("Age", style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),),
                        Text(a.toString(), style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(onPressed: () {
                              setState(() {
                                a++;
                              });
                            }, icon: const Icon(
                              Icons.add,
                              color: Colors.black87,),
                              iconSize: 35,
                            ),
                            IconButton(onPressed: () {
                              setState(() {
                                a--;
                              });
                            }, icon: const Icon(
                              Icons.remove,
                              size: 35,
                              color: Colors.black87,)
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("Weight(KG)", style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),),
                        Text(w.toString(), style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(onPressed: () {
                              setState(() {
                                w++;
                              });
                            }, icon: const Icon(
                              Icons.add,
                              color: Colors.black87,),
                              iconSize: 35,
                            ),
                            IconButton(onPressed: () {
                              setState(() {
                                w--;
                              });
                            }, icon: const Icon(
                              Icons.remove,
                              size: 35,
                              color: Colors.black87,)
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 80),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    const Text("Height(cm)", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(h.toString(), style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.black87
                          ),),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(onPressed: () {
                                  setState(() {
                                    h++;
                                  });
                                }, icon: const Icon(
                                    Icons.add,
                                size: 35,
                                color: Colors.black87,)),
                                IconButton(onPressed: () {
                                  setState(() {
                                    h--;
                                  });
                                }, icon: const Icon(
                                    Icons.remove,
                                  size: 35,
                                  color: Colors.black87,)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 80),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    const Text("Gender", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("I'm a ", style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87
                        ),),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(onPressed: () {
                              setState(() {
                                isMale = true;
                              });
                            }, icon: Icon(
                                Icons.male,
                            size: 38,
                                color: (isMale ? Colors.blue : Colors.black87)
                              ,)),
                            IconButton(onPressed: () {
                              setState(() {
                                isMale = false;
                              });
                            }, icon: Icon(
                                Icons.female,
                            color: (!isMale ? Colors.pink : Colors.black87),
                                size: 38,)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8,),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 80),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text("Your Result is", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black87
                    ),),
                    Text(bmi.toStringAsFixed(1), style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.black87
                    ),),
                    Text(state, style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black87
                    ),),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: () {
                setState(() {
                  bmi = w/pow((h/100), 2);
                  if (bmi <= 18.4){
                    state = "Underweight";
                  }else if(bmi <= 24.9){
                    state = "Normal";
                  }else if (bmi <= 39.9){
                    state = "Overweight";
                  }else{
                    state = "Obese";
                  }
                });
              }, child: const Text("Calculate", style: TextStyle(
                color: Colors.black87
              ),), ),
            ],
          ),
        ),
      ),
    );
  }
}
