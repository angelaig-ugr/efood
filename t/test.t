

use Test;      # a Standard module included with Rakudo 
use lib 'lib';




#plan $num-tests;


#Marks a test as passed if the given $module loads correctly.
use-ok("efood::Product");
use efood::Product  ;

subtest {
	plan 2 ;
	#Evaluate empty instantiation
	ok(Product.new(),"A Product object can be instantiated" ) ;


	#Fill with values
	my $product = Product.new(
			name => "alpro yogur",
			:category('food'),
			:allergens(['soy']), 
			:supermarkets('Mercadona','hipercor','supersol'),
			:prices(['2','1.7']),
			:barcode('1239483232'));

	ok($product, "Instantiation setting all attributes");

},"Product object instantiation";

subtest {
    plan 1;

    my $product = Product.new();
    #$product.name = "NAME";
    is($product.name, "empty", "name attribute set");

   

}, "Attribute setting";

# .... tests 

pass ;
done-testing;  # optional with 'plan' 




