require 'test/unit'
require_relative 'phonenumber'

class TestPhoneNumberConverter < Test::Unit::TestCase

    def setup
        @phonenumber = phonenumber.new
    end

    def testjoin
        assert_equal "1-800-FLAWER", @phonenumber.testjoin("1-800-FL AWER")
    end
    
    def testreplace
        assert_equal "222-333-444-555-666-7777-888-9999", @phonenumber.testreplace("ABC-DEF-GHI-JKL-MNO-PQRS-TUV-WXYZ")
    end
end