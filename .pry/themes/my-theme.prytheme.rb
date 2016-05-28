t = PryTheme.create :name => 'my-theme' do
  author :name => 'oshima'
  description 'my theme'

  # How the flip do I edit this?!
  # Help is there: https://github.com/kyrylo/pry-theme/wiki/Creating-a-New-Theme
  define_theme do
    class_ 'olive'
    class_variable 'dark_salmon'
    comment 'gray01'
    constant 'olive'
    error 'maroon'
    float 'violet_eggplant'
    global_variable 'dark_salmon'
    inline_delimiter 'dark_salmon'
    instance_variable 'dark_salmon'
    integer 'navy_blue'
    keyword 'violet_eggplant'
    method 'navy_blue'
    predefined_constant 'dark_salmon'
    symbol 'teal'

    regexp do
      self_ 'toad_in_love'
      char 'violet_eggplant'
      content 'toad_in_love'
      delimiter 'toad_in_love'
      modifier 'violet_eggplant'
      escape 'violet_eggplant'
    end

    shell do
      self_ 'toad_in_love'
      char 'violet_eggplant'
      content 'toad_in_love'
      delimiter 'toad_in_love'
      escape 'violet_eggplant'
    end

    string do
      self_ 'toad_in_love'
      char 'violet_eggplant'
      content 'toad_in_love'
      delimiter 'toad_in_love'
      escape 'violet_eggplant'
    end
  end
end

PryTheme::ThemeList.add_theme(t)
