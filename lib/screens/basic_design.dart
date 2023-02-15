import 'package:flutter/material.dart';

class BasicDesignScreenScreen extends StatelessWidget {
   
  
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
         children: [
          // Imagen
          Image(image: AssetImage('assets/landscape.jpg')),
         
         //Titulo
         Title(),

          //Button section
         ButtonSection(),

         //Descripcion
         Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text('Pariatur est do pariatur et laborum excepteur eu aliqua nisi occaecat. Ex amet non cupidatat aliqua excepteur elit fugiat. Fugiat reprehenderit pariatur sint cupidatat excepteur proident ipsum sint officia tempor sit. Magna nulla est id consequat fugiat reprehenderit pariatur do dolore deserunt fugiat ullamco proident. Voluptate quis eiusmod aliquip cillum ut laboris nostrud ea veniam eiusmod consectetur elit pariatur.'))
         
         
         ],
      ),
    );
  }
}



class Title extends StatelessWidget {


  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        
       children: [

        Column(
          crossAxisAlignment : CrossAxisAlignment.start,
          children :[
              Text('Deschinen Lake Campgroud', style:  TextStyle(fontWeight: FontWeight.bold)),
              Text('Deschinen Lake Campgroud', style:  TextStyle(color: Colors.black45)),
          ],
        ),


          Expanded(child: Container(),),

         Icon(Icons.star, color: Colors.red,),
         Text('41'),
       ],

      ),
    );
  }
}


class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [

          CustomButton(icon : Icons.call, text: 'Call'),
         CustomButton(icon : Icons.map_sharp, text: 'Call'),
         CustomButton(icon : Icons.share, text: 'Compartir'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key, 
    required this.icon, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon (this.icon, color : Colors.blue, size: 30,),
        Text(this.text, style: TextStyle(color : Colors.blue)),
      ],
    );
  }
}