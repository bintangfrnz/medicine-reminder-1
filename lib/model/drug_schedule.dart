// Bintang Fajarianto
// Submission Dicoding : Belajar Membuat Aplikasi Flutter untuk Pemula

class DrugSchedules {
  final bool isEaten;
  final String name;
  final String desc;
  final String pathURL;
  final String timeScheduled;
  String? timeEaten;

  DrugSchedules({
    required this.isEaten,
    required this.name,
    required this.desc,
    required this.pathURL,
    required this.timeScheduled,
    this.timeEaten,
  });
}

List<DrugSchedules> drugSchedules = <DrugSchedules>[
  DrugSchedules(
    isEaten: true,
    name: 'Siladex',
    desc: "Obat ini untuk mengencerkan dahak",
    pathURL: 'assets/tablet.png',
    timeScheduled: "06:00",
    timeEaten: "06:05",
  ),
  DrugSchedules(
    isEaten: true,
    name: 'Antihistamin',
    desc: "Obat ini untuk mengobati reaksi alergi",
    pathURL: 'assets/pill.png',
    timeScheduled: "8:00",
    timeEaten: "8:11",
  ),
  DrugSchedules(
    isEaten: false,
    name: 'Siladex',
    desc: "Obat ini untuk mengencerkan dahak",
    pathURL: 'assets/tablet.png',
    timeScheduled: "12:00",
  ),
  DrugSchedules(
    isEaten: false,
    name: 'Antihistamin',
    desc: "Obat ini untuk mengobati reaksi alergi",
    pathURL: 'assets/pill.png',
    timeScheduled: "14:00",
  ),
  DrugSchedules(
    isEaten: false,
    name: 'Siladex',
    desc: "Obat ini untuk mengencerkan dahak",
    pathURL: 'assets/tablet.png',
    timeScheduled: "18:00",
  ),
  DrugSchedules(
    isEaten: false,
    name: 'Antihistamin',
    desc: "Obat ini untuk mengencerkan dahak",
    pathURL: 'assets/pill.png',
    timeScheduled: "20:00",
  )
];

DrugSchedules nextDrug = drugSchedules.firstWhere((i) => i.isEaten != true);
