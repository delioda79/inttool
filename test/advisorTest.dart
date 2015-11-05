import 'package:test/test.dart';
import '../lib/src/advisor.dart';
import '../lib/src/review.dart';

void main() {
  test("Advisor.addReview() accepts right informations and returns true", () {
    Advisor advisor = new Advisor('Jon');
    bool added = advisor.addReview(new DateTime.now(), 'solicited', 'LB3‐TYU', 50, 5);
    expect(added, equals(true));
  });

  test("Advisor.getReviews() returns all the reviews", () {
    Advisor advisor = new Advisor('Jon');
    List<Review> reviews = advisor.getReviews();
    expect(reviews.length, equals(0));

    advisor.addReview(new DateTime.now(), 'solicited', 'LB3‐TYU', 50, 5);
    expect(reviews.length, equals(1));
  });
}
