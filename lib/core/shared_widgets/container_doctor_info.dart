import 'package:flutter/material.dart';

class ContainerDoctorInfo extends StatelessWidget {
  const ContainerDoctorInfo({super.key});

  final Color primaryColor = const Color(0xff2260FF);
  final Color lightBlueBg = const Color(0xffCAD6FF);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 280,
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        color: Color(0xffCAD6FF),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                const SizedBox(width: 8),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 130,
                          height: 35,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff2260FF),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/premium.png"),
                              const SizedBox(width: 2),

                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 2,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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

                        const SizedBox(height: 6),

                        Container(
                          width: 130,
                          height: 108,
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

            const Spacer(),

            Container(
              width: 260,
              height: 45,
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
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
                        Icon(Icons.star, color: Color(0xff2260FF), size: 15),
                        const SizedBox(width: 2),
                        const Text(
                          '5',
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 3),
                Container(
                  width: 40,
                  height: 18,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/chat 2.png"),
                        const SizedBox(width: 2),
                        const Text(
                          '40',
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: 175,
                  height: 23,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/alarm icon.png"),
                      const SizedBox(width: 4),
                      const Text(
                        'Mon-Sat / 9:00AM - 5:00PM',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff2260FF),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(13),
                  child: Container(
                    width: 85,
                    height: 21,
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/calendar icon.png',
                          width: 10,
                          height: 10,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10),
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
                Padding(
                  padding: const EdgeInsets.only(right: 3),
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
                          'assets/images/help icon.png',
                          color: Color(0xff2260FF),
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
                          color: Color(0xff2260FF),
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
                          'assets/images/favorite icon.png',
                          color: Color(0xff2260FF),
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
                          'assets/images/love icon.png',
                          color: Color(0xff2260FF),
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
