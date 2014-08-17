require 'simplecov'
require 'coveralls'


SimpleCov.formatter = Coveralls::SimpleCov::Formatter

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

SimpleCov.start do
  add_filter "/spec/"
end

require 'dex2jar'
