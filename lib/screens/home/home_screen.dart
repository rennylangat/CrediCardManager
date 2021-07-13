import 'package:card_manager/size_config.dart';
import 'package:card_manager/widgets/credit_card.dart';
import 'package:card_manager/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey,
              image: DecorationImage(
                image: AssetImage("assets/images/profImg.jpg"),
              ),
            ),
          ),
        ),
        title: Row(
          children: [
            Icon(
              Icons.clean_hands_outlined,
              color: Colors.black,
            ),
            SizedBox(
              width: getProportionateScreenWidth(10),
            ),
            Text(
              "Hello Renny",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notification_add_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Cards",
                      style:
                          TextStyle(fontSize: getProportionateScreenHeight(20)),
                    ),
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Icon(Icons.add),
                            )),
                        SizedBox(
                          width: getProportionateScreenWidth(5),
                        ),
                        Text(
                          "Add card",
                          style: TextStyle(
                              fontSize: getProportionateScreenHeight(18)),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                Container(
                  height: SizeConfig.screenHeight * 0.22,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CreditCard(
                        cardColor: Colors.white,
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      CreditCard(
                        cardColor: Colors.blue.shade900,
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      CreditCard(
                        cardColor: Colors.red,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        maxRadius: 4,
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(5),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        maxRadius: 4,
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(5),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        maxRadius: 4,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundedButton(
                        iconColor: Colors.green,
                        titleIcons: Icons.send_outlined,
                        titleText: "Transfer",
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      RoundedButton(
                        iconColor: Colors.red.shade400,
                        titleIcons: Icons.account_balance_wallet_outlined,
                        titleText: "Withdraw",
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      RoundedButton(
                        iconColor: Colors.blue.shade500,
                        titleIcons: Icons.account_box_outlined,
                        titleText: "PayBills",
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      RoundedButton(
                        iconColor: Colors.blueAccent,
                        titleIcons: Icons.account_balance_wallet_outlined,
                        titleText: "Top-Up",
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
