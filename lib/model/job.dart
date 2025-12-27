class Jobs {
  final String name;
  bool isDon;

  Jobs({required this.name, this.isDon = false});

  void changeDone() {
    isDon = !isDon;
  }
}
