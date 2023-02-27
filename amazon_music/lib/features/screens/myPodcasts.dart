import 'package:amazon_music/features/screens/podcastDetailsPage.dart';
import 'package:amazon_music/shared/constants/deviceDimensions.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Podcasts extends StatelessWidget {
  Podcasts({super.key});
  ScrollController scrollController = ScrollController();
  _getHorizontalListViewCards(context, List imageURL) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 6,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => PodcastDetailsPage(
                                imageURL: imageURL[index],
                              )));
                },
                child: Card(
                    elevation: 5,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(width: 5, color: Colors.transparent)),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Image.network(
                        imageURL[index],
                        fit: BoxFit.fill,
                      ),
                    )),
              ),
            );
          }),
    );
  }

  List imageList = [
    "https://baazimagess3.s3-ap-southeast-1.amazonaws.com/product_media/9788181334718/md_9788181334718.jpg",
    'https://th.bing.com/th/id/OIP.-lAx45WZlfSouXcvgCzBoQHaEw?pid=ImgDet&rs=1',
    'https://th.bing.com/th/id/R.42e834d323c12f9049c1f34fb9f3d089?rik=%2b1KrYhiM7S%2fPeA&riu=http%3a%2f%2fblog.sigalzoldan.com%2fwp-content%2fuploads%2f2015%2f04%2fSmily-positive-thinker.jpg&ehk=MTR8ibTbrIMfH%2fhVdlw08zf%2fnktfxrJj1QN8jjRGoOg%3d&risl=&pid=ImgRaw&r=0',
    'https://marketplace.canva.com/EAEg-NWwibM/1/0/1600w/canva-modern-new-song-youtube-thumbnail-XyenUf5LkxA.jpg',
    'https://pixelsao.com/wp-content/uploads/2020/09/dubstory.jpg',
    'https://th.bing.com/th/id/R.851b87a8cb7ddaeb5a9b63a535193d46?rik=khRUnFsuIiVB7g&riu=http%3a%2f%2fwww.arton56th.com%2fpublic%2fimages%2fmed_43081340473145248.jpg&ehk=JPYQU1L4cUKvpNllXriZdlksmnCCMqgs6XrW7wGMcf8%3d&risl=&pid=ImgRaw&r=0',
    'https://th.bing.com/th/id/OIP.MgBo1_IYZbNrDV0hLuGZyAHaHZ?pid=ImgDet&w=927&h=926&rs=1',
    'https://img.youtube.com/vi/P0NfnFYpENo/sddefault.jpg',
    'https://i.ytimg.com/vi/mBLFhTQyMTs/maxresdefault.jpg',
    'https://i.ytimg.com/vi/b31DWf9Qy-4/maxresdefault.jpg'
  ];
  List imageList1 = [
    'https://i.ytimg.com/vi/b31DWf9Qy-4/maxresdefault.jpg',
    'https://pixelsao.com/wp-content/uploads/2020/09/dubstory.jpg',
    'https://images.genius.com/67abc49ab0c17779c4f63a9e8717cba4.1000x1000x1.png',
    'https://th.bing.com/th/id/OIP.MO8zG3UXshRIaTu-3mubewHaFi?pid=ImgDet&rs=1',
    'https://www.themoviedb.org/t/p/original/wNBaBxBvIa4fSyLusfKAunbhvD9.jpg',
    'https://i.pinimg.com/736x/a9/82/0b/a9820b5d30d0d93238d9c9b4a61e4696.jpg',
    'https://th.bing.com/th/id/OIP.jtxPkOpAAu3mThnVR3mxrAHaEK?pid=ImgDet&rs=1',
    'https://th.bing.com/th/id/OIP.3Oa9fi3rrR5NSehXUjG-3QHaHa?pid=ImgDet&rs=1',
    'https://3.bp.blogspot.com/--0pReo0MbJw/XRP81fCnVyI/AAAAAAABIhM/JN8-vlNHCikGuY4nEoFr5Q1RuKTIVy0UwCLcBGAs/s1600/Ninja-Hattori-Cast-Star-Character_2.jpeg',
    'https://th.bing.com/th/id/R.ab62c4cd8fdcb5e93bad2d97c9f1b90b?rik=rYOZe92uBKk91w&riu=http%3a%2f%2f4.bp.blogspot.com%2f_djqLyk3QXck%2fTB1jEppSQ2I%2fAAAAAAAAAH0%2fTvAjHHC4i2Y%2fs1600%2fHaruno_Sakura_by_tsukishoujo.jpg&ehk=u7ugNKnCGUvdiH6635%2fvKbmQNkCKXpO38x1kdk50nSY%3d&risl=&pid=ImgRaw&r=0'
  ];
  List imageList2 = [
    'https://img.youtube.com/vi/P0NfnFYpENo/sddefault.jpg',
    'https://i.ytimg.com/vi/b31DWf9Qy-4/maxresdefault.jpg',
    'https://pixelsao.com/wp-content/uploads/2020/09/dubstory.jpg',
    'https://th.bing.com/th/id/OIP.MO8zG3UXshRIaTu-3mubewHaFi?pid=ImgDet&rs=1',
    'https://www.themoviedb.org/t/p/original/wNBaBxBvIa4fSyLusfKAunbhvD9.jpg',
    'https://i.pinimg.com/736x/a9/82/0b/a9820b5d30d0d93238d9c9b4a61e4696.jpg',
    'https://th.bing.com/th/id/OIP.jtxPkOpAAu3mThnVR3mxrAHaEK?pid=ImgDet&rs=1',
    'https://th.bing.com/th/id/OIP.3Oa9fi3rrR5NSehXUjG-3QHaHa?pid=ImgDet&rs=1',
    'https://3.bp.blogspot.com/--0pReo0MbJw/XRP81fCnVyI/AAAAAAABIhM/JN8-vlNHCikGuY4nEoFr5Q1RuKTIVy0UwCLcBGAs/s1600/Ninja-Hattori-Cast-Star-Character_2.jpeg',
    'https://th.bing.com/th/id/R.ab62c4cd8fdcb5e93bad2d97c9f1b90b?rik=rYOZe92uBKk91w&riu=http%3a%2f%2f4.bp.blogspot.com%2f_djqLyk3QXck%2fTB1jEppSQ2I%2fAAAAAAAAAH0%2fTvAjHHC4i2Y%2fs1600%2fHaruno_Sakura_by_tsukishoujo.jpg&ehk=u7ugNKnCGUvdiH6635%2fvKbmQNkCKXpO38x1kdk50nSY%3d&risl=&pid=ImgRaw&r=0'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
          title: const Text(
            "Explore Podcasts",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
        ),
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.white,
                Color.fromARGB(255, 110, 158, 161),
                Color.fromARGB(255, 90, 139, 224),
                Color.fromARGB(255, 31, 30, 30),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    podcastThumbnail(),
                    SizedBox(
                      height: DeviceDimensions.deviceHeight(context) * 0.03,
                    ),
                    const Text(
                      'PODCAST',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 55, 208, 219)),
                    ),
                    SizedBox(
                      height: DeviceDimensions.deviceHeight(context) * 0.01,
                    ),
                    podcastTitle(),
                    SizedBox(
                      height: DeviceDimensions.deviceHeight(context) * 0.03,
                    ),
                    buildMost('Most Played On Amazon Music (India)', context),
                    SizedBox(
                      height: DeviceDimensions.deviceHeight(context) * 0.015,
                    ),
                    _getHorizontalListViewCards(context, imageList),
                    buildMost('Trending Podcasts', context),
                    SizedBox(
                      height: DeviceDimensions.deviceHeight(context) * 0.015,
                    ),
                    _getHorizontalListViewCards(context, imageList1),
                    buildMost('Motivational Shows', context),
                    SizedBox(
                      height: DeviceDimensions.deviceHeight(context) * 0.015,
                    ),
                    _getHorizontalListViewCards(context, imageList2),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  podcastThumbnail() {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(
          "https://www.omnycontent.com/d/playlist/4bb33704-615b-4054-aae9-ace500fd4197/c6e18bb1-650c-43bf-a852-ace600482419/9bac1d6d-3f3a-428a-b8d1-ace600491b2b/image.jpg?t=1672217610&size=small",
          width: 180,
          height: 180,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

buildMusic() {
  return Container(
    padding: const EdgeInsets.all(8),
    //color: Color.fromARGB(255, 0, 0, 0),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      'PODCAST',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 8, 193, 206)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

podcastTitle() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Woice With',
        style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
      ),
      Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Warikoo',
                style: TextStyle(
                  fontSize: 37,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Chhuttiyaan",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromARGB(255, 55, 208, 219)),
            child: const Icon(
              Icons.play_arrow,
              size: 35,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ],
  );
}

buildMost(String name1, context) {
  return Row(
    children: [
      SizedBox(
        width: DeviceDimensions.deviceWidth(context) * 0.71,
        child: AutoSizeText(
          name1,
          maxLines: 2,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Chip(
          labelPadding:
              const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: -3),
          side: BorderSide(
            color: Theme.of(context).iconTheme.color!,
          ),
          label: const Text(
            "SEE MORE",
            style: TextStyle(
              fontFamily: "Ember",
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Theme.of(context).primaryColor),
    ],
  );
}
