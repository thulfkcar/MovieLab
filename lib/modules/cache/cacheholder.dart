import 'package:get/get.dart';
import 'package:movielab/models/models.dart';
import 'package:movielab/modules/cache/cache_data.dart';

class CacheHolder {
// To save a movie or show info to the cache so it can be accessed later without having to make a request to the IMDB API again.
  Future saveShowInfoInCache({required FullShow show}) async {
    bool thereIs = false;
    List<FullShow> shows = Get.find<CacheData>().showsData;
    for (FullShow iShow in shows) {
      if (iShow.id == show.id) {
        thereIs = true;
        break;
      }
    }
    if (!thereIs) {
      Get.find<CacheData>().addShowData(show: show);
    }
  }

// To save an actor or actress info to the cache so it can be accessed later without having to make a request to the IMDB API again.
  Future saveActorInfoInCache({required FullActor actor}) async {
    bool thereIs = false;
    List<FullActor> actors = Get.find<CacheData>().actorsData;
    for (FullActor iActor in actors) {
      if (iActor.id == actor.id) {
        thereIs = true;
        break;
      }
    }
    if (!thereIs) {
      Get.find<CacheData>().addActorData(actor: actor);
    }
  }

// To get a movie or show info that has been saved in cache.
  Future<FullShow?> getShowInfoFromCache({required String id}) async {
    List<FullShow> shows = Get.find<CacheData>().showsData;
    for (FullShow iShow in shows) {
      if (iShow.id == id) {
        // There is the show in cache
        return iShow;
      }
    }
    return null;
  }

// To get a actor or actress info that has been saved in cache.
  Future<FullActor?> getActorInfoFromCache({required String id}) async {
    List<FullActor> actors = Get.find<CacheData>().actorsData;
    for (FullActor iactor in actors) {
      if (iactor.id == id) {
        // There is the actor in cache
        return iactor;
      }
    }
    return null;
  }
}
