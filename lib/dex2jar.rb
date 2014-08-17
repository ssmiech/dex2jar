require "dex2jar/version"
require 'dex2jar/command'

module Dex2jar
  def self.execute(options, files)
    Command.new(options, files).execute
  end
end
