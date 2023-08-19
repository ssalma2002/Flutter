import 'package:flutter/material.dart';
import 'product.dart';

class card extends StatefulWidget {
 final Product product;
   const card({super.key, required this.product});



  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  bool addedToCart = false;
  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
          height: 240,
          width: 150,
          color: Colors.grey.shade100,
            child: Center(
              child: Column(

                children: [
                  Padding(padding: EdgeInsets.all(8),
                 child:  Container(
                    color: Colors.yellow,
                    height: 120,
                    width: double.infinity,
                   child: Image.network(widget.product.imageUrl!) ,
                  ),
          ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                 Container(
                     child: Padding(
                       padding: const EdgeInsets.fromLTRB(3, 6,0, 3),
                       child: Text(widget.product.name!),

                     )),

               ],

               ),
    //               Row(
    //                 children: [
    //            RatingBar.builder(
    // itemSize: 20,
    // initialRating: widget.product.rating!,
    // minRating: 1,
    // direction: Axis.horizontal,
    // allowHalfRating: true,
    // itemCount: 5,
    // itemPadding: const EdgeInsets.symmetric(horizontal: 0),
    // itemBuilder: (context, _) => Icon(
    // Icons.star,
    // color: Colors.amber.shade700,
    // ),
    // onRatingUpdate: (rating) {
    // print(rating);
    //                 ],
    //               ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(3, 6,0, 3),
                            child: Text("${widget.product.price!}"),

                          ),
                      ),
                    IconButton(onPressed: (){
                      setState(() {
                        addedToCart = ! addedToCart;
                      });
                    }, icon: Icon(Icons.shopping_cart_checkout_rounded, size: 20,color: addedToCart? Colors.orange.shade800 : Colors.grey, ))
                    ],

                  ),
                ],
              ),

            ),


          ),
        )
    );
  }
}



