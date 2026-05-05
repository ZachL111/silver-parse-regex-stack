require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = SilverParseRegexStack::Signal.new(demand: 86, capacity: 93, latency: 23, risk: 15, weight: 6)
    assert_equal 166, SilverParseRegexStack.score(signal_case_1)
    assert_equal 'accept', SilverParseRegexStack.classify(signal_case_1)
    signal_case_2 = SilverParseRegexStack::Signal.new(demand: 79, capacity: 83, latency: 12, risk: 10, weight: 8)
    assert_equal 205, SilverParseRegexStack.score(signal_case_2)
    assert_equal 'accept', SilverParseRegexStack.classify(signal_case_2)
    signal_case_3 = SilverParseRegexStack::Signal.new(demand: 66, capacity: 91, latency: 13, risk: 25, weight: 8)
    assert_equal 124, SilverParseRegexStack.score(signal_case_3)
    assert_equal 'review', SilverParseRegexStack.classify(signal_case_3)
  end
end
