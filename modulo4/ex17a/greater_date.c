unsigned int greater_date(unsigned int date1, unsigned int date2){

	short year = (short)(date1 >> 8);			
	short year1 = (short)(date2 >> 8);			

	if (year > year1) return date1;			// returns the greater year
	if (year1 > year) return date2;
	
	char month = (char)(date1 >> 24);			
	char month1 = (char)(date2 >> 24);			
	
	if (month > month1) return date1;			// returns the greater month
	if (month1 > month) return date2;			
	
	char day = (char)date1;				   	
	char day1 = (char)date2;				  	
	
	if (day > day1) return date1;				// returns the greater day
	if (day1 > day) return date2;
	
												// first checks year, then month, then day in order to retreive the greater date
	
	return date1;
}
