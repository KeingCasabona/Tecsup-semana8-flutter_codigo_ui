import 'package:flutter/material.dart';
import 'package:flutter_codigo_ui/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemHistoryWidget extends StatelessWidget {
  const ItemHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            offset: Offset(6, 6),
            blurRadius: 12,
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Image.asset(
                  'assets/images/car.png',
                  width: 56,
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Block A Sarimi',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: GoogleFonts.montserrat(
                            color: kColorPrimary,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Desa Majumundur',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: GoogleFonts.montserrat(
                            color: kColorPrimary.withOpacity(0.6),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('05, Sep 2021'),
              SizedBox(height: 10),
              Text(
                '\$30.00',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: GoogleFonts.montserrat(
                  color: kColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
