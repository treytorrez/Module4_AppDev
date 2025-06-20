enum Month {
  january   (1, 31),
  february  (2, 28), //TODO: leap year
  march     (3, 31),
  april     (4, 30),
  may       (5, 31),
  june      (6, 30),
  july      (7, 31),
  august    (8, 31),
  september (9, 30),
  october   (10, 31),
  november  (11, 30),
  december  (12, 31);

  final int number;
  final int dayCount;
  const Month(this.number, this.dayCount);


}