import './review.dart';
class Advisor {
  String name;
  List<Review> reviews = new List<Review>();

  Advisor(this.name);

  bool addReview(DateTime date, String type, String device, int length, int stars) {
    bool result;
   try {
      reviews.add(new Review(date, type, device, length, stars));
      result = true;
    }
    catch(e) {
      result = false;
    }
    finally {
      return result;
    }
  }

  List<Review> getReviews() {
    return reviews;
  }
}