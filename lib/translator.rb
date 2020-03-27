# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  emoticon_lib = YAML.load_file(file_path)
  emoticon_hash = { "get_meaning" => {}, "get_emoticon" => {}}
  emoticon_lib.each { |meaning, value|
    english = value.first
    japanese = value.last
    emoticon_hash["get_emoticon"][english] = japanese
    emoticon_hash["get_meaning"][japanese] = meaning
  }
  emoticon_hash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  emoticon_hash = load_library(file_path)
  # resul = emoticon_hash["get_emoticon"][english]
  # if japanese == nil
  #   return "Sorry, that emoticon was not found"
  # end
end

def get_english_meaning
  # code goes here
end