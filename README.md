# Dex2jar

Ruby wrapper around android's dex2jar command. Use to dex2jar to generate .jar file. 

## Installation

Add this line to your application's Gemfile:

    gem 'dex2jar'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dex2jar

## Usage

    $ dex2jar [options] <file0> [file1 ... fileN]    

    Options:
      --debug-info, -d:   translate debug info
           --force, -f:   force overwrite
         --verbose, -v:   show progress
      --output, -o <s>:   output .jar file, default is
                          $current_dir/[file-name]-dex2jar.jar
            --help, -h:   Show this message    

## Contributing

1. Fork it ( https://github.com/[my-github-username]/dex2jar/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
