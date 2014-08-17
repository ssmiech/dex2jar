require "dex2jar/version"
require 'dex2jar/command'

module Dex2jar
  def self.execute(options, files)
    Command.new(options, files).execute
  end

  def self.root_path
    File.dirname __FILE__
  end
end
