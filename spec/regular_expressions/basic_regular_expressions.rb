require 'rails_helper'

describe "Basic Regular Expressions" do

  context "Basic Matching" do
    it "finds a single character" do
      str    = "cast"
      regexp = /s/

      expect(regexp).to match(str)
    end

    it "matches special characters" do
      #Special Characters: $ ^ * + ? . ( ) [ ] { } | \
      str    = "hello?"
      regexp = /\?/

      expect(regexp).to match(str)
    end

    it "matches special characters that are not meta-characters (without escaping them)" do
      str    = "name:"
      regexp = /:/

      expect(regexp).to match(str)
    end

    it "matches spaces" do
      str    = "foo bar"
      regexp = / /

      expect(regexp).to match(str)
    end

    it "matches one of several sub-patterns" do
      str    = "The rabbit."
      regexp = /cat|dog|rabbit/

      expect(regexp).to match(str)
    end

    it "matches tabs represented by \t" do
      str    = "One line\t"
      regexp = /\t/

      expect(regexp).to match(str)
    end

    it "is a case insensitive match" do
      str    = "launch"
      regexp = /launch/i

      expect(regexp).to match(str)
      expect(regexp).to match(str.upcase)
    end

    it "uses both alternation and concatenation" do
      str_1    = "blueberry"
      str_2    = "blackberry"
      regexp = /(blue|black)berry/

      expect(regexp).to match(str_1)
      expect(regexp).to match(str_2)
    end

    it "random test" do
      str_1 = "1.1"
      str_2 = "11"
      regexp = /1(\.)?1/

      expect(regexp).to match(str_1)
      expect(regexp).to match(str_2)
    end

  end

end
