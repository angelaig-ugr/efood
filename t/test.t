

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
    plan 12;
    my $product = Product.new();
    
    #Test default value is correct
    is($product.name, "empty", "default name attribute");
    is($product.category, "empty", "default category attribute");	
    is($product.allergens, "<empty>", "default allergens attribute");	
    is($product.supermarkets, "<empty>", "default supermarkets attribute");	
    is($product.prices, "<empty>", "default prices attribute");	
    is($product.barcode, "empty", "default barcode attribute");	

    #Test the set methods work well 

    $product.set-name("NAME-CHANGED") ;
    is($product.name, "NAME-CHANGED", "name attribute changed");

    $product.set-category("CATEGORY-CHANGED") ;
    is($product.category, "CATEGORY-CHANGED", "category attribute changed");

    $product.set-allergens(["ALLERGENS1-CHANGED","ALLERGENS2-CHANGED"]) ;
    is($product.allergens,[ "ALLERGENS1-CHANGED","ALLERGENS2-CHANGED"], "allergens attribute changed");

 
    $product.set-supermarkets(["SUPERMARKETS1-CHANGED","SUPERMARKETS2-CHANGED"]) ;
    is($product.supermarkets, ["SUPERMARKETS1-CHANGED","SUPERMARKETS2-CHANGED"], "supermarkets attribute changed");

    $product.set-prices(["PRICES1-CHANGED","PRICES2-CHANGED"]) ;
    is($product.prices, ["PRICES1-CHANGED","PRICES2-CHANGED"], "prices attribute changed");

    $product.set-barcode("BARCODE-CHANGED") ;
    is($product.barcode, "BARCODE-CHANGED", "barcode attribute changed");
	

   

}, "Attribute setting";

# .... tests 

pass ;
done-testing;  # optional with 'plan' 




