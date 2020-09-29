# require modules here
require "yaml"
require "pry"

def load_library(file)
  emoti_hash = {}
  
  emoticons = YAML.load_file(file)
  emoticons.map do |key, value|
    emoti_hash[key] = {
      :english => value[0],
      :japanese => value[1]
    }
  end
  emoti_hash
end

def get_japanese_emoticon(file, emoticon)
<<<<<<< HEAD
  library = load_library(file)

 current_emoti = library.find do |key, value| 
      library[key][:english] == emoticon
  end
  if current_emoti == NIL
    return "Sorry, that emoticon was not found"
  end
  current_emoti[1][:japanese]
=======
  meaning_hash = {}
  
  load_library(file)
  meaning.each do |emoticon, value|
    
    meaning_hash[emoticon] = {
      :english => value[0]
    }
  end
  meaning_hash
>>>>>>> 8952744cba132ca707f33d2c62f924022066c09e
end

def get_english_meaning(file, emoticon)
 library = load_library(file)

 current_emoti = library.find do |key, value| 
      library[key][:japanese] == emoticon
  end
  if current_emoti == NIL
    return "Sorry, that emoticon was not found"
  end
  # binding.pry
  current_emoti[0]
end