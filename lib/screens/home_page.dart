import 'package:flutter/material.dart';

import '/main.dart';
import '/widgets/options_button.dart';
import '/widgets/options_tile.dart';
import '/widgets/page_indicator.dart';
import '/widgets/paying_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      backgroundColor: bgcolor,
      bottomNavigationBar: const BottomAppBar(
        color: seconderyColor,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home_rounded,
              size: 32,
            ),
            Icon(
              Icons.settings_rounded,
              size: 30,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        backgroundColor: Colors.purple,
        child: const Icon(
          Icons.monetization_on_rounded,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: seconderyColor,
                    child: Icon(Icons.add_rounded),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 200,
                child: PageView(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    PayingCard(
                      money: '399',
                      cardNumber: '3377',
                      date: '10/8',
                      color: Colors.deepPurple[400]!,
                    ),
                    PayingCard(
                      money: '2450',
                      cardNumber: '3879',
                      date: '12/7',
                      color: Colors.deepOrange[400]!,
                    ),
                    PayingCard(
                      money: '1800',
                      cardNumber: '3348',
                      date: '24/5',
                      color: Colors.green[400]!,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              PageIndicator(controller: controller),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OptionsButton(
                    image: 'lib/images/dollar-coin.png',
                    label: 'Bill',
                  ),
                  OptionsButton(
                    image: 'lib/images/salary.png',
                    label: 'Send',
                  ),
                  OptionsButton(
                    image: 'lib/images/pay.png',
                    label: 'Pay',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                children: [
                  OptionsTile(
                    image: 'lib/images/graph.png',
                    label: 'Statistics',
                    description: 'Payments and Income',
                  ),
                  SizedBox(height: 20),
                  OptionsTile(
                    image: 'lib/images/payment-method.png',
                    label: 'Transactions',
                    description: 'Transactios history',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
