require "spec_helper"

describe "StaticController routing" do
  it "/ -> static#index" do
    expect(get("/")).to route_to("static#index")
  end
end
