mtype = {red, yellow, green};
mtype light= yellow;
ltl p0 {[]<> (light==green)}

init {
	run lights();
}

proctype lights()
{
	do
	:: if
	   :: light==green -> 
	   				light=yellow;
	   :: light == red -> 
	   				light = red;

	   :: else -> 
	   				light = red;
	   fi;
	  
	   printf("The light is now %e\n",light);
	od

}
