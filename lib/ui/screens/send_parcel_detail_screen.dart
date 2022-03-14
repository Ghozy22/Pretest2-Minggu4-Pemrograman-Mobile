import 'package:flutter/material.dart';
import 'package:flutter_parcel_app/ui/widgets/widgets.dart';

class SendParcelDetailScreen extends StatefulWidget {
  const SendParcelDetailScreen({ Key? key }) : super(key: key);

  @override
  State<SendParcelDetailScreen> createState() => _SendParcelDetailScreenState();
}

class _SendParcelDetailScreenState extends State<SendParcelDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: ListView(
          children: [
            Text(
              'Send parcel',
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 17,
            ),
            Text(
              'delivery method',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 11,
            ),
            const MyParcelDeliveryMethod(
              parcelDeliveryMethod: 'From door to parcel',
              parcelDeliveryDuration: '1 - 2 Days',
              parcelDeliveryImage: 'assets/images/img_door_to_parcel.png'),
            const MyParcelDeliveryMethod(
              parcelDeliveryMethod: 'From door to door',
              parcelDeliveryDuration: '2 - 3 Days',
              parcelDeliveryImage: 'assets/images/img_door_to_door.png'),
          ],
        ),
      ),
    );
  }
}