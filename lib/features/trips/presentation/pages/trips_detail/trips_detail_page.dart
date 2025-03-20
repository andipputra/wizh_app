import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:whiz_trips/features/trips/domain/entities/trip_detail.dart';
import 'package:whiz_trips/features/trips/presentation/controllers/trips_detail_controller.dart';
import 'package:whiz_trips/features/trips/domain/entities/trip.dart';
import 'package:auto_route/auto_route.dart';
import 'package:whiz_trips/features/trips/presentation/pages/trips_detail/components/trips_detail_image.dart';
import 'package:whiz_trips/features/trips/presentation/pages/trips_detail/components/trips_detail_includes_excludes.dart';
import 'package:whiz_trips/features/trips/presentation/pages/trips_detail/components/trips_detail_price_and_pax.dart';
import 'package:whiz_trips/features/trips/presentation/pages/trips_detail/components/trips_detail_rating_review.dart';
import 'package:whiz_trips/features/trips/presentation/pages/trips_detail/components/trips_detail_summary.dart';
import 'package:whiz_trips/features/trips/presentation/pages/trips_detail/components/trips_detail_tnc.dart';
import 'package:whiz_trips/widgets/image_from_network.dart';

@RoutePage()
class TripsDetailPage extends ConsumerStatefulWidget {
  const TripsDetailPage({super.key, required this.trip});

  final Trip trip;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TripsDetailPageState();
}

class _TripsDetailPageState extends ConsumerState<TripsDetailPage> {
  final tabTitles = <String>[
    'Photos',
    'Summary',
    'Includes & Excludes',
    'Rating & Review',
    'Terms & Conditions',
    'Price & Pax',
  ];
  final sectionsKey = <GlobalKey>[];

  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();

    scrollController = ScrollController()..addListener(animateToTab);

    for (final tab in tabTitles) {
      sectionsKey.add(GlobalKey(debugLabel: tab));
    }
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
    sectionsKey.clear();
  }

  /// Animate To Tab
  void animateToTab() {
    late RenderBox box;

    for (var i = 0; i < sectionsKey.length; i++) {
      box = sectionsKey[i].currentContext?.findRenderObject() as RenderBox;
      Offset position = box.localToGlobal(Offset.zero);

      if (scrollController.offset >= position.dy) {
        DefaultTabController.of(
          context,
        ).animateTo(i, duration: const Duration(milliseconds: 100));
      }
    }
  }

  /// Scroll to Index
  void scrollToIndex(int index) async {
    scrollController.removeListener(animateToTab);
    final section = sectionsKey[index].currentContext;
    if (section != null) {
      await Scrollable.ensureVisible(
        section,
        duration: const Duration(milliseconds: 600),
      );
    }
    scrollController.addListener(animateToTab);
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(tripsDetailControllerProvider(widget.trip));

    final tripData = controller.valueOrNull;

    return Skeletonizer(
      enabled: controller.isLoading,
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            child:
                controller.isLoading
                    ? ColoredBox(color: Colors.black)
                    : ImageFromNetwork(imageUrl: tripData?.photos.first ?? ''),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              elevation: 0,
              leading: IconButton.filledTonal(
                onPressed: context.maybePop,
                icon: Icon(Icons.chevron_left_rounded),
              ),
              actions: [
                IconButton.filledTonal(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_rounded),
                ),
                IconButton.filledTonal(
                  onPressed: () {},
                  icon: Icon(Icons.share_rounded),
                ),
              ],
            ),
            body: DefaultTabController(
              length: tabTitles.length,
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                child: ColoredBox(
                  color: Colors.white,
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            tripData?.title ?? '',
                            style: Theme.of(context).textTheme.headlineMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      PinnedHeaderSliver(
                        child: ColoredBox(
                          color: Colors.white,
                          child: TabBar(
                            onTap: (value) => scrollToIndex(value),
                            isScrollable: true,
                            tabs:
                                tabTitles
                                    .map((titles) => Tab(text: titles))
                                    .toList(),
                          ),
                        ),
                      ),
                      for (final section in tabTitles)
                        SliverToBoxAdapter(
                          key: sectionsKey[tabTitles.indexOf(section)],
                          child: Column(
                            spacing: 8,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 16),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  section,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                              if (controller.isLoading)
                                const Skeletonizer(
                                  child: AspectRatio(
                                    aspectRatio: 16 / 9,
                                    child: ColoredBox(color: Colors.black),
                                  ),
                                )
                              else
                                _getSection(section, tripData),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getSection(String section, TripDetail? tripDetail) =>
      switch (section) {
        'Photos' => TripsDetailImage(trip: widget.trip),
        'Summary' => TripsDetailSummary(summary: tripDetail?.summary ?? ''),
        'Includes & Excludes' => TripsDetailIncludesExcludes(),
        'Rating & Review' => TripsDetailRatingReview(),
        'Terms & Conditions' => TripsDetailTnc(),
        'Price & Pax' => TripsDetailPriceAndPax(),
        _ => Container(),
      };
}
