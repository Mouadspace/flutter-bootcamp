import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        // double.maxfinite cause container to dispaer
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        width: MediaQuery.of(context).size.width,
        height: 150,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: SvgPicture.asset("assets/icons/svg/receipt.svg")),
                Row(
                  children: [
                    Text(
                      'Add voucher code   ',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey.shade600,
                      size: 18,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total:",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    const Text(
                      '\$337.15',
                      style: TextStyle(
                        height: 1.5,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 190,
                  child: Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                        // shape: StadiumBorder(),
                        backgroundColor: const Color(0xffea7445),
                        foregroundColor: Colors.white, //background
                      ),
                      child: const Text(
                        'Check Out',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
