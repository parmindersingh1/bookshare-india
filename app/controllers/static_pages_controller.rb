class StaticPagesController < ApplicationController
  require 'will_paginate/array'
   def index
    
  end
  
   def membership_overview
    puts "---------------------------"
  end
  
  def membership_options
    
  end
  
  def qualifications
    
  end
  
  def gift_memberships
    
  end
  
  
  def search_book
    puts "-----------#{params}"
    @id=params[:id]
    @response=BookshareApi.book_id(@id)
    @result = JSON.parse(@response.body)
    @book=@result["bookshare"]["book"]["metadata"]
  end
  
  def search_author
      puts "-----------#{params}"
  end

  def search_text
    puts "------#{params[:searchtxt]}"
    @search_txt=params[:searchtxt]
    @response=BookshareApi.full_text_search(@search_txt,100)
    @result = JSON.parse(@response.body)
    # puts "-----#{@result.keys}"
    @searched_result=(@result['bookshare']['book']['list']['result']).paginate(:page => params[:page],:per_page => 5)
    # respond_to do |format|
     # format.json { render :json => JSON.parse(@result) }
     # format.html { render  "search_text.html.erb"}
   # end
   
  end
end
