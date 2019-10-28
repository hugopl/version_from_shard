require "./spec_helper"

module Foo
  Version.declare
end

describe Version do
  it "works" do
    Foo::VERSION.should eq("0.1.0")
  end
end
