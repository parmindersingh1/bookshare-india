require 'rubygems'
require 'httparty'
require 'json'
 
class BookshareApi
  include HTTParty
  base_uri 'api.bookshare.org'
  default_params :api_key => 'xew4s5nagrhf5g6rh8jh2x4j'
  format :json
 

  def self.isbn_lookup(query)
     get("/book/isbn/#{query}/format/json")
  end
  
  
  def self.book_id(query)
     get("/book/id/#{query}/format/json")
 end
  
  
  def self.full_text_search(query,limit)
     get("/book/searchFTS/#{query}/page/1/limit/#{limit}/format/json" )
  end

  
  def self.title_search(query,limit)
      get("/book/search/title/#{query}/page/1/limit/#{limit}/format/json" )
  end
     
    
  def self.author_search(query,limit)
      get("/book/search/author/#{query}/page/1/limit/#{limit}/format/json" )
  end
 
 def self.titleauthor_search(query,limit)
    get("/book/search/#{query}/page/1/limit/#{limit}/format/json" )
 end
 
 def self.datepublished_search(query,limit)
     get("/book/search/since/#{query}/page/1/limit/#{limit}/format/json" )
 end
 
 def self.latest_browsed(query,limit)
   get("/book/latest/page/#{query}/page/1/limit/#{limit}/format/json")
 end
 
 def self.popular_browsed(query,limit)
   get("/book/popular/page/#{query}/page/1/limit/#{limit}/format/json")
 end
 
 def self.category_list(query,limit)
   get("/book/reference/category/list/#{query}/page/1/limit/#{limit}/format/json")
 end

 def self.category_search(query,limit)
    get("/book/search/category/#{query}/page/1/limit/#{limit}/format/json")
 end

def self.grade_list(query,limit)
   get("/reference/grade/list/#{query}/page/1/limit/#{limit}/format/json")
end
 
 def self.grade_search(query,limit)
   get("/book/search/grade/#{query}/page/1/limit/#{limit}/format/json")
 end
 
 def self.combinemultiple_search(query,limit)
   get("/book/search/grade/#{query}/page/1/limit/#{limit}/format/json")
 end
end