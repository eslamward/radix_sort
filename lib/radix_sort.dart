extension RadixSort on List<int> {
  void radiSort() {
    const base = 10;
    int place = 1;
    bool finish = false;

    while (!finish) {
      finish = true;
      final buckets = List.generate(10, (_) => <int>[]);
      forEach((number) {
        final numberAtPlace = number ~/ place;
        final digit = numberAtPlace % base;
        buckets[digit].add(number);
        if (numberAtPlace ~/ base > 0) {
          finish = false;
        }
      });
      place = place * base;
      clear();
      addAll(buckets.expand((element) => element));
    }
  }
}
