import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatelessWidget {
  final image;
  DetailsScreen({this.image});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Hero(
              tag: image,
              child: Container(
                height: size.height * 0.55,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // container for more content

            DraggableScrollableSheet(
                maxChildSize: 1,
                initialChildSize: 0.6,
                minChildSize: 0.6,
                builder: (context, controller) {
                  return SingleChildScrollView(
                    controller: controller,
                    child: Container(
                      padding: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "cheese giriile Sanwich",
                                style: GoogleFonts.roboto(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite),
                                color: Colors.redAccent,
                                iconSize: 30,
                              )
                            ],
                          ),
                          Text(
                            "By Abdirahman Sayidali",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey[400],
                                size: 15,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          //container for food information

                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    padding: EdgeInsets.symmetric(vertical: 16),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Calories",
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          "174kCal",
                                          style: GoogleFonts.roboto(
                                            color: Colors.grey[900],
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Colors.grey)),
                                    padding: EdgeInsets.symmetric(vertical: 16),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Ingredients",
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          "06",
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey[900],
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Colors.grey)),
                                    padding: EdgeInsets.symmetric(vertical: 16),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Time",
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          "3 Hours",
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey[900],
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            "About Recipe",
                            style: GoogleFonts.roboto(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Haddii aad dooneysid inaan ku soo koobiyo warbixin cunto macaan oo ku saabsan cuntooyinka, fadlan soo dir warbixinta ama tilmaamaha cuntooyinka aad rabto inaan kaaga caawiyo. Waxaan ku soo dirnaa warbixinada cuntooyinka oo dhan,Basta: Basta oo kuus ah oo lagu sameeyo pasta, digaag, xalwo, maraq, iyo cunnada kale ee loo yaqaano basta.",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w300,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            "Hab karinta",
                            style: GoogleFonts.roboto(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Haddii aad dooneysid inaan ku soo koobiyo warbixin cunto macaan oo ku saabsan cuntooyinka, fadlan soo dir warbixinta ama tilmaamaha cuntooyinka aad rabto inaan kaaga caawiyo. Waxaan ku soo dirnaa warbixinada cuntooyinka oo dhan,Basta: Basta oo kuus ah oo lagu sameeyo pasta, digaag, xalwo, maraq, iyo cunnada kale ee loo yaqaano basta.",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w300,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
