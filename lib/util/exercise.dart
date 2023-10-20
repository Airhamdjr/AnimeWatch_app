import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  final image;
  final String exercisename;
  final double rating;
  final color;
  
  
  
  const Exercise({
    Key? key,
    required this.image,
    required this.exercisename,
    required this.rating,
    required this.color,
    
     
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 43, 43, 43),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding: EdgeInsets.all(0),
                    color: color,
                    child:
                    Image.asset(
                     image,
                     width: 80,
                    
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    
                    Text(
                      exercisename,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.yellow,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' Rating : ' + rating.toString()  ,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    )
                  ],
                )
              ],
            ),
            Icon(Icons.more_horiz, color: Colors.white),
          ],
        ),
      ),
    );
  }
}