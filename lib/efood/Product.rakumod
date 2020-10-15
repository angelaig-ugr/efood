use v6.d;

unit module efood::Product ;

class Product is export {

	# with "." although private, accessor method created 

	has Str $.name;
	has Str $.category ;
	has Str @.allergens ;
	has @.supermarkets;
	has @.prices ;
	has Str $.barcode ;
	
	


	submethod BUILD( :$name = "empty", :$category="empty", :@allergens= ['<empty>'] ,:@supermarkets=['<empty>'], :@prices=['<empty>'] , :$barcode="empty") {
		$!name = $name;
		$!category = $category;
		@!allergens = @allergens;
		@!supermarkets = @supermarkets ;
		@!prices= @prices ;
		$!barcode =$barcode
  	  }

	

	method get-allergens {
		return @!allergens.pick;
		
		
	}	


	method get-supermarkets {
		return @!supermarkets.pick;
		
		
	}
	method get-nsupermarkets {
		return @!supermarkets.elems;
		
		
	}
	method get-prices {
		return @!prices.pick;
		
		
	}
	

	#Set methods ------------------------------


	method set-name ($name ) {

		$!name = $name;

	}

	method set-category ($category ) {

		$!category = $category;

	}
	method set-allergens (@allergens ) {

		@!allergens = @allergens;

	}
	method set-supermarkets (@supermarkets ) {

		@!supermarkets = @supermarkets;

	}
	method set-prices (@prices ) {

		@!prices = @prices;

	}
	
	method set-barcode ($barcode ) {

		$!barcode = $barcode;

	}
	
	



	
}

