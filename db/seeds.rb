require 'csv'

CSV.foreach(Rails.root.join('lib', 'seeds', 'example.csv'), :headers=> true, encoding: 'EUC-KR') do |row|
    Question.create({
        year: row['year'],
        month: row['month'],
        institute: row['institute'],
        suneng_type: row['type'],
        number: row['number'],
        difficulty: row['difficulty'],
        price: row['price'],
        answer: row['answer'],
        prize: row['prize']
    })
    
    # puts "#{row['year']}#{row['month']} #{row['institute']} #{row['type']}형 saved"
end