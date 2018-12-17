 require 'mechanize'
  agent = Mechanize.new
  # page = agent.get('https://app-mooovi.herokuapp.com/works/initial_scraping')
  # elements = page.search('p')

  # elements.each do |ele|
  #   puts ele.inner_text
  # end

  # page = agent.get('https://app-mooovi.herokuapp.com/works/first_scraping')
  # elements = page.search('body ul li')
  # puts elements.inner_text

  # page = agent.get('https://app-mooovi.herokuapp.com/works/second_scraping')
  # elements = page.search('body div div')
  # puts elements.inner_text

  page = agent.get('https://app-mooovi.herokuapp.com/works/third_scraping')
  elements = page.search('.etc div')
  elements.each do |ele|
    puts ele.inner_text
  end