import 'package:flutter/material.dart';
import 'package:summer_camp/screens/screens.dart';

class SeaSide extends StatelessWidget {

  List<String> _images = [
    'assets/images/arugam.png',
    'assets/images/pass.png',
    'assets/images/hikk.png',
    'assets/images/gummy.png',
    'assets/images/hugo.png',
  ];
  List<String> _title = [
    'Arugam bay',
    'Passikudah',
    'Hikkaduwa',
    'Mabel beach',
    'Gaza beach',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: -70,
              right: -120,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Image.asset(
                  'assets/images/hugo.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 16,
              right: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.grey[700],
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                      ),
                      Text(
                        'Sea side',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/man.jpg'),
                  )
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.15,
              right: 16,
              left: 16,
              bottom: 0,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.all(8),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    shadowColor: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const SizedBox(height: 24,),
                              Text(
                                _title[index],
                                style: TextStyle(
                                    color: Colors.grey[700], fontSize: 24),
                              ),
                              const SizedBox(height: 24,),
                              Container(
                                padding: const EdgeInsets.only(left: 8,right: 8,top: 4,bottom: 4),
                                decoration: BoxDecoration(
                                    color: Color(0xff8DB1FB),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Session',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      'May-July',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 24,),
                            ],
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.3,child: Image.asset(_images[index],fit: BoxFit.cover,)),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
