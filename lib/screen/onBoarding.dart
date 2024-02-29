import 'package:flutter/material.dart';
import 'package:splach/screen/staticDta.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Expanded(
          
          child: PageView.builder(
              itemCount: onBoardingList.length,
              itemBuilder: (context, i) => Column(
                    children: [
                      ListTile(tileColor: onBoardingList[i].color1!),
                      const SizedBox(height: 90),
                      Image.asset(
                        onBoardingList[i].image!,
                        width: 200,
                        height: 230,
                        fit: BoxFit.fill,
                      ),
                      ListTile(tileColor: onBoardingList[i].color2!),
                      const SizedBox(height: 60),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.topLeft,
                        child: Text(
                          onBoardingList[i].body!,
                          style: const TextStyle(
                              color: Color(
                                0XFf7f8f9F,
                              ),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.topLeft,
                        child: Text(
                          onBoardingList[i].body2!,
                          style: const TextStyle(
                              color: Color(0XFfffffff),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )),
        ),
          Expanded(
            
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ...List.generate(
                    onBoardingList.length,
                    (index) => AnimatedContainer(
                        margin:const EdgeInsets.only(right: 5),
                        duration: const Duration(milliseconds: 900),
                        width: 6,
                        height:6 ,
                        decoration: BoxDecoration(
                          color:const Color(0XFfe1e1e1),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        ))
                  ],
                ),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                    Positioned(
                    top: 50,
                    right: 20,
                    child:TextButton(onPressed: () {
                      
                    },child: const Text("Skip",style: TextStyle(color: Colors.white),),),),
                  Positioned(
                    bottom: 60.0,
                    child: OutlinedButton(onPressed: (){}, child: Container(
                      padding:const EdgeInsets.all(20.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child:const Icon(Icons.arrow_forward_ios),
                    ),
                    style:ElevatedButton.styleFrom(
                      side: const BorderSide(color: Colors.black26),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(20),
                      onPrimary:Color(0xffffffff),
                    ) ,)),
                ],
              ) 

              ],
            ))
      ],
    )));
  }
}
