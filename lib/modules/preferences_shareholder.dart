import 'package:flutter/foundation.dart';
import 'package:hive_flutter/adapters.dart';
import '../models/hive/convertor.dart';
import '../models/hive/models/show_preview.dart';
import '../models/show_models/full_show_model.dart';

class PreferencesShareholder {
  // Delete all items of a list in the shared preferences
  Future<bool> deleteList(String listName) async {
    Hive.deleteBoxFromDisk(listName);
    if (kDebugMode) {
      print("All items of $listName deleted");
    }
    return true;
  }

  // Add an item to a list in the shared preferences
  Future<bool> addShowToList(
      {required FullShow fullShow, required String listName}) async {
    Box<HiveShowPreview> list = Hive.box<HiveShowPreview>(listName);
    HiveShowPreview hiveShow =
        await convertFullShowToHive(fullShow, (list.length + 1).toString());
    list.put(list.length + 1, hiveShow);
    if (kDebugMode) {
      print("The item added to $listName");
    }
    return true;
  }

  // Delete an item from a list in the shared preferences
  Future<bool> deleteFromList(
      {required String showId, required String listName}) async {
    Box<HiveShowPreview> list = Hive.box<HiveShowPreview>(listName);
    for (int i = 0; i < list.length; i++) {
      if (list.getAt(i)?.id == showId) {
        list.deleteAt(i);
        if (kDebugMode) {
          print("The item deleted from $listName");
        }
        return true;
      }
    }
    return false;
  }

  // Get a map value that the item has been already added to which lists
  Future<Map<String, bool>> isThereInLists({required String showId}) async {
    List<String> listNames = ["collection", "watchlist", "history"];
    Map<String, bool> result = {};
    for (String listName in listNames) {
      Box<HiveShowPreview> collection = Hive.box<HiveShowPreview>(listName);
      for (int i = 0; i < collection.length; i++) {
        if (collection.getAt(i)?.id == showId) {
          if (kDebugMode) {
            print("Item is in $listName");
          }
          result[listName] = true;
          break;
        }
      }
      result[listName] = false;
    }
    return result;
  }
}
