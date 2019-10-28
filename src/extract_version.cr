require "yaml"

def extract_version
  version = ""
  dir_components = Path.new(Dir.current).parts.size
  dir_components.times do
    if File.exists?("shard.yml")
      version = YAML.parse(File.read("shard.yml"))["version"].to_s
      break
    else
      Dir.cd("..")
    end
  end

  raise "File not found or empty version string." if version.empty?

  puts "VERSION = \"#{version}\""
rescue e
  abort("Error reading shard.yml: #{e.message}")
end

extract_version
