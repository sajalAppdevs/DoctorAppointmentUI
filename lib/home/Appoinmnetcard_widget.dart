import 'package:flutter/material.dart';

class DrAppoinmentCard extends StatelessWidget {
  const DrAppoinmentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            width: 250,
            height: 140,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromARGB(69, 158, 158, 158)),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/home/profile.png'),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Dr. Cody Fisher",
                            style: TextStyle(
                                color: Color(0xff0C1037),
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "General physician",
                            style: TextStyle(
                              color: Color(0xff4C5DF4),
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text("Dhaka Medical, bangladesh",
                              style: TextStyle(
                                color: Color(0xff6E7682),
                                fontSize: 12,
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Color(0xffFEBA0C),
                          ),
                          Text('4.5'),
                          Text(
                            '(100+ Rating)',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6E7682)),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.access_time_filled,
                            size: 15,
                            color: Color(0xff4AAF4F),
                          ),
                          Text('5'),
                          Text(
                            'Year Exp',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6E7682)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 15, left: 10, right: 10, bottom: 5),
                            child: Container(
                              height: 34,
                              decoration: BoxDecoration(
                                  color: const Color(0xff4C5DF4),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Center(
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
