# require 'csv'

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'example.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'UTF-8')
# csv.each do |row|
#     Question.create({
#         year: row['year'],
#         month: row['month'],
#         institute: row['institute'],
#         type: row['type'],
#         number: row['number'],
#         difficulty: row['difficulty'],
#         price: row['price'],
#         answer: row['answer'],
#         prize: row['prize']
#     })
   
    
#     puts "#{year}#{month} #{institute} #{type}형 saved"
# end