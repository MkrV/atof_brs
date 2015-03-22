REM ** BrightScript program for implementation of atof **

function atf(s$ as Char) as Float
  coef = 1 as float 
  res = 0 as float 
  
  if s = "-" then 
	Step 1
    coef = -1
  end if

 For dot_s = 0 as Integer  To s  Step 1
	  
	if s = "." then dot_s = 1
    d = s - "0" as Integer

    if d <= 9 AND d >= 0 then   	
      if dot_s then coef /= 10.0!
      res = res * 10.0! + Cdbl(d)
    end if

  end For

  return  coef * res
end function

sub Main() as Integer  
    dim str[]
 	str.push("-32.6")

    for Each stri In str
    	val = atf(stri) as Double
   		print atf(stri#) 'val#
    End For

end sub

