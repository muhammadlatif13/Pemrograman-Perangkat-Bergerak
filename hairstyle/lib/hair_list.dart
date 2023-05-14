import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hairstyle/hair_type.dart';
import 'package:hairstyle/model/hair_storage.dart';
import 'package:hairstyle/detail_screen.dart';
import 'package:hairstyle/provider/done_hair_provider.dart';

class HairList extends StatefulWidget {
  const HairList({Key? key, required List<HairStorage> doneHairStorageList})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HairListState createState() => _HairListState();
}

class _HairListState extends State<HairList> {
  final List<HairStorage> hairStorageList = [
    HairStorage(
      nama: 'GoodFellas Barbershop',
      banner:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber1/barber1-removebg.jpg',
      jalan:
          'Ruko, Jl. Arief Rahman Hakim No.51, Klampis Ngasem, Kec. Sukolilo, Kota SBY, Jawa Timur 60117',
      lokasi: 'https://goo.gl/maps/U9dtzrfrRh73oQZm8',
      modelRambut1:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber1/gambar1.jpg',
      modelRambut2:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber1/gambar2.jpg',
      modelRambut3:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber1/gambar3.jpg',
      modelRambut4:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber1/gambar4.jpg',
    ),
    HairStorage(
      nama: 'The Original Barbershop',
      banner:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber2/barber2-removebg.jpg',
      jalan:
          'Jl. Taman Gapura Jl. Citraland Surabaya No.10, Lontar, Kec. Sambikerep, Kota SBY, Jawa Timur 60216',
      lokasi: 'https://goo.gl/maps/njYii2KDRxE8hc777',
      modelRambut1:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber2/gambar1.jpg',
      modelRambut2:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber2/gambar2.jpg',
      modelRambut3:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber2/gambar3.jpg',
      modelRambut4:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber2/gambar4.jpg',
    ),
    HairStorage(
      nama: 'Insight Barbershop',
      banner:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber3/barber3-removebg.jpg',
      jalan:
          'San Diego Main Street Blok MR1 No 12/23 Pakuwon City Sukolilo, Kalisari, Kec. Mulyorejo, Kota SBY, Jawa Timur 60112',
      lokasi: 'https://goo.gl/maps/zw4NTGGNzX97xx7k9',
      modelRambut1:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber3/gambar1.jpg',
      modelRambut2:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber3/gambar2.jpg',
      modelRambut3:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber3/gambar3.jpg',
      modelRambut4:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber3/gambar4.jpg',
    ),
    HairStorage(
      nama: 'The Roots Barbershop',
      banner:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber4/barber4-removebg.jpg',
      jalan:
          'Jl. Ngagel Jaya Barat No.79, Pucang Sewu, Kec. Gubeng, Kota SBY, Jawa Timur 60238',
      lokasi: 'https://goo.gl/maps/KZN9otVBrmMUkmWn8',
      modelRambut1:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber4/gambar1.jpg',
      modelRambut2:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber4/gambar2.jpg',
      modelRambut3:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber4/gambar3.jpg',
      modelRambut4:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber4/gambar4.jpg',
    ),
    HairStorage(
      nama: 'Bosshead Barbershop',
      banner:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber5/barber5-removebg.jpg',
      jalan:
          'Gubeng Kertajaya XI No.20, Airlangga, Kec. Gubeng, Kota SBY, Jawa Timur 60282',
      lokasi: 'https://goo.gl/maps/kM4uvtcRqdnMx1ah9',
      modelRambut1:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber5/gambar1.jpg',
      modelRambut2:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber5/gambar2.jpg',
      modelRambut3:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber5/gambar3.jpg',
      modelRambut4:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber5/gambar4.jpg',
    ),
    HairStorage(
      nama: 'Broadway Barbershop',
      banner:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber6/barber6-removebg.jpg',
      jalan:
          'Jl. Arief Rahman Hakim No.18, Klampis Ngasem, Kec. Sukolilo, Kota SBY, Jawa Timur 60118',
      lokasi: 'https://goo.gl/maps/MEJhoKEveigBgxvJ7',
      modelRambut1:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber6/gambar1.jpg',
      modelRambut2:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber6/gambar2.jpg',
      modelRambut3:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber6/gambar3.jpg',
      modelRambut4:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber6/gambar4.jpg',
    ),
    HairStorage(
      nama: 'Coolio Barbershop',
      banner:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber7/barber7-removebg.jpg',
      jalan:
          'Jl. Gubeng Kertajaya No.6, Airlangga, Kec. Gubeng, Kota SBY, Jawa Timur 60286',
      lokasi: 'https://goo.gl/maps/1A1eycZbhxLXazMq6',
      modelRambut1:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber7/gambar1.jpg',
      modelRambut2:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber7/gambar2.jpg',
      modelRambut3:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber7/gambar3.jpg',
      modelRambut4:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber7/gambar4.jpg',
    ),
    HairStorage(
      nama: 'Ganteng Barbershop',
      banner:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber8/barber8-removebg.jpg',
      jalan:
          'Jl. Jakarta No.2, Perak Utara, Kec. Pabean Cantikan, Kota SBY, Jawa Timur 60165',
      lokasi: 'https://goo.gl/maps/KHr6ginvxEA4cDB4A',
      modelRambut1:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber8/gambar1.jpg',
      modelRambut2:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber8/gambar2.jpg',
      modelRambut3:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber8/gambar3.jpg',
      modelRambut4:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber8/gambar4.jpg',
    ),
    HairStorage(
      nama: 'Keluncum Barbershop',
      banner:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber9/barber9-removebg.jpg',
      jalan:
          'Jl. Dukuh Kupang XXV No.42, Dukuh Kupang, Kec. Dukuhpakis, Kota SBY, Jawa Timur 60189',
      lokasi: 'https://goo.gl/maps/spBKNdfeuLgnmqCZ8',
      modelRambut1:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber9/gambar1.jpg',
      modelRambut2:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber9/gambar2.jpg',
      modelRambut3:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber9/gambar3.jpg',
      modelRambut4:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber9/gambar4.jpg',
    ),
    HairStorage(
      nama: 'Captain Barbershop',
      banner:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber10/barber10-removebg.jpg',
      jalan:
          'Ruko Central Park, Jl. Raya Mulyosari No.AA 10, Kalisari, Kec. Mulyorejo, Kota SBY, Jawa Timur 60112',
      lokasi: 'https://goo.gl/maps/VGMavr5FQakLqGG56',
      modelRambut1:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber10/gambar1.jpg',
      modelRambut2:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber10/gambar2.jpg',
      modelRambut3:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber10/gambar3.jpg',
      modelRambut4:
          '/home/domba/StudioProjects/hairstyle/assets/images/barber10/gambar4.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final HairStorage storage = hairStorageList[index];
        return InkWell(onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DetailScreen(storage: storage);
              },
            ),
          );
        }, child: Consumer<DoneHairProvider>(
          builder: (context, DoneHairProvider data, widget) {
            return HairType(
                storage: storage,
                isDone: data.doneHairStorageList.contains(storage),
                onCheckboxClick: (bool? value) {
                  setState(() {
                    if (value != null) {
                      value
                          ? data.doneHairStorageList.add(storage)
                          : data.doneHairStorageList.remove(storage);
                    }
                  });
                });
          },
        ));
      },
      itemCount: hairStorageList.length,
    );
  }
}
