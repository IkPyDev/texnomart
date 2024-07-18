import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:texnomart/date/model/model.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';


class MapScreen extends StatelessWidget {
  final OpenedStore data;
  const MapScreen({required this.data,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Do'konlar", style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body:
           Column(
            children: [
              Expanded(
                child: YandexMap(
                  onMapCreated: (ctr) {
                    ctr.moveCamera(
                      animation: const MapAnimation(type: MapAnimationType.linear, duration: 1),
                      CameraUpdate.newCameraPosition(
                        CameraPosition(
                          target: Point(
                            latitude: double.parse(data.lat),
                            longitude: double.parse(data.long),
                          ),
                          zoom: 18,
                        ),
                      ),
                    );
                  },
                  zoomGesturesEnabled: true,
                  mapObjects: [
                    PlacemarkMapObject(
                      onTap: (a, b) {},
                      mapId: MapObjectId('1'),
                      point: Point(latitude: double.parse(data.lat), longitude: double.parse(data.long)),
                      icon: PlacemarkIcon.single(PlacemarkIconStyle(scale: 0.2, image: BitmapDescriptor.fromAssetImage('assets/app_icon/location.png'))),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    Text(data.address, style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Text(data.workTime, style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox(height: 8),
                    Text(data.phone, style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox(height: 8),
                    InkWell(
                      onTap: (){
                        openMap(data.lat, data.long);
                      },
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey.shade100),
                        ),
                        child: Wrap(
                          children: [
                            Image.asset("assets/app_icon/location_two.png",color: Theme.of(context).primaryColor,height: 20,width: 20,),
                            SizedBox(width: 10,),
                            Text('Marhsrutni ko\'rish', style: Theme.of(context).textTheme.bodyMedium),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ],
          ));
        }

  }
void openMap(lat,long) async {
  try {
    await launchUrlString('https://www.google.com/maps/search/?api=1&query=$lat,$long',
        mode: LaunchMode.externalApplication);
  } catch (e) {
    debugPrint(  "🚀 catched error~ $e:");
  }
}

