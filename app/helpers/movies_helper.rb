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

  def other_params()
     if params[:ratings]
       ratings = params[:ratings]
       Hash[ratings.map { |k, v| ["ratings[#{k}]",v] }]
     else
       return Hash.new()
     end
  end
end
