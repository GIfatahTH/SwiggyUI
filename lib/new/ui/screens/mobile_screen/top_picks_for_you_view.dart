import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:swiggy_ui/new/i18n/i18n.dart';

import '../../../models/top_picks_food.dart';
import '../../common/ui_helper.dart';
import '../restaurant_detail_screen/restaurant_detail_screen.dart';

final foods = TopPicksFood.getTopPicksfoods();

class TopPicksForYouView extends StatelessWidget {
  const TopPicksForYouView();

  @override
  Widget build(BuildContext context) {
    final _i18n = i18n.of(context);
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.thumb_up, size: 20.0),
              UIHelper.horizontalSpace2,
              Text(
                _i18n.topPicksForYou,
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontSize: 20.0),
              )
            ],
          ),
          UIHelper.verticalSpace4,
          LimitedBox(
            maxHeight: 188.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: foods.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  RM.navigate.toNamed(RestaurantDetailScreen.routeName);
                },
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  width: 100.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2.0,
                            )
                          ],
                        ),
                        child: Image.asset(
                          foods[index].image,
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      UIHelper.verticalSpace2,
                      Flexible(
                        child: Text(
                          foods[index].name,
                          maxLines: 2,
                          style:
                              Theme.of(context).textTheme.subtitle2!.copyWith(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      UIHelper.verticalSpace1,
                      Text(
                        foods[index].minutes,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Colors.grey[700],
                              fontSize: 13.0,
                            ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
