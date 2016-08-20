Pry.config.theme = 'my-theme'

Pry::ColorPrinter.class_eval do
  remove_const :OBJ_COLOR
  const_set :OBJ_COLOR, "\e[38;5;173m"
end

Pry::Commands.create_command '<<' do
  description 'Require ruby libraries.'
  command_options keep_retval: true

  def process
    results = args.map { |arg| require arg }
    results.size <= 1 ? results[0] : results
  end
end

module Kernel
  module_function

  def copy(obj)
    IO.popen('pbcopy', 'w') { |io| io << obj }
    nil
  end

  def pcopy(obj)
    copy obj.pretty_inspect
  end

  def paste
    `pbpaste`
  end

  def json(str)
    require 'json'
    JSON.parse(str)
  end

  def jsonf(file)
    json File.read(File.expand_path(file))
  end

  def yaml(str)
    require 'yaml'
    YAML.load(str)
  end

  def yamlf(file)
    yaml File.read(File.expand_path(file))
  end
end
