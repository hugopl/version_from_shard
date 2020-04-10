require "yaml"

def extract_version(dir : String) : String
  if dir.empty?
    dir = Dir.current
    skip_git = false
  else
    skip_git = true
  end

  version = ""
  dir_components = Path.new(dir).parts.size
  Dir.cd(dir) do
    dir_components.times do
      if File.exists?("shard.yml")
        version = YAML.parse(File.read("shard.yml"))["version"].to_s
        break
      else
        Dir.cd("..")
      end
    end
  end

  raise "File not found or empty version string." if version.empty?

  skip_git ? version : try_git_describe(version)
rescue e
  abort("Error reading shard.yml: #{e.message}")
end

def try_git_describe(version)
  git = Process.new("git", %w(describe --tags), output: Process::Redirect::Pipe)
  output = git.output.gets_to_end.strip
  return version unless git.wait.success?

  # Most tags starts like "v1.0.3", but some projects use raw "1.0.3"
  idx = output.index(version)
  return version if idx.nil?

  output[idx..-1]
rescue RuntimeError
  version
end

version = extract_version(ARGV[0])
puts "VERSION = \"#{version}\""
