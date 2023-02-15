import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(color: Colors.blue, icon: Icons.border_all, text: 'General',),
            _SingleCard(color: Colors.pink, icon: Icons.car_crash_outlined, text: 'Correo',),
          ]),
          TableRow(
          children: [
            _SingleCard(color: Colors.orange, icon: Icons.shop, text: 'Shopping',),
            _SingleCard(color: Colors.yellow, icon: Icons.add_box_outlined, text: 'Caja',),
          ]),
          TableRow(
          children: [
            _SingleCard(color: Colors.black, icon: Icons.zoom_out_map_outlined, text: 'Zom',),
            _SingleCard(color: Colors.indigo, icon: Icons.car_crash_outlined, text: 'Car',),
          ]),
          TableRow(
          children: [
            _SingleCard(color: Colors.grey, icon: Icons.airline_seat_recline_extra_outlined, text: 'Avion',),
            _SingleCard(color: Colors.purple, icon: Icons.wrap_text_outlined, text: 'Wrap',),
          ]),
      ],

    );
  }
}

class _SingleCard extends StatelessWidget {
 final IconData icon;
 final Color color;
 final String text;

  const _SingleCard({super.key, 
  required this.icon, 
  required this.color, 
  required this.text});

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: this.color,
                    child: Icon(this.icon, size: 35,color: Colors.white),
                    radius: 30,
                  ),  
                  Text(this.text, style: TextStyle(color: this.color, fontSize: 18),)
                ],
                )
              );
              
          
   
  }
}

class _CardBackground extends StatelessWidget {

    final Widget child;

  const _CardBackground({super.key, 
  required this.child});
    
  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.all(15),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
           
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
              ),
              child: this.child,
          ),
        ),
      ),
    );
  }
}