def adjust_text(cads="",num)

	nc = cads.length

	if num > nc
		cads[nc..num] = " " * (num-nc)
        puts cads[0...num]

    elsif num < nc
    	if num == 0
    		puts ""
    	else	
    		puts cads[0...num]
    	end
	end
	
end

adjust_text("", 3)
adjust_text("Hola", 0)
adjust_text("Hola", 10)


# puts cads.ljust(num)
