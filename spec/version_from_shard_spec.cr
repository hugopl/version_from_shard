require "./spec_helper"

module Foo
  VersionFromShard.declare
end

describe VersionFromShard do
  it "works" do
    Foo::VERSION.should eq("1.0.0")
  end
end
