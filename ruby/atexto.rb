def adjust_text(cads,num)

	nc = cads.length

	if num > nc
		cads[nc..num] = " " * (num-nc)
        at = cads[0...num]
        return at

    elsif num < nc
    	if num == 0
    		at = ""
            return at
    	else	
    		at = cads[0...num]
            return at
    	end
	end

    puts at
	
end

adjust_text("", 3)
adjust_text("Hola", 0)
adjust_text("Hola", 10)


# puts cads.ljust(num)
