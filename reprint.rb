class ConsoleLine
  def initialize(out=STDOUT,linesize = 80) #pass -1 to never cut off lines.
    @linesize = linesize
    @out = out
    @last_length = 0
  end
  
  def reprint(str)
    str = str.to_s
    raise ArgumentError, "Not given a string" unless str.class == String
    str = str[0...@linesize] #chop the string down to size
    if str.length < @last_length
      left = @last_length - str.length
      #the number of characters 'left over' after printing the new string over the old
      @out.write( "\b"*left+" "*left )
    end
    @out.write "\b"*@last_length
    @out.write str
    @last_length = str.length
  end
end
