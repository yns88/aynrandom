# http://xkcd.com/1277/
# Just a simple implementation that shows results on any range of values and is interchangeable with Random.rand
# Bigger numbers are naturally more important, and thus deserve to be chosen more often.
class AynRandom
    
    def initialize()
	@atlas = Random.new
    end

    def aynrand(max=1.0)
	if (max.instance_of? Fixnum) 
	    return ((1.0 - (@atlas.rand*@atlas.rand))*max).floor 
	elsif (max.instance_of? Float) 
	    return (1.0 - (@atlas.rand*@atlas.rand))*max 
	elsif (max.instance_of? Range) 
	    range = max.end-max.begin
	    if ((max.end.instance_of? Fixnum) && (max.begin.instance_of? Fixnum))
		range += 1
	    end
	    return aynrand(range)+max.begin 
	end
    end

end