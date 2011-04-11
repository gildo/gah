require 'json'

dir = File.dirname(File.expand_path(__FILE__))
$LOAD_PATH.unshift(File.join('gah'))
$LOAD_PATH.unshift(dir)

require 'gah/helpers'
require 'gah/repository'

module Gah

  VERSION = "0.0.1"

end
