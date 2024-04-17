
import 'models/rocket_model/rocket_model.dart';

List<RocketModel> rocketList = [
  const RocketModel(
    name: 'Falcon 9',
    company: 'NASA',
    active: true,
    flickrImages:
       [ 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/SpaceX_Demo-2_Launch_%28NHQ202005300044%29_%28cropped%29.jpg/330px-SpaceX_Demo-2_Launch_%28NHQ202005300044%29_%28cropped%29.jpg'],
    wikipedia: 'https://en.wikipedia.org/wiki/Falcon_9',
  ),
  const RocketModel(
    name: 'Falcon Heavy',
    company: 'NASA',
    active: true,
    flickrImages:
        ['https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Falcon_Heavy_Demo_Mission_%2839337245145%29.jpg/420px-Falcon_Heavy_Demo_Mission_%2839337245145%29.jpg'],
    wikipedia: 'https://en.wikipedia.org/wiki/Falcon_Heavy',
  ),
  const RocketModel(
    name: 'Starship',
    company: 'NASA',
   active: true,
    flickrImages:
       [ 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Full_Stack_starship.jpg/270px-Full_Stack_starship.jpg'],
  wikipedia: 'https://en.wikipedia.org/wiki/SpaceX_Starship',
  ),
  const RocketModel(
    name: 'Falcon 1',
    active: true,
    flickrImages:
       [ 'https://upload.wikimedia.org/wikipedia/en/2/26/Falcon_1_Flight.jpg'],
    wikipedia: 'https://en.wikipedia.org/wiki/Falcon_1',
  ),
];
