
import 'package:space_app/features/rockets/data/models/rocket_model/diameter.dart';
import 'package:space_app/features/rockets/data/models/rocket_model/height.dart';
import 'package:space_app/features/rockets/data/models/rocket_model/mass.dart';

import 'models/rocket_model/rocket_model.dart';

List<RocketModel> rocketList = [
  const RocketModel(
    name: 'Falcon 9',
    country:'Republic of the Marshall Islands' ,
    diameter: Diameter(meters: 22),
    mass: Mass(kg: 200),
    height: Height(meters: 25),
    company: 'NASA',
    active: true,
    flickrImages:
       [ "https://farm1.staticflickr.com/929/28787338307_3453a11a77_b.jpg",
            "https://farm4.staticflickr.com/3955/32915197674_eee74d81bb_b.jpg",
            "https://farm1.staticflickr.com/293/32312415025_6841e30bf1_b.jpg",
            "https://farm1.staticflickr.com/623/23660653516_5b6cb301d1_b.jpg",
            "https://farm6.staticflickr.com/5518/31579784413_d853331601_b.jpg",
            "https://farm1.staticflickr.com/745/32394687645_a9c54a34ef_b.jpg"],
    wikipedia: 'https://en.wikipedia.org/wiki/Falcon_9',
    description: "The Falcon 1 was an expendable launch system privately developed and manufactured by SpaceX during 2006-2009. On 28 September 2008, Falcon 1 became the first privately-developed liquid-fuel launch vehicle to go into orbit around the Earth."
  ),
  const RocketModel(
    name: 'Falcon Heavy',
     country:'Republic of the Marshall Islands' ,
    diameter: Diameter(meters: 22),
    mass: Mass(kg: 200),
    height: Height(meters: 25),
    company: 'NASA',
    active: true,
    flickrImages:
        ['https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Falcon_Heavy_Demo_Mission_%2839337245145%29.jpg/420px-Falcon_Heavy_Demo_Mission_%2839337245145%29.jpg'],
    wikipedia: 'https://en.wikipedia.org/wiki/Falcon_Heavy',
  ),
  const RocketModel(
    name: 'Starship',
     country:'Republic of the Marshall Islands' ,
    diameter: Diameter(meters: 22),
    mass: Mass(kg: 200),
    height: Height(meters: 25),
    company: 'NASA',
   active: true,
    flickrImages:
       [ 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Full_Stack_starship.jpg/270px-Full_Stack_starship.jpg'],
  wikipedia: 'https://en.wikipedia.org/wiki/SpaceX_Starship',
  ),
  const RocketModel(
    name: 'Falcon 1',
     country:'Republic of the Marshall Islands' ,
    diameter: Diameter(meters: 22),
    mass: Mass(kg: 200),
    height: Height(meters: 25),
    active: true,
    flickrImages:
       [ 'https://upload.wikimedia.org/wikipedia/en/2/26/Falcon_1_Flight.jpg'],
    wikipedia: 'https://en.wikipedia.org/wiki/Falcon_1',
  ),
];
