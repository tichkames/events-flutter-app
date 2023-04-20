class Event {
  Event(this.name, this.image, this.startDate, this.endDate, this.location,
      this.cost, this.discountCost, this.category);

  final String name;
  final String image;
  final String startDate;
  final String? endDate;
  final String location;
  final double cost;
  final double? discountCost;
  final String category;
}
