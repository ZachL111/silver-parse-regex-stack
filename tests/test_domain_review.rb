require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = SilverParseRegexStack::DomainReview.new(signal: 73, slack: 42, drag: 27, confidence: 57)
    assert_equal 164, SilverParseRegexStack.domain_review_score(item)
    assert_equal "ship", SilverParseRegexStack.domain_review_lane(item)
  end
end
