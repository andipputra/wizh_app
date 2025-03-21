import 'dart:developer';

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

class _TripsDetailPageState extends ConsumerState<TripsDetailPage>
    with SingleTickerProviderStateMixin {
  final tabTitles = <String>[
    'Photos',
    'Summary',
    'Includes & Excludes',
    'Review',
    'Terms & Conditions',
    'Price & Pax',
  ];
  final sectionsKey = <GlobalKey>[];

  late ScrollController scrollController;
  late TabController tabController;

  @override
  void initState() {
    super.initState();

    for (final tab in tabTitles) {
      sectionsKey.add(GlobalKey(debugLabel: tab));
    }

    tabController = TabController(length: sectionsKey.length, vsync: this);

    scrollController = ScrollController();
    scrollController.addListener(animateToTab);
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
    tabController.dispose();
    sectionsKey.clear();
  }

  /// Animate To Tab
  void animateToTab() {
    log('[Putra] => access animateToTab');
    for (var i = 0; i < sectionsKey.length; i++) {
      final box = sectionsKey[i].currentContext?.findRenderObject();

      if (box != null && box is RenderBox) {
        Offset position = box.localToGlobal(Offset.zero);

        if (scrollController.offset >= position.dy) {
          tabController.animateTo(
            i,
            duration: const Duration(milliseconds: 100),
          );
          // DefaultTabController.of(
          //   context,
          // ).animateTo(i, duration: const Duration(milliseconds: 100));
        }
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
            body: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              child: ColoredBox(
                color: Colors.white,
                child: CustomScrollView(
                  controller: scrollController,
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
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: TabBar(
                            controller: tabController,
                            onTap: (value) => scrollToIndex(value),
                            isScrollable: true,
                            tabs:
                                tabTitles
                                    .map((titles) => Tab(text: titles))
                                    .toList(),
                            indicator: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Theme.of(context).colorScheme.surface,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            indicatorSize: TabBarIndicatorSize.tab,
                            automaticIndicatorColorAdjustment: true,
                            dividerHeight: 0,
                          ),
                        ),
                      ),
                    ),
                    for (final section in tabTitles)
                      SliverToBoxAdapter(
                        child: Column(
                          spacing: 8,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 16),
                            Padding(
                              key: sectionsKey[tabTitles.indexOf(section)],
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                section,
                                style: Theme.of(context).textTheme.headlineSmall
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

                    SliverToBoxAdapter(child: SizedBox(height: 32)),
                  ],
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
        'Includes & Excludes' => TripsDetailIncludesExcludes(
          excludes: tripDetail?.excludes ?? [],
          includes: tripDetail?.includes ?? [],
        ),
        'Review' => TripsDetailRatingReview(
          rating: tripDetail?.rating ?? 0,
          reviews: tripDetail?.reviews ?? [],
        ),
        'Terms & Conditions' => TripsDetailTnc(
          tnc: tripDetail?.termsAndConditions ?? '',
        ),
        'Price & Pax' => TripsDetailPriceAndPax(
          price: tripDetail?.price ?? 0,
          totalPax: tripDetail?.totalPax ?? 0,
        ),
        _ => Container(),
      };
}
