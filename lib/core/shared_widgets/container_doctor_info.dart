
import 'package:flutter/material.dart';

class ContainerDoctorInfo extends StatelessWidget {
  const ContainerDoctorInfo({Key? key}) : super(key: key);

  final Color primaryColor = const Color(0xff2260FF);
  final Color lightBlueBg = const Color(0xffCAD6FF);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300, 
      height: 280,
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        color:Color(0xffCAD6FF),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:15),
        child: Column(
          children: [
            // 1. الجزء العلوي (الصورة والـ Containers الجانبية)
            Row(
        
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // حاوية الصورة الدائرية
                Container(
                  width: 135,
                  height: 135,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: const DecorationImage(
                      image: AssetImage('assets/images/doctor.png'), 
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width:8),
                
                // الأجزاء الجانبية للنصوص (الـ Experience والـ Focus)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right:10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // أ: حاوية الـ Experience المعدلة تماماً
                        Container(
                          width:130,
                          height:35,
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                            color:Color(0xff2260FF),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center, // جعل الأيقونة تتوسط الـ Container رأساً لتنزل قليلاً
                            children: [
                              // الأيقونة مستقلة داخل الـ Row
                              Image.asset(
                                "assets/images/premium.png",
                              
                              ),
                              const SizedBox(width:2), // مسافة أفقية بين الأيقونة والعمود
                              
                              // الـ Column الداخلي الذي يجمع النصوص تحت بعضها
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal:2),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        '15 years',
                                        style: TextStyle(
                                          color: Colors.white, 
                                          fontSize: 10, 
                                        ),
                                      ),
                                      
                                      const Text(
                                        "experience",
                                        style: TextStyle(
                                          color: Colors.white, 
                                          fontSize: 8, 
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                        const SizedBox(height: 6), // مسافة فاصلة بين الـ Experience والـ Focus
                        
                        // ب: حاوية الـ Focus المطلوبة كاملة
                        Container(
                          width: 130,
                          height:108,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Text(
                            'Focus: The impact of hormonal imbalances on skin conditions, specializing in acne, hirsutism, and other skin disorders.',
                            style: TextStyle(
                              color: Colors.white, 
                              fontSize: 10, 
                              height: 1.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            
            const Spacer(), // توزيع مسافات ذكي وثابت مثل الفيجما
            
            // 2. كبسولة الاسم البيضاء الممتدة
            Container(
              width:260,
              height:45,
              padding: const EdgeInsets.symmetric(vertical:4, horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Column(
                children: [
                  Text(
                    'Dr. Alexander Bennett, Ph.D.',
                    style: TextStyle(color: primaryColor, fontSize: 12),
                  ),
                  const SizedBox(height: 1),
                  const Text(
                    'Dermato-Genetics',
                    style: TextStyle(color: Color(0xff070707), fontSize: 9),
                  ),
                ],
              ),
            ),
            
            const Spacer(),
            
            // 3. سطر كبسولات التقييم والمواعيد المنفصلة تماماً
            Row(
             
              children: [
                // كبسولة التقييم والتعليقات المدمجة (شمال)
                Container(
                width: 40,  // المقاس بالظبط من الفيجما (Rectangle 53)
                height: 18, // الارتفاع من الفيجما
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13), // الـ Radius من الفيجما
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.star, color:Color(0xff2260FF), size:15),
                      const SizedBox(width: 2),
                      const Text(
                        '5', 
                        style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width:3),
              // ب: كبسولة التعليقات منفصلة لوحدها
              Container(
                width: 40,  // نفس مقاس كبسولة التقييم لتوحيد الشكل
                height: 18,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/chat 2.png"),
                      const SizedBox(width: 2),
                      const Text(
                        '40', 
                        style: TextStyle(fontSize: 9, color: Colors.black54, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
                SizedBox(width:5),
                // كبسولة المواعيد (يمين)
                Container(
                  width:175,
                  height:23,
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/alarm icon.png" ),
                      const SizedBox(width: 4),
                      const Text(
                        'Mon-Sat / 9:00AM - 5:00PM', 
                        style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color:Color(0xff2260FF)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            const Spacer(),
            
            // 4. السطر الأخير: زر الـ Schedule وأيقونات الفيجما الأصلية السادة
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // زر الـ Schedule المخصص (أيقونة + نص في الآخر)
              InkWell(
                onTap: () {
                  // أكشن الضغط
                },
                borderRadius: BorderRadius.circular(13),
                child: Container(
                  width: 85,  // المقاس بالملي من الفيجما
                  height: 21, // المقاس بالملي من الفيجما
                  padding: const EdgeInsets.symmetric(horizontal: 6), // مسافة داخلية بسيطة لحماية العناصر من الأطراف
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                
                     // يخلي الأيقونة أول الكونتينر والنص في آخره تماماً
                    children: [
                      // الأيقونة الـ Custom اللي منزلاها من الفيجما قبل الكلمة
                     
                      Image.asset(
                        'assets/images/calendar icon.png', // حطي اسم ملف الأيقونة الجديد هنا بالظبط
                        width: 10,  // مقاس صغير يناسب حجم الزرار
                        height: 10,
                      ),
                      
                      // كلمة Schedule في آخر الكونتينر
                      Padding(
                        padding: const EdgeInsets.only(left:10),
                        child: const Text(
                          'Schedule',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                
                // أيقونات الفيجما الصافية (نجمة سادة وقلب سادة)
                // الـ Row اللي بيجمع الأيقونات الأربعة في أقصى اليمين
Padding(
  padding: const EdgeInsets.only(right:3),
  child: Row(
    mainAxisSize: MainAxisSize.min, // يخليهم مضغوطين جمب بعض
    children: [
      // 1. أيقونة الـ Info (الـ Custom من الفيجما)
      Container(
        width: 18,  // مقاس متناسق مع حجم الفيجما الصغير
        height: 18,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        padding: const EdgeInsets.all(3), // مسافة داخلية للأيقونة
        child: Image.asset(
          'assets/images/help icon.png', // حطي مسار الأيقونة الـ custom هنا
          color:Color(0xff2260FF), // يلون الأيقونة بالأزرق
        ),
      ),
      const SizedBox(width:1), // مسافة فاصلة بين كل دايرة والتانية
  
      // 2. أيقونة الـ Chat / Messages
      Container(
        width: 18,
        height: 18,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        padding: const EdgeInsets.all(3),
        child: Image.asset(
          'assets/images/question icon.png', // حطي مسار أيقونة الـ chat من الفيجما
          color:Color(0xff2260FF),
        ),
      ),
      
        const SizedBox(width: 1),
      // 3. أيقونة القلب (المفضلة)
      Container(
        width: 18,
        height: 18,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        padding: const EdgeInsets.all(3),
        child: Image.asset(
          'assets/images/favorite icon.png', // حطي مسار أيقونة القلب من الفيجما
          color:Color(0xff2260FF),
        ),
      ),
      const SizedBox(width:1),
  
      // 4. أيقونة الـ Bookmark / Save الأخيرة
      Container(
        width: 18,
        height: 18,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        padding: const EdgeInsets.all(3),
        child: Image.asset(
          'assets/images/love icon.png', // حطي مسار أيقونة الـ bookmark من الفيجما
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
    );
  }
}