module Version
  macro declare
    {{ run("./extract_version") }}
  end

  extend self
end
