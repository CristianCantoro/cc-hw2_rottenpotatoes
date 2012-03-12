module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end
  
  def highlighted(tag_id)
    if params[:order] == tag_id
      return 'hilite'
    else
      return ''
    end
  end
end
