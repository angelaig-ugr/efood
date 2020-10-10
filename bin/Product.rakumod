use v6.d;
unit module Product;

class Product {


	has Str $.name;
	has Str $.category ;
	has Str @!allergens ;
	has @!supermarkets;
	has @!prices ;
	has Str $.barcode ;
	
	


	submethod BUILD( :$name, :$category, :@allergens ,:@supermarkets, :@prices , :$barcode ) {
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

import Product ;

my $product = Product.new(:name('alpro yogurt'),:category('food'),:allergens(['soy']), :supermarkets(['Mercadona','hipercor','supersol']),:prices(['2','1.7']),:barcode('1239483232'));

my @allergens  = $product.gallergens ;
my @supermarkets = $product.gsupermarkets ;
my @prices = $product.gprices ;

say $product.name ;
say $product.category ;
say $product.barcode ;

for @supermarkets { .say }
@supermarkets.map: *.say;

