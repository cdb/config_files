# print SQL to STDOUT
if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
  require 'logger'
  RAILS_DEFAULT_LOGGER = Logger.new(STDOUT)
end

require 'irb/completion'
require 'irb/ext/save-history'
ARGV.concat [ "--readline", "--prompt-mode", "simple" ]
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"



# Easily print methods local to an object's class
class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end
end

# copy a string to the clipboard
def pbcopy(string)
  `echo "#{string}" | pbcopy`
  string
end


# def history
#   puts Readline::HISTORY.entries.split("exit").last[0..-2].join("\n")
# end

begin
  require 'rubygems'
  require 'wirble'

  Wirble.init
  Wirble.colorize
rescue LoadError => err
  warn "Couldn't load Wirble: #{err}"
end
