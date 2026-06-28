
import 'package:flutter/material.dart';

class CustomRatingCard extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final String rating;
  final String doctorImagePath;

  static const String gIconPath = 'assets/images/calendar icon.png';
  static const String infoIconPath = 'assets/images/help icon.png';
  static const String heartIconPath = 'assets/images/question icon.png';
  static const String starIconPath = 'assets/images/love icon.png';

  const CustomRatingCard({
    super.key,
    required this.doctorName,
    required this.specialty,
    required this.rating,
    required this.doctorImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344,
      height: 106, 
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal:6),
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8), 
      decoration: BoxDecoration(
        color:Color(0xffCAD6FF),
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 68,
                height: 68,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(doctorImagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
             
            ],
          ),
          
          const SizedBox(width: 12),
          
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
        width: 18,  
        height: 18,
        decoration: const BoxDecoration(
          color:Color(0xff2260FF),
          shape: BoxShape.circle,
        ),
        padding: const EdgeInsets.all(3), 
        child: Image.asset(
          'assets/images/premium 2.png',
        ),
      ),
      SizedBox(width:5),
      Text("Professional Doctor",style:TextStyle(
        fontSize:12,
        color:Color(0xff2260FF),
      )),
                      ],
                    ),
                    Row(
                      children: [
                       Container(
  width: 40,  
  height: 18, 
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(13), 
  ),
  child: Padding(
    padding: const EdgeInsets.only(left: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(Icons.star, color: Color(0xff2260FF), size: 15),
        const SizedBox(width: 2),
        Text(
          rating, 
          style: const TextStyle(
            fontSize: 9, 
            fontWeight: FontWeight.bold, 
            color:Color(0xff2260FF),
          ),
        ),
      ],
    ),
  ),
)
                      ],
                    ),
                  ],
                ),
                
                Container(
  width: 260,
  height: 45,
  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(13),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        doctorName, 
        style: TextStyle(color:Color(0xff2260FF), fontSize: 12, fontWeight: FontWeight.bold),
        maxLines: 1,
        overflow: TextOverflow.ellipsis, 
      ),
      const SizedBox(height: 1),
      Text(
        specialty, 
        style: const TextStyle(color: Color(0xff070707), fontSize: 9),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    ],
  ),
),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container(
  width:35,  
  height:22, 
  decoration: BoxDecoration(
    color:Color(0xff2260FF),
    borderRadius: BorderRadius.circular(13), 
  ),
  alignment: Alignment.center, 
  child: const Text(
    'Info',
    style: TextStyle(
      fontSize:12,  
      color: Color(0xffFFFFFF),
    ),
  ),
),
      SizedBox(height:5),      
              
                    Padding(
  padding: const EdgeInsets.only(right:3),
  child: Row(
    mainAxisSize: MainAxisSize.min, 
    children: [
      Container(
        width: 18,  
        height: 18,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        padding: const EdgeInsets.all(3), 
        child: Image.asset(
          'assets/images/calendar icon.png',
          color:Color(0xff2260FF), 
        ),
      ),
      const SizedBox(width:1),
  
      Container(
        width: 18,
        height: 18,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        padding: const EdgeInsets.all(3),
        child: Image.asset(
          'assets/images/help icon.png', 
          color:Color(0xff2260FF),
        ),
      ),
      
        const SizedBox(width: 1),
      Container(
        width: 18,
        height: 18,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        padding: const EdgeInsets.all(3),
        child: Image.asset(
          'assets/images/question icon.png', 
          color:Color(0xff2260FF),
        ),
      ),
      const SizedBox(width:1),
  
      Container(
        width: 18,
        height: 18,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        padding: const EdgeInsets.all(3),
        child: Image.asset(
          'assets/images/love icon.png', 
          color:Color(0xff2260FF),
        ),
      ),
    ],
  ),
),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}