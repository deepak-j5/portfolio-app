import 'package:flutter/material.dart';
import 'package:portfolio_app/routes.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroScreen extends StatefulWidget
{
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {


  @override
  Widget build(BuildContext context) {

    void contactMe()
    {
      showDialog(
          context: context,
          builder: (context) => Center(
            child: SingleChildScrollView(
              child: AlertDialog(
                content: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: InkWell(
                        onTap: () async {
                          try
                          {
                            await launchUrl(Uri.parse('https://wa.me/917973826899'));
                          } catch(e) {}
                        },
                        child: const CircleAvatar(backgroundImage: AssetImage('assets/img/whatsapp.png'), backgroundColor: Colors.white,),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(flex: 4, child: InkWell(
                        onTap: () async {
                          try
                          {
                            await launchUrl(Uri.parse('mailto:chawla.j5.dc@gmail.com'));
                          } catch(e) {}
                        },
                        child: const CircleAvatar(backgroundImage: AssetImage('assets/img/email.png'), backgroundColor: Colors.white,)),),
                    const SizedBox(width: 10,),
                    Expanded(flex: 4, child: InkWell(
                        onTap: () async {
                          try
                          {
                            await launchUrl(Uri.parse('https://www.linkedin.com/in/deepak-chawla-8ab396280'));
                          } catch(e) {}
                        },
                        child: const CircleAvatar(backgroundImage: AssetImage('assets/img/linkedin.png'), backgroundColor: Colors.white,)),),
                    const SizedBox(width: 10,),
                    Expanded(flex: 4, child: InkWell(
                        onTap: () async {
                          try
                          {
                            await launchUrl(Uri.parse('tel:+917973826899'));
                          } catch(e) {}
                        },
                        child: const CircleAvatar(backgroundImage: AssetImage('assets/img/call.png'), backgroundColor: Colors.white,)),),
                    const SizedBox(width: 10,),
                    Expanded(flex: 4, child: InkWell(
                        onTap: () async {
                          try
                          {
                            await launchUrl(Uri.parse('https://github.com/deepak-j5'));
                          } catch(e) {}
                        },
                        child: const CircleAvatar(backgroundImage: AssetImage('assets/img/github.png'), backgroundColor: Colors.white,)),),
                  ],
                ),
              ),
            ),
          )
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Deepak Chawla' , style: TextStyle(fontSize: 25),)),
      ),
      body: Center(
        child: OrientationBuilder(builder: (context,o) => o == Orientation.landscape ?
        SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20,),
                  const SizedBox(
                    width: 350,
                    height: 300,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/img/profile.png'),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Text('HI! I am Deepak Chawla.' , style: TextStyle(fontSize: 25),),
                  const SizedBox(height: 20,),
                  ElevatedButton(onPressed: () {
                    router.pushReplacementNamed('about');
                  }, child: const Text('ABOUT ME' , style: TextStyle(fontSize: 20),)),
                  const SizedBox(height: 20,),
                  ElevatedButton(onPressed: () {
                    contactMe();
                  }, child: const Text('CONTACT ME' , style: TextStyle(fontSize: 20),)),
                  const SizedBox(height: 20,),
                ]
            ),
          ),
        ) :
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              const SizedBox(
                width: 350,
                height: 300,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/img/profile.png'),
                ),
              ),
              const SizedBox(height: 40,),
              const Text('HI! I am Deepak Chawla.' , style: TextStyle(fontSize: 25),),
              const SizedBox(height: 100,),
              ElevatedButton(onPressed: () {
                router.pushReplacementNamed('about');
              }, child: const Text('ABOUT ME' , style: TextStyle(fontSize: 20),)),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                contactMe();
              }, child: const Text('CONTACT ME' , style: TextStyle(fontSize: 20),)),
              const SizedBox(height: 20,),
            ]
        ),)
      ),
    );
  }
}