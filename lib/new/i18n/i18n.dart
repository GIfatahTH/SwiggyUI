import 'package:flutter/cupertino.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

final i18n = RM.injectI18N({
  Locale('en', 'US'): () => EnUS(),
});

class EnUS {
  final other = 'Other';
  final offer = 'Offer';
  final weAreNowDelivertyingFoodGroceriesAndOtherEssentials =
      'We are now deliverying food groceries and other essentials.';
  final foodAndGenieServiceMonSat =
      'Food & Genie service (Mon-Sat)-6:00 am to 9:00pm.';
  final groceriesAndMeatMonSan =
      'Groceries & Meat (Mon-Sat)-6:00 am to 6:00pm.';
  final dairyMonSat =
      'Dairy (Mon-Sat)-6:00 am to 6:00pm (Sun)-6:00 am to 12:00 pm';
  final restaurants = 'Restaurants';
  final noContactDeliveryAvailable = 'No-contact delivery available';
  final viewAll = 'View all';

  final genie = 'Genie';
  final anythingYouNeedDelivered = 'Anything you need,\ndelivered';
  final grocery = 'Grocery';
  final esentialsDeliveredIn2Hrs = 'Esentials delivered\nin 2 Hrs';

  final meat = 'Meat';
  final freshMeatDeliveredSafe = 'Fesh meat\ndelivered safe';
  final topPicksForYou = 'Top Picks For You';
}
