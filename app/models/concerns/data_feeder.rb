module DataFeeder
  SEPARATOR_REGEX = /[-―”"“]/

  def separator_pos(str)
    (str.length - 1).downto(0) do |i|
      if (str[i] =~ SEPARATOR_REGEX)
        return i
      end
    end
  end

  def title_author(title)
    position = separator_pos(title)
    [title[0...position], title[position + 1..-1]].map { |x| x.gsub(/[-―—”"“~]/, '').strip }
  end

  def work
    records = CSV.foreach(Rails.root.join('db/quotes.csv')).map.with_index do |row, i|
      next if i == 0
      title, author = title_author(row[0])
      {
        title: title, author: author.presence || 'Unknown'
      }
    end
    Quote.upsert_all(records[1..-1])
  end

  module_function :work, :title_author, :separator_pos
end
