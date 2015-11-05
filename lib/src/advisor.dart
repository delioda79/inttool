import './review.dart';
class Advisor {
  String name;

  Advisor(this.name);

  bool addReview(DateTime date, String type, String device, int length, int stars) {
    return true;
  }

  List<Review> getReviews() {
    return new List<Review>();
  }
}