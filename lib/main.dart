import 'package:demo_flutter/schedules_info.dart';
import 'package:demo_flutter/stripedemo.dart';
import 'package:demo_flutter/timeline_ui2.dart';
import 'package:demo_flutter/timeline_ui3.dart';
import 'package:demo_flutter/timline_ui.dart';
import 'package:demo_flutter/use_state.dart';
import 'package:demo_flutter/use_stream.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import '.env.example.dart';
import 'billing_summary.dart';
import 'biometricUi.dart';
import 'calendar_ui.dart';
import 'cardUi.dart';
import 'editScreenUi.dart';
import 'medicalui.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Stripe.publishableKey =
      "pk_test_51MWx8OAVMyklfe3CsjEzA1CiiY0XBTlHYbZ8jQlGtVFIwQi4aNeGv8J1HUw4rgSavMTLzTwgn0XRlwoTVRFXyu2h00mRUeWmAf";

  // await Stripe.instance.applySettings();
  runApp(const HooksGalleryApp());
}

class HooksGalleryApp extends HookWidget {
  const HooksGalleryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useAnimationController(duration: const Duration(seconds: 2));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hooks Gallery',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Hooks Gallery'),
        ),
        body: ListView(children: [
          _GalleryItem(
            title: 'useState',
            builder: (context) => const UseStateExample(),
          ),
          _GalleryItem(
            title: 'useMemoize + useStream',
            builder: (context) => const UseStreamExample(),
          ),
          _GalleryItem(
            title: 'Design',
            //builder: (context) => const CustomHookExample(),
            builder: (context) => const MedicalUI(),
          ),
          _GalleryItem(
            title: 'CalnderUi',
            builder: (context) => const CalnderUi(),
          ),
          _GalleryItem(
            title: 'TimelineUi',
            builder: (context) => const TimelineUi(),
          ),
          // _GalleryItem(
          //   title: 'TimelineUi 2',
          //   builder: (context) => const TimelineUi2(),
          // ),
          // _GalleryItem(
          //   title: 'TimelineUi 3',
          //   builder: (context) => const ShowcaseSuccessTimeline(),
          // ),
          _GalleryItem(
            title: 'Edit Screen',
            builder: (context) => const EditScreenUi(),
          ),
          _GalleryItem(
            title: 'SchedulesInfo',
            builder: (context) => const SchedulesInfo(),
          ),
          _GalleryItem(
            title: 'Billing Summary',
            builder: (context) => const billingSummary(),
          ),
          _GalleryItem(
            title: 'Stripe demo',
            //    builder: (context) => const HomePage(),
            builder: (context) => const StripeScreen(),
          ),
          _GalleryItem(
            title: 'Card Ui',
            builder: (context) => const CardUi(),
          ),
          _GalleryItem(
            title: 'BioMetric',
            builder: (context) => const BioMetricUi(),
          ),
        ]),
      ),
    );
  }
}

class _GalleryItem extends StatelessWidget {
  const _GalleryItem({
    required this.title,
    required this.builder,
  });

  final String title;
  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: builder,
          ),
        );
      },
    );
  }
}
