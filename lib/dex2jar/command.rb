module Dex2jar
  class Command
    def initialize(options, files)
      @options = options
      @files   = files
    end

    def execute
      `#{dex2jar_command} #{options} #{files.join(' ')}`
    end

    private
    attr_reader :options, :files

    def dex2jar_command
      if (windows_environment?)
        "#{Dex2jar::root_path}/bin/dex2jar-0.0.9.15/d2j-dex2jar.bat"
      else
        "#{Dex2jar::root_path}/bin/dex2jar-0.0.9.15/d2j-dex2jar.sh"
      end
    end

    def windows_environment?
      (RbConfig::CONFIG['host_os'] =~ /cygwin|mswin|mingw|bccwin|wince|emx/)
    end
  end
end