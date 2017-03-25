require 'csv'




DICTIONARY_PATH = Rails.root.join('vendor/data/chunat_dictionary.csv')
DICTIONARY_DATA = CSV.parse(File.read(DICTIONARY_PATH), headers: true)


DICTIONARY_DATA.each do |row|
  Dictionary.find_or_create_by(word: row['word'], definition: row['definition'])
end
