mtype = {Order, Cut, Assemble, Paint, Deliver}
mtype Stage;
int gvar = 0;

init 
{
	int ivar1 = 1;
	run TM();	 
	int ivar2 = 2;
}


proctype TM()
{
	int pvar = 3;
	Stage = Order;
	do
	::	Stage = Cut;
		if 
		:: Stage = Assemble;
		:: Stage = Paint;
/*		:: if :: (Stage != Cut) -> Stage = Paint; fi*/
		fi;
		
		if :: (Stage == Assemble) -> Stage = Paint 
			:: else -> pvar = 8;
		fi
		
		Stage = Deliver;
		Stage = Order;

	::	Stage = Paint;
		pvar = 2;

	::	Stage = Deliver;
		pvar = 3;
		pvar = 4;
	:: else->
		pvar = 3;
		pvar = 3;
		pvar = 3;
		

		
	od
}
ltl  {[]<> (Stage == Assemble)} 
/*ltl  {<> (Stage == Assemble)} */
/* never {[](Stage != Assemble)} */
