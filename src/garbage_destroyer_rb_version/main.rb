require 'optparse'

@options = {}

OptionParser.new do |opts|

  opts.banner = "USAGE: ruby main.rb -d [DIR] -t [TIME]"

  opts.on("-d", "--dir [DIR]", "Specifies directory to be cleaned") do |dir|
    @options[:dir] = dir
  end

  opts.on("-t", "--time [TIME]", "Specifies the minimun age criteria to delete a file (in seconds)") do |time|
    @options[:time] = time.to_i
  end
end.parse!

# puts @options -> DEBUG
path = "%s/*" % @options[:dir]
# raise an exception required args are missing
raise OptionParser::MissingArgument if @options[:dir].nil? or @options[:time].nil? 

Dir.glob(path).each do |file|
    time_diff = Time.now.to_i - File.atime(file).to_i
    if time_diff > @options[:time] then
        puts("Deleting file: %s..." % file)
        File.delete(file)
    end
end

