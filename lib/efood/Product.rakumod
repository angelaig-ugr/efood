use v6.d;

unit module efood::Product ;

class Product is export {


	has Str $.name;
	has Str $.category ;
	has Str @.allergens ;
	has @.supermarkets;
	has @.prices ;
	has Str $barcode ;
	
	


	submethod BUILD( :$name = "empty", :$category="empty", :@allergens= ['<empty>'] ,:@supermarkets=['<empty>'], :@prices=['<empty>'] , :$barcode="empty") {
		$!name = $name;
		$!category = $category;
		@!allergens = @allergens;
		@!supermarkets = @supermarkets ;
		@!prices= @prices ;
		$!barcode =$barcode
  	  }

	

	method gallergens {
		return @!allergens.pick;
		
		
	}	


	method gsupermarkets {
		return @!supermarkets.pick;
		
		
	}
	method gnsupermarkets {
		return @!supermarkets.elems;
		
		
	}
	method gprices {
		return @!prices.pick;
		
		
	}


	
}

