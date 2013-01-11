def full_title(page_title)
  base_title = "Aplicatie de gestiune - Ruby on Rails"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end