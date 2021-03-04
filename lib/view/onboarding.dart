import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:onboardinpage/controller/onbordingcontroller.dart';


class onboarding extends StatelessWidget {
  final _controller = onboardingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: PageView.builder(
                controller : _controller.pageController,
              //  onPageChanged: controller.selectedPage,
                itemCount: _controller.OnboardingCont.length,
                  itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(_controller.OnboardingCont[index].imageAsset),
                      SizedBox(height: 20.0),
                      Text(_controller.OnboardingCont[index].tittle, style: TextStyle(fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.normal, color: Colors.black, fontSize: 24.0)
                      ),

                      SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),

                        child: Text(_controller.OnboardingCont[index].description, style: TextStyle(fontWeight: FontWeight.w400,
                        color: Colors.deepPurple,fontSize: 16.0),
                          textAlign: TextAlign.center

                            ,),
                      )
                    ],
                  ),
                );

    }
    ),
            ),
            Positioned(
              bottom: 175.0,
              left: 150.0,
              child: Row(
                children: List.generate(_controller.OnboardingCont.length,
                        (index) => Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                              height: 8.0,
                              width: 8.0,
                            decoration: BoxDecoration(
                              color: Colors.red, //controller.selectedPage.value == index? Colors.red : Colors.grey,
                              shape: BoxShape.circle
                            ),
                          ),

                        )),


              ),

            ),
            Positioned(
              bottom: 20.0,
              right: 20.0,
              child: FloatingActionButton( child: Text("Next"), 
                onPressed: () {},
                elevation: 0.0,
              backgroundColor: Colors.red,)

            )
          ],
        ),
      )

    );


  }
}
