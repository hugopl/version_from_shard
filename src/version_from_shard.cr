module VersionFromShard
  macro declare
    {{ run("./extract_version") }}
  end

  extend self
end
