class Image
    attr_accessor :image

  def initialize(image)
      @image = image 
  end 

  def output_image
    @image.each do |row| 
      # loop the arrays and displays them in rows
      puts row.join 
    end 
  end 
  
  def find_ones
    # this locates and stores all ones 
    blur = []
    @rows.each_with_index do |row, row_index|
      row.each_with_index do |cell, column_index|
        if cell ==1
          blur << [row_index,column_index]
        end 
      end 
    end 
  end 


  def blur_image! 
    blur_image.each do |blur|
      @image[blur[0]][blur[1]+1] = 1 if blur [1] + 1 <= @image[blur[0]].length - 1
      @image[blur[0]][blur[1]-1]= 1 if blur[1] - 1 >= 0 
      @image[blur[0] + 1][blur[1]] = 1 if blur [0] + 1 <= image.length -1 
      @image[blur[0]-1][blur[1]]= 1 if blur [0] - 1 >= 0 

   end 
  end 

end 


  


     row1 = [0,0,0,0]
     row2 = [0,1,0,0]
     row3 = [0,0,0,1]
     row4 = [0,0,0,0]
    
   image = Image.new([row1,row2,row3,row4])

#image.output_image

#puts 
image.blur_image!


