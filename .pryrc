Pry.config.theme = 'my-theme'

Pry::Commands.block_command(:<<, keep_retval: true) do |*args|
  results = args.map { |arg| require arg }
  results.size <= 1 ? results[0] : results
end

class Pry::ColorPrinter
  remove_const :OBJ_COLOR
  OBJ_COLOR = "\e[38;5;173m"
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
