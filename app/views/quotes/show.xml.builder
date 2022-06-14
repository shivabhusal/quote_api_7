xml.instruct!
xml.quote do
  xml.id @quote.id
  xml.title @quote.title
  xml.author @quote.author
  xml.url quote_url(@quote, format: :xml)
end
