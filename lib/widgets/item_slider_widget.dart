import 'package:flutter/material.dart';
import 'package:flutter_codigo_ui/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemSliderWidget extends StatelessWidget {
  const ItemSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 215,
      width: 160,
      child: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 12,
                  offset: Offset(6, 6),
                ),
              ],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/maps.png'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Block C Benyamin',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.montserrat(
                      color: kColorPrimary,
                      fontWeight: FontWeight.w700,
                      fontSize: 12),
                ),
                SizedBox(height: 4),
                Text(
                  'JL. Kita Berduamin',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.montserrat(
                    color: kColorPrimary.withOpacity(0.6),
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Open',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: GoogleFonts.montserrat(
                          color: kColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Expanded(
                        child: Text(
                          '07:00 - 22:00',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: GoogleFonts.montserrat(
                            color: kColorPrimary.withOpacity(0.6),
                          ),
                        ),
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
