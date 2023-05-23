#!/usr/bin/ruby



require 'pdf/reader'
require 'google/cloud/text_to_speech'

def convert_pdf_to_audio(file_path, output_file)
  reader = PDF::Reader.new(file_path)

  # Extract text from the PDF
  text = ""
  reader.pages.each do |page|
    text += page.text
  end

  # Create a Text-to-Speech client
  client = Google::Cloud::TextToSpeech.text_to_speech

  # Set the text input
  synthesis_input = { text: text }

  # Set the voice parameters
  voice = {
    language_code: "en-US",
    ssml_gender:   "FEMALE"
  }

  # Set the audio output
  audio_config = {
    audio_encoding: "MP3"
  }

  # Perform the text-to-speech conversion
  response = client.synthesize_speech(
    input:         synthesis_input,
    voice:         voice,
    audio_config:  audio_config
  )

  # Save the audio to a file
  File.open(output_file, "wb") do |file|
    file.write(response.audio_content)
  end

  puts "PDF converted to audio successfully!"
end

# Provide the path to the PDF file you want to convert
pdf_file_path = "/home/ismail/Downloads/book_11.pdf"

# Provide the output file path for the audio (MP3) file
output_file_path = "/home/ismail/Downloads/output.mp3"

# Convert PDF to audio
convert_pdf_to_audio(pdf_file_path, output_file_path)
