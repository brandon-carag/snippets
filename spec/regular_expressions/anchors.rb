require 'rails_helper'

describe "Anchors" do
  it "anchors to beginning and end of line" do
    str     = "bobcat"
    regexp  = /^bobcat$/

    expect(regexp).to match(str)
  end

  it "matches newlines" do
    str     = "elephant\nbobcat"
    regexp  = /^bobcat$/

    expect(regexp).to match(str)
  end

  it "matches only at beginning of total string" do
    str    = "elephant\nbobcat"
    regexp = /\Abobcat/

    expect(regexp).not_to match(str)
  end

  it "matches only at end of string" do
    str    = "elephant\nbobcat"
    regexp = /elephant\z/

    expect(regexp).not_to match(str)
  end

  it "uses word bounaries" do
    str    = "Then it snowed."
    regexp = /The\b/

    expect(regexp).not_to match(str)
  end

end
