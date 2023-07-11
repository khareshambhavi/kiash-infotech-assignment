import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Wallet App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 1;
  PageController controller = PageController(initialPage: 0);
  
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.home, size: 30),
      const Icon(
        Icons.wallet,
        size: 30,
        color: Colors.white,
      ),
      const Icon(Icons.room_service_outlined, size: 30),
      const Icon(Icons.history, size: 30),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 65,
        elevation: 0,
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 46,
          ),
          PageView(
            controller: controller,
            children: [
              SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(color: Colors.blue, width: 2))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Regular Wallet',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            Text('Investment Wallet',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Account Holder',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                                Text('SAURABH PATHAK',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 16)),
                              ],
                            ),
                            const CircleAvatar(
                              radius: 26,
                              backgroundImage:
                                  AssetImage('assets/walletcircular.png'),
                              backgroundColor: Colors.transparent,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 230,
                        padding: const EdgeInsets.all(2),
                        child: Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Image(
                                image: AssetImage(
                                  'assets/atm.png',
                                ),
                                height: 400,
                                width: 600,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(42),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'TBT Regular wallet',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0),
                                  ),
                                  Image(
                                      image: AssetImage('assets/atmwifi.png')),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('SAURABH PATHAK',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                      Column(
                                        children: [
                                          Text(
                                            'Balance',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Rs. 2.00',
                                            style: TextStyle(
                                                color: Colors.green.shade700,
                                                fontWeight: FontWeight.w900),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 25),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey.shade300, width: 2))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MyButton(
                                text: 'Deposit',
                                imagepath: 'assets/images.png'),
                            MyButton(
                                text: 'Withdraw',
                                imagepath: 'assets/withdraw.png'),
                            MyButton(
                                text: 'Invest',
                                imagepath: 'assets/requestmoney.png'),
                          ],
                        ),
                      ),
                      Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(14),
                          child: Text(
                            'Recent history',
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 20),
                            textAlign: TextAlign.left,
                          )),

                      //ListView.builder(

                      //itemBuilder: ((context, index)=>ListTile(

                      //)))
                      Container(padding: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade300, width: 2))),
                        child: ListTile(
                          leading: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                child:
                                    Image(image: AssetImage('assets/stock.png')),
                              ),
                              Text(
                                '5 Jul 9:37',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              )
                            ],
                          ),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Invested on TBT INVEST PLAN',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                              Text(
                                ' x',
                                style: TextStyle(fontWeight: FontWeight.w800, color: Colors.transparent),
                              )
                            ],
                          ),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                            Text('#MNP9RCCAC8AT',
                            style: TextStyle(fontSize: 9, fontWeight: FontWeight.w500)),
                            Text('-Rs.1.00', style: TextStyle(fontSize: 22, color: Colors.red, fontWeight: FontWeight.w800)),
                            Text('Closing Balance:Rs 2.00',style: TextStyle(fontSize: 13,)),
                          ]),
                        ),
                      ),

                     Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade300, width: 2))),
                       child: ListTile(
                          leading: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                child:
                                    Image(image: AssetImage('assets/stock.png')),
                              ),
                              Text(
                                '5 Jul 8:21',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              )
                            ],
                          ),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Invested on TBT INVEST PLAN',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                              Text(
                                ' x',
                                style: TextStyle(fontWeight: FontWeight.w800, color: Colors.transparent),
                              )
                            ],
                          ),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                            Text('#A6UCKYQ5ZN1M',
                            style: TextStyle(fontSize: 9, fontWeight: FontWeight.w500)),
                            Text('-Rs.2.00', style: TextStyle(fontSize: 22, color: Colors.red, fontWeight: FontWeight.w800)),
                            Text('Closing Balance:Rs 3.00',style: TextStyle(fontSize: 13,)),
                          ]),
                        ),
                     )

                    ],
                  ),
                ),
              )
            ],
          )
        ],
      )),
      bottomNavigationBar: CurvedNavigationBar(
          color: Colors.blue,
          backgroundColor: Colors.white,
          index: index,
          height: 60,
          items: items),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  final String imagepath;
  const MyButton({
    Key? key,
    required this.text,
    required this.imagepath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
          onPressed: () {},
          child: Image(
            image: AssetImage(imagepath),
            height: 28,
          ),
          style: OutlinedButton.styleFrom(
              shape: const CircleBorder(),
              side: const BorderSide(color: Colors.transparent),
              padding: const EdgeInsets.all(14),
              elevation: 0,
              backgroundColor: Colors.white,
              shadowColor: Colors.grey.withOpacity(0.2)),
        ),
        Text(text),
      ],
    );
  }
}
