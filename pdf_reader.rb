
#!/usr/bin/ruby

require 'pdf/reader'

def read_pdf(file_path)
  readable_text = ""

  File.open(file_path, "rb") do |file|
    reader = PDF::Reader.new(file)

    reader.pages.each do |page|
      # Check if the page has extractable text
      next unless page.text

      # Extract text from the page
      page_text = page.text.strip

      # Skip non-readable parts (e.g., empty pages)
      next if page_text.empty?

      # Append the readable text from the page to the overall readable_text variable
      readable_text += page_text + "\n"
    end
  end

  return readable_text
end

# Provide the path to the PDF file you want to read
pdf_file_path = "/home/ismail/Downloads/book.pdf"

# Call the read_pdf method with the file path
result = read_pdf(pdf_file_path)

# Output the readable text
puts result


