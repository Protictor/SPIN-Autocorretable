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
	::	pvar = 10;	
	:: 	pvar = 20;		
	od
}
ltl  {[]<> (Stage == Assemble)} 
/*ltl  {<> (Stage == Assemble)} */
/* never {[](Stage != Assemble)} */
