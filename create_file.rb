require 'yaml'

while (true)
  config = YAML.load_file("config.yml")
  path = config['PATH']
  sleep_time = config['SLEEP_TIME']
  unless File.exist?(path) then
    File.open(path, "w") {|f| f.write("test") }
    puts "File #{path} created"
  end
  puts "Sleeping for #{sleep_time} seconds"
  sleep(sleep_time)
end
