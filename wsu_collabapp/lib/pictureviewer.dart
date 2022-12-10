// ignore_for_file: prefer_const_constructors, must_be_immutabl, prefer_const_constructors_in_immutables, must_be_immutable
import 'package:flutter/material.dart';

class Pictureviewer extends StatelessWidget {
   Pictureviewer({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Picture Viewer'),
         backgroundColor: Color.fromARGB(255, 7, 90, 158), 
          centerTitle: true,
        ),

        body: SizedBox(
          height: 400,
          
          child: ListView.separated(
            padding: EdgeInsets.all(16),
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            separatorBuilder: (context, _) => SizedBox(width: 5),
            itemBuilder: (context, index) => buildPictureCards(item: items[index]),
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 7, 90, 158),
          child: SizedBox(
            height: 20.0,
        ),
      ),
    );
  }

  Widget buildPictureCards({required CardItem item,}) =>
      SizedBox(
        width: 400,
        child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Material(
                    child: Ink.image(
                      image: NetworkImage(item.urlImage),
                      fit: BoxFit.cover,
                  
            
                            ),
                          ),
                        ),
                      ),
                    ),

                
            const SizedBox(height: 10),
            Text(
              item.title,
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            Text(
              item.subtitle,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
      );
      


class CardItem {
  final String urlImage;
  final String title;
  final String subtitle;

  const CardItem({
    required this.urlImage,
    required this.title,
    required this.subtitle,
  });
}

List<CardItem> items = [
  CardItem(
    urlImage:
        'https://media.defense.gov/2022/Jan/25/2002927386/2000/2000/0/220113-F-CV734-0004.JPG',
    title: 'Take off!',
    subtitle: 'KC-46',
  ),
  CardItem(
    urlImage:
        'https://www.defensenews.com/resizer/jccim_pfExuuj8fghOqdQI8_Zqs=/1024x0/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/archetype/45AWDR27FZG2ZD3XZSD7WATSTE.jpg',
    title: 'Fueling the Fight!',
    subtitle: 'KC-46',
  ),
  CardItem(
    urlImage:
        'https://flyingmag.sfo3.digitaloceanspaces.com/flyingma/wp-content/uploads/2022/05/12155903/USAF-Crew-1-scaled.jpg',
    title: 'Crew',
    subtitle: 'KC-46',
  ),
  CardItem(
    urlImage:
        'https://www.gannett-cdn.com/authoring/2019/09/15/NPOH/ghows-SO-9288fffe-d201-40c1-e053-0100007f557e-1518e432.jpeg?crop=2599,1468,x0,y132&width=2599&height=1468&format=pjpg&auto=webp',
    title: 'Inside the Cockpit!',
    subtitle: 'KC-46',
  ),
  CardItem(
    urlImage:
        'https://imageio.forbes.com/specials-images/imageserve/63784cc321f6bb6cb236033a/Lt--Col--Greg-Van-Splunder-guides-his-KC-46A-as-it-receives-fuel-from-another-KC-46A-/960x0.jpg?height=472&width=711&fit=bounds',
    title: 'Inside the Cockpit!',
    subtitle: 'KC-46',
  ),
  CardItem(
    urlImage:
        'https://www.thedrive.com/content-b/message-editor%2F1554252972029-c794ee99a22cb45d590464d6492f963c.jpg?auto=webp&optimize=high&quality=70&width=1440',
    title: 'About',
    subtitle: 'KC-46',
  ),
];
