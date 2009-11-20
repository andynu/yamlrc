= yamlrc

== DESCRIPTION:

  Simply loads a yaml file from
  one of a number of directories
  layering them on eachother.

== FEATURES/PROBLEMS:

  * loads yaml files.

== SYNOPSIS:

  NOTE: top level yaml element should be a hash.

  config = Yamlrc.load("myconfig.yaml")
  checks /etc/myconfig.yaml
  checks ~/myconfig.yaml
  and returns its contents.

  -- /etc/myconfig.yaml --
  :default:
    :user: reader
    :pass: secret

  -- ~/myconfig.yaml --
  :default:
    :host: otherhost
    :user: ted
    :pass: bettersecret
  :dev:
    :user: bill
    :pass: changeme

  -- whatever.rb --
  require 'yamlrc'
  require 'pp'
  config = Yamlrc.load("myconfig.yaml")
  pp config 
  => {:default=>{:host=>"otherhost", :user=>"ted", :pass=>"bettersecret"},
     :dev=>{:user=>"bill", :pass=>"changeme"}}


== REQUIREMENTS:

  * yaml

== INSTALL:

  (if you haven't already)
  > sudo gem install gem_cutter
  > gem tumble

  > sudo gem install yamlrc

== LICENSE:

(The MIT License)

Copyright (c) 2009 Andrew Nutter-Upham

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
