require 'irb/completion'

IRB.conf[:PROMPT_MODE] = :SIMPLE

require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

require 'awesome_print'
AwesomePrint.irb!

