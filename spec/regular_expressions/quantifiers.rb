require 'rails_helper'

describe "Quantifiers" do

  it "Matches a sequence of three or more digits (the * operator is zero or more)" do
    strings = ["123","32156","1234123412341234"]
    regexp  = /\d\d\d\d*/

    result = strings.any?{|str| str.match(regexp).nil? }
    expect(result).to be false
  end

  it "The * operator matches any character if you're not careful" do
    strings = ["xyz","","abc"]
    regexp  = /x*/

    result = strings.any?{|str| str.match(regexp).nil? }
    expect(result).to be false
  end

  it "Matches a sequence of three or more digits (the + operator is one or more)" do
    strings = ["123","32156","1234123412341234"]
    regexp  = /\d\d\d+/

    result = strings.any?{|str| str.match(regexp).nil? }
    expect(result).to be false
  end

  it "Matches a pattern within parenthesis" do
    strings = ["12345","12342345","12342342345"]
    regexp  = /1(234)*5/

    result = strings.any?{|str| str.match(regexp).nil? }
    expect(result).to be false
  end

  it "question mark ? matches zero or one" do
    strings = ["http","https"]
    regexp  = /^https?$/

    result = strings.any?{|str| str.match(regexp).nil? }
    expect(result).to be false
  end

  it "uses the range operator {} to match numbers at least 3 digits in length with a word boundary" do
    strings = [
      "365 days in a year, 100 years in a century.",
      "My phone number is 222-555-1212.",
      "My serial number is 345678912.",
    ]
    regexp  = /\b\d{3}/

    result = strings.any?{|str| str.match(regexp).nil? }
    expect(result).to be false
  end

end
