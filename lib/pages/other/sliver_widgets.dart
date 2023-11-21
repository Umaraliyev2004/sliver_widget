import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class SliverWidget extends StatelessWidget {
  const SliverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.clear),
                Icon(Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(26),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                  width: double.maxFinite,
                  child: const Center(
                    child: Text(
                      "ITALIAN FOOD",
                      style: TextStyle(fontSize: 26),
                    ),
                  ),
                )),
            pinned: true,
            backgroundColor: Colors.blueGrey,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/food0.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: const ExpandableText(
                  "pasta, any of several starchy food pasta, any of several starchy food preparations (pasta alimentaria) frequently associated with Italian cuisine and made from semolina, the granular product obtained from the endosperm of a type of wheat called durum, and containing a large proportion of gluten (elastic protein).pasta, any of several starchy food preparations (pasta alimentaria) frequently associated with Italian cuisine and made from semolina, the granular product obtained from the endosperm of a type of wheat called durum, and containing a large proportion of gluten (elastic protein).pasta, any of several starchy food preparations (pasta alimentaria) frequently associated with Italian cuisine and made from semolina, the granular product obtained from the endosperm of a type of wheat called durum, and containing a large proportion of gluten (elastic protein).pasta, any of several starchy food preparations (pasta alimentaria) frequently associated with Italian cuisine and made from semolina, the granular product obtained from the endosperm of a type of wheat called durum, and containing a large proportion of gluten (elastic protein).pasta, any of several starchy food preparations (pasta alimentaria) frequently associated with Italian cuisine and made from semolina, the granular product obtained from the endosperm of a type of wheat called durum, and containing a large proportion of gluten (elastic protein).pasta, any of several starchy food preparations (pasta alimentaria) frequently associated with Italian cuisine and made from semolina, the granular product obtained from the endosperm of a type of wheat called durum, and containing a large proportion of gluten (elastic protein).pasta, any of several starchy food preparations (pasta alimentaria) frequently associated with Italian cuisine and made from semolina, the granular product obtained from the endosperm of a type of wheat called durum, and containing a large proportion of gluten (elastic protein).pasta, any of several starchy food preparations (pasta alimentaria) frequently associated with Italian cuisine and made from semolina, the granular product obtained from the endosperm of a type of wheat called durum, and containing a large proportion of gluten (elastic protein).pasta, any of several starchy food preparations (pasta alimentaria) frequently associated with Italian cuisine and made from semolina, the granular product obtained from the endosperm of a type of wheat called durum, and containing a large proportion of gluten (elastic protein).pasta, any of several starchy food preparations (pasta alimentaria) frequently associated with Italian cuisine and made from semolina, the granular product obtained from the endosperm of a type of wheat called durum, and containing a large proportion of gluten (elastic protein).pasta, any of several starchy food preparations (pasta alimentaria) frequently associated with Italian cuisine and made from semolina, the granular product obtained from the endosperm of a type of wheat called durum, and containing a large proportion of gluten (elastic protein). preparations (pasta alimentaria) frequently associated with Italian cuisine and made from semolina, the granular product obtained from the endosperm of a type of wheat called durum, and containing a large proportion of gluten (elastic protein).pasta, any of several starchy food preparations (pasta alimentaria) frequently associated with Italian cuisine and made from semolina, the granular product obtained from the endosperm of a type of wheat called durum, and containing a large proportion of gluten (elastic protein).pasta, any of several starchy food preparations (pasta alimentaria) frequently associated with Italian cuisine and made from semolina, the granular product obtained from the endosperm of a type of wheat called durum, and containing a large proportion of gluten (elastic protein).pasta, any of several starchy food preparations (pasta alimentaria) frequently associated with Italian cuisine and made from semolina, the granular product obtained from the endosperm of a type of wheat called durum, and containing a large proportion of gluten (elastic protein).",
                expandText: 'show more',
                linkColor: Colors.lightBlue,
                collapseText: 'show less',
                maxLines: 12,
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
