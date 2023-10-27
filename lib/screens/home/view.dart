import 'package:flutter/material.dart';
import 'package:shosho/core/helper_methods.dart';
import 'package:shosho/screens/about/view.dart';
import 'package:shosho/screens/country_details/view.dart';

import '../book_travel/view.dart';
import 'model.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  List<TravelModel> list = [
    TravelModel(imageUrl: 'https://www.weseektravel.com/wp-content/uploads/2022/05/landmarks-in-egypt-1-2.jpg', title: "Egypt", description: "Located on the northeast corner of Africa, Egypt is home to one of the world's earliest and greatest civilizations, with a unified kingdom first surfacing around 3,200 B.C. With a population estimated at more than 99 million, it is the most populous country in the Arab world, and the third-most populous nation in Africa."),
    TravelModel(imageUrl: 'https://lp-cms-production.imgix.net/features/2017/11/GettyRF_543346423-1-ab159824d5bd.jpg', title: "Italy", description: "Italy, country of south-central Europe, occupying a peninsula that juts deep into the Mediterranean Sea. Italy comprises some of the most varied and scenic landscapes on Earth and is often described as a country shaped like a boot."),
    TravelModel(imageUrl: 'https://res.klook.com/image/upload/Mobile/City/swox6wjsl5ndvkv5jvum.jpg', title: "Paris", description: "Paris is the capital and most populous city of France. Situated on the Seine River, in the north of the country, it is in the centre of the Île-de-France region, also known as the région parisienne, Paris Region. The City of Paris has an area of 105 km² and a population of 2,241,346 (2014 estimate). Since the 19th century, the built-up area of Paris has grown far beyond its administrative borders; together with its suburbs, the whole agglomeration has a population of 10,550,350 (Jan. 2012 census)."),
    TravelModel(imageUrl: 'https://www.traveldailymedia.com/assets/2021/12/shutterstock_1031949604-4.jpg', title: "Indian", description: "In modern times Indian may refer to an inhabitant of the subcontinent of India or of the East Indies, to a citizen of the Republic of India, or to a member of an aboriginal American people. However, the term Indian is not applied to the Inuit, Yupik, and Aleut of Arctic North America."),
    TravelModel(imageUrl: 'https://www.melares.com/uploads/150616275.jpg', title: "Turkey", description: "Other distinguishing features of the common turkey are a long red fleshy ornament (called a snood) that grows from the forehead over the bill; a fleshy wattle growing from the throat; a tuft of coarse, black, hairlike feathers (known as a beard) projecting from the breast; and more or less prominent leg spurs. "),
    TravelModel(imageUrl: 'https://content.tui.co.uk/adamtui/2021_12/7_13/878f7fde-84ca-4804-85a5-adf700e44176/LOC_MDV_shutterstock_1938868960WebOriginalCompressed.jpg?i10c=img.resize(width:488);img.crop(width:488%2Cheight:274)', title: "Maldives", description: "The Maldives is a republic lies south-west of the Indian sub-continent. It is made up of a chain of nearly 1,200 islands, most of them uninhabited. None of the coral islands stand more than 1.8 metres (six feet) above sea level, making the country vulnerable to any rise in sea levels associated with global warming."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Air Plane Company"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                navigateTo(context, page: AboutView());
              },
              icon: Icon(Icons.info))
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(left: 16,right: 16,top: 16,bottom: 70),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            navigateTo(context,page: CountryDetailsView(model: list[index]));
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 200,
            padding: EdgeInsets.all(10),
            alignment: AlignmentDirectional.topStart,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(list[index].imageUrl))),
            child: Container(
              margin: const EdgeInsets.only(right: 4, left: 4),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(color: Colors.white.withOpacity(.7), borderRadius: BorderRadius.circular(9)),
              child: Text(
                list[index].title,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold
                    // color: Colors.b
                    ),
              ),
            ),
          ),
        ),
        itemCount: list.length,
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: () {
        navigateTo(context,page: BookTravelView());
      }, icon: Icon(Icons.travel_explore), label: Text("Book Flight")),
    );
  }
}


