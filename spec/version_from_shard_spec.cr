require "./spec_helper"

module Foo
  VersionFromShard.declare
end

describe VersionFromShard do
  it "works" do
    # If we are not exactly in the tagged commit, the VERSION value are going
    # to be like `git describe --tags`. A complete test would call `crystal init`
    # somewhere, add some commits then test it...
    Foo::VERSION.should start_with("1.1.0")
  end
end
