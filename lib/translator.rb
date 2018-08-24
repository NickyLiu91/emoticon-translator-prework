# require modules here
require "yaml"

def load_library(file)
  list = YAML.load_file(file)
end

def get_japanese_emoticon(file, emoticon)
  # code goes here
  list = load_library(file)
  list.each do |hash, array|
    if array.include?(emoticon)
      return array[1]
    end
  end
end

def get_english_meaning(file, emoticon)
  # code goes here
  list = load_library(file)
  list.each do |hash, array|
    if array.include?(emoticon)
      return hash
    end
  end
end
