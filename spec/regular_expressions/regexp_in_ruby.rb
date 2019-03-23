require 'rails_helper'

describe "Regexp usage in Ruby" do

  it "returns fields from a haphazardly-formatted string" do
    #NOTE: The key here is that we use a character class rather than
    #parenthesis with the + operator.  I'm not sure why.

    def fields(str)
      str.split(/[ \t,]+/)
    end

    expect(fields("Pete,201,Student")).to     eq(['Pete', '201', 'Student'])
    expect(fields("Pete \t 201    ,  TA")).to eq(['Pete', '201', 'TA'])
    expect(fields("Pete \t 201")).to          eq(['Pete', '201'])
  end

end
