require 'rails_helper'

describe "Character Class Shortcuts Regular Expressions" do

  context "Basic Matching" do
    it ". matches any character" do
      str    = "%"
      regexp = /./ #e.g. any kind of a and 1 or 2

      expect(regexp).to match(str)
    end

    it "matches various kinds of whitespace" do
      strings = [" ","\t","\r","\n","\f","\v"]
      regexp  = /\s/

      result = strings.any?{|str| str.match(regexp).nil? }
      expect(result).to be false
    end

    it "matches non-whitespace" do
      strings = ["a","1","*"]
      regexp  = /\S/

      result = strings.any?{|str| str.match(regexp).nil? }
      expect(result).to be false
    end

    it "matches decimal digit" do
      strings = ["1","2","0"]

      regexp  = /\d/

      result = strings.any?{|str| str.match(regexp).nil? }
      expect(result).to be false
    end

    it "matches non-decimal digit" do
      strings = ["a"," ","#"]

      regexp  = /\D/

      result = strings.any?{|str| str.match(regexp).nil? }
      expect(result).to be false
    end

    it "matches alphabetical, numerical, and underscore (word characters)" do
      strings = ["A","a","1","_"]

      regexp  = /\w/

      result = strings.any?{|str| str.match(regexp).nil? }
      expect(result).to be false

    end

  end

end
