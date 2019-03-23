require 'rails_helper'

describe "Character Class Regular Expressions" do
  #Character class metacharacters ^ \ - [ ]

  context "Basic Matching" do
    it "Concatenates characters" do
      str    = "a1"
      regexp = /[Aa][12]/ #e.g. any kind of a and 1 or 2

      expect(regexp).to match(str)
    end

    it "matches multiple types of character ranges" do
      strings = ["2","b","C"]
      regexp  = /[0-9A-Fa-f]/

      result = strings.any?{|str| str.match(regexp).nil? }
      expect(result).to be false
    end

    it "negates characters" do
      strings = ["b","c","d","f"]
      regexp  = /[^aeiou]/

      result = strings.any?{|str| str.match(regexp).nil? }
      expect(result).to be false
    end

    it "handles negations" do
      str    = "xyx"
      regexp = /[^x]/

      #Note that the #match method checks whether there is a match anyplace in the string.
      expect(regexp).to match(str)
    end
  end

end
