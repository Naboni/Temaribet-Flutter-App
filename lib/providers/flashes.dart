import 'package:flutter/material.dart';
import 'package:temaribet/model/flash.dart';

class Flashes with ChangeNotifier {
  List<Flash> _flashes = [
    Flash(
      flashId: "1",
      flashTitle: "Metamorphosis",
      flashDetail:
          "Metamorphosis is a biological process by which an animal physically develops after birth or hatching, involving a conspicuous and relatively abrupt change in the animal's body structure through cell growth and differentiation.",
      courseId: "3",
    ),
    Flash(
      flashId: "2",
      flashTitle: "Osmosis",
      flashDetail:
          "Osmosis is a process by which molecules of a solvent tend to pass through a semipermeable membrane from a less concentrated solution into a more concentrated one.",
      courseId: "3",
    ),
    Flash(
      flashId: "1",
      flashTitle: "Krebs cycle",
      flashDetail:
          "The Krebs cycle is a series of chemical reactions used by all aerobic organisms to generate energy through the oxidization of acetate—derived from carbohydrates, fats, and proteins —into carbon dioxide.",
      courseId: "3",
    ),
    Flash(
      flashId: "1",
      flashTitle: "Endocytosis",
      flashDetail:
          "Endocytosis is a cellular process in which substances are brought into the cell. The material to be internalized is surrounded by an area of cell membrane, which then buds off inside the cell to form a vesicle containing the ingested material. Endocytosis includes pinocytosis and phagocytosis.",
      courseId: "3",
    ),
  ];
  List<Flash> get flashes {
    return [..._flashes];
  }

  Iterable<Flash> findFlashById(String id) {
    return _flashes.where((element) => element.courseId == id);
  }

  void addFlash() {
    // _flashes.add(value);
    notifyListeners();
  }
}
