# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  emoticon_lib = YAML.load_file(file_path)
  emoticon_hash = { "get_meaning" => {}, "get_emoticon" => {}}
  emoticon_lib.each { |meaning, value|
    emoticon_hash["get_emoticon"][value.first] = value.last
    emoticon_hash["get_meaning"][value.last] = meaning
  }
  emoticon_hash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  emoticon_lib = load_library(file_path)
end

def get_english_meaning
  # code goes here
end