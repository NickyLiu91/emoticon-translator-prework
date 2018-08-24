# require modules here
require "yaml"

def load_library(file)
  new_hash = {}
  new_hash["get_meaning"] = {}
  new_hash["get_emoticon"] = {}
  # list = YAML.load_file(file)
  # list.each do |hash, array|
  #   new_hash["get_meaning"][array[0]] = hash
  #   new_hash["get_emoticon"][array[1]] = array[0]
  # end
end

def get_japanese_emoticon(file, emoticon)
  # code goes here
  list = load_library(file)
  list.each do |hash, array|
    if array.include?(emoticon)
      return array[1]
    end
  end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(file, emoticon)
  # code goes here
  list = load_library(file)
  list.each do |hash, array|
    if array.include?(emoticon)
      return hash
    end
  end
  return "Sorry, that emoticon was not found"
end
