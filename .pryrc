Pry.history.load
Pry.config.theme = 'my-theme'

class Pry::ColorPrinter
  remove_const :OBJ_COLOR
  OBJ_COLOR = "\e[38;5;173m" # 173:dark_salmon
end

class << self
  def copy(obj)
    obj.to_s.tap do |str|
      IO.popen('pbcopy', 'w') { |io| io << str }
    end
  end

  def paste
    `pbpaste`
  end
end
