require 'minitest/autorun'
require "minitest/reporters"
require 'challenges'
Minitest::Reporters.use!

describe "Introduction" do
  it "Hello HackerRank!" do
    assert_equal "Hello HackerRank!", hello_hackerrank
  end
  it "Everything is an Object" do
    assert_equal self, everything_is_an_object
  end
  it "Object Methods" do
    assert_equal true, object_methods(2)
  end
  it "Object Method Parameters" do
    assert_equal true, object_method_parameters(2, 1, 4)
  end
end

describe "Ruby Control Structures" do
  before do
    def capture_output(&block)
      output = StringIO.new
      begin
         $stdout = output
         block.call
      ensure
         $stdout = STDOUT
      end
      output.string
    end

    class User
      def update_score
        puts __method__.to_s
      end
      def is_admin?
        false
      end
    end

    @user = User.new
    @users = []
    @users << @user
  end

  it "Ruby Control Structures - Each" do
    output = capture_output { scoring(@users) }
    assert_equal "update_score", output.chop!
  end

  it "Ruby Control Structures - Unless" do
    output = capture_output { scoring(@users) }
    assert_equal "update_score", output.chop!
  end
end

class TestChallenges < Minitest::Test
  def test_hello_hackerrank
    assert_equal 'Hello HackerRank!', hello_hackerrank
  end
end
