json.extract! quiz, :id, :question, :optiona, :optionb, :optionc, :optiond, :correct, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
