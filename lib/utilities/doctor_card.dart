import 'package:flutter/material.dart';

class doctorCard extends StatelessWidget {
  final ImagePath;
  final String Date;
  final String Month;
  final String SarakartaCity;

  final String NameOfMen;
  doctorCard({
    required this.ImagePath,
    required this.Date,
    required this.Month,
    required this.SarakartaCity,
    required this.NameOfMen,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8,
              ),
              Column(
                ///mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Date
                  Container(
                    child: Text(
                      Date,
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                  ),

                  ///Month
                  SizedBox(
                    height: 05,
                  ),
                  Container(
                    child: Text(
                      Month,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white70,
                      ),
                    ),
                  ),

                  ///Sarakarta city clean text
                  SizedBox(
                    height: 65,
                  ),
                  Container(
                    child: Text(
                      SarakartaCity,
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                  ),

                  /// Name of person
                  SizedBox(
                    height: 150,
                  ),
                  Row(
                    /// crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Icon(
                          Icons.location_on,
                          color: Colors.yellow[700],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Center(
                        child: Text(
                          NameOfMen,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              /// men image path

              SizedBox(
                height: 10,
              ),
              Container(
                height: 600,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: NetworkImage(ImagePath),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
