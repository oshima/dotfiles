Pry.config.theme = 'my-theme'

Pry::ColorPrinter.class_eval do
  remove_const :OBJ_COLOR
  const_set :OBJ_COLOR, "\e[38;5;173m"
end

Pry::Commands.create_command '<<' do
  command_options keep_retval: true
  def process
    results = args.map { |arg| require arg }
    results.size <= 1 ? results[0] : results
  end
end

class << self
  def copy(obj)
    IO.popen('pbcopy', 'w') { |io| io << obj }
    nil
  end

  def pcopy(obj)
    copy(obj.pretty_inspect)
  end

  def paste
    `pbpaste`
  end
end
