import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../i18n/i18n.dart';
import '../../../themes/app_color.dart';
import '../../common/ui_helper.dart';
import '../../widgets/genie_grocery_cardview.dart';
import '../../widgets/responsive.dart';
import '../all_restaurants_screen/all_restaurants_screen.dart';
import '../genie_screen/genie_screen.dart';
import '../grocery_screen/grocery_screen.dart';
import '../meat_screen/meat_screen.dart';

class FoodGroceriesAvailabilityView extends StatelessWidget {
  const FoodGroceriesAvailabilityView();
  @override
  Widget build(BuildContext context) {
    final _i18n = i18n.of(context);
    final isMobile = Responsive.isMobile(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Column(
        children: <Widget>[
          if (isMobile)
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  child: Container(
                    width: 10.0,
                    height: 140.0,
                    color: swiggyOrange,
                  ),
                ),
                UIHelper.horizontalSpace2,
                Flexible(
                  child: Column(
                    children: <Widget>[
                      Text(
                        _i18n
                            .weAreNowDelivertyingFoodGroceriesAndOtherEssentials,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      UIHelper.verticalSpace1,
                      Text(
                        '${_i18n.foodAndGenieServiceMonSat} ${_i18n.groceriesAndMeatMonSan} ${_i18n.dairyMonSat}',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 16.0,
                              color: Colors.grey[800],
                            ),
                      )
                    ],
                  ),
                )
              ],
            ),
          if (isMobile) UIHelper.verticalSpace4,
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: UIHelper.borderRadiusAll2,
                child: InkWell(
                  child: Container(
                    height: 150.0,
                    color: swiggyOrange,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: FractionallySizedBox(
                            widthFactor: 0.7,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    _i18n.restaurants,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(color: Colors.white),
                                  ),
                                  UIHelper.verticalSpace1,
                                  Text(
                                    _i18n.noContactDeliveryAvailable,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 45.0,
                          padding: UIHelper.EdgeInsetsHorizontal2,
                          color: darkOrange,
                          child: Row(
                            children: <Widget>[
                              Text(
                                _i18n.viewAll,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                    ),
                              ),
                              UIHelper.verticalSpace2,
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 18.0,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: !isMobile
                      ? () {}
                      : () {
                          RM.navigate.toNamed(AllRestaurantsScreen.routeName);
                        },
                ),
              ),
              Positioned(
                top: -10.0,
                right: -10.0,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/food1.jpg',
                    width: 130.0,
                    height: 130.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          UIHelper.verticalSpace3,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GenieGroceryCardView(
                title: _i18n.genie,
                subtitle: _i18n.anythingYouNeedDelivered,
                image: 'assets/images/food1.jpg',
                onTap: !isMobile
                    ? () {}
                    : () {
                        RM.navigate.toNamed(GenieScreen.routeName);
                      },
              ),
              GenieGroceryCardView(
                title: _i18n.grocery,
                subtitle: _i18n.esentialsDeliveredIn2Hrs,
                image: 'assets/images/food4.jpg',
                onTap: !isMobile
                    ? () {}
                    : () {
                        RM.navigate.toNamed(GroceryScreen.routeName);
                      },
              ),
              GenieGroceryCardView(
                title: _i18n.meat,
                subtitle: _i18n.freshMeatDeliveredSafe,
                image: 'assets/images/food6.jpg',
                onTap: !isMobile
                    ? () {}
                    : () {
                        RM.navigate.toNamed(MeatScreen.routeName);
                      },
              ),
            ],
          )
        ],
      ),
    );
  }
}
