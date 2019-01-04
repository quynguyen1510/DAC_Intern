require "sub_strings"
require "test/unit"

class TestSubStrings < Test::Unit::TestCase
  def test_simple
    assert_equal({"how"=>1}, sub_strings("howdy",["how"]))
    assert_equal({"how's"=>1}, sub_strings("how's down",["how's"]))
    assert_equal({"ow"=>2, "down"=>1}, sub_strings("how's down",["ow","down"]))
  end
  	
  def test_typecheck
    assert_raise( RuntimeError ) { sub_string(12,["how","down"]) }
    assert_raise( RuntimeError ) { sub_string('What is string',12) }
  end
end
