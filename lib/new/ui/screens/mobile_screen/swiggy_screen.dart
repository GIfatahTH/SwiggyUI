import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:swiggy_ui/new/ui/screens/mobile_screen/top_picks_for_you_view.dart';

import '../../../i18n/i18n.dart';
import '../../common/ui_helper.dart';
import '../offers_screen/offers_screen.dart';
import 'food_groceries_availability_view.dart';

class SwiggyScreen extends StatelessWidget {
  const SwiggyScreen();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            _buildAppBar(context),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const FoodGroceriesAvailabilityView(),
                    const TopPicksForYouView(),
                    OfferBannerView(),
                    // CustomDividerView(),
                    // IndianFoodView(),
                    // CustomDividerView(),
                    // InTheSpotlightView(),
                    // CustomDividerView(),
                    // PopularBrandsView(),
                    // CustomDividerView(),
                    // SwiggySafetyBannerView(),
                    // BestInSafetyViews(),
                    // CustomDividerView(),
                    // TopOffersViews(),
                    // CustomDividerView(),
                    // GenieView(),
                    // CustomDividerView(),
                    // PopularCategoriesView(),
                    // CustomDividerView(),
                    // RestaurantVerticalListView(
                    //   title: 'Popular Restaurants',
                    //   restaurants:
                    //       SpotlightBestTopFood.getPopularAllRestaurants(),
                    // ),
                    // CustomDividerView(),
                    // RestaurantVerticalListView(
                    //   title: 'All Restaurants Nearby',
                    //   restaurants:
                    //       SpotlightBestTopFood.getPopularAllRestaurants(),
                    //   isAllRestaurantNearby: true,
                    // ),
                    // SeeAllRestaurantBtn(),
                    // LiveForFoodView(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _buildAppBar(BuildContext context) {
    final _i18n = i18n.of(context);
    return Container(
      margin: UIHelper.EdgeInsetsHorizontal4,
      height: 60.0,
      child: Row(
        children: <Widget>[
          Text(
            _i18n.other,
            style:
                Theme.of(context).textTheme.headline4!.copyWith(fontSize: 21.0),
          ),
          UIHelper.horizontalSpace1,
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Icon(Icons.keyboard_arrow_down),
          ),
          Spacer(),
          Icon(Icons.local_offer),
          UIHelper.horizontalSpace1,
          InkWell(
            child: Container(
              padding: UIHelper.EdgeInsetsAll1,
              child: Text(
                _i18n.offer,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(fontSize: 18.0),
              ),
            ),
            onTap: () {
              RM.navigate.toNamed(OffersScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
