use v6.d;
use efood::Product  ;

## raku -Ilib bin/main.rakumod

# Create a product object

my $product = Product.new(:name('alpro yogurt'),:category('food'),:allergens(['soy']), :supermarkets(['Mercadona','hipercor','supersol']),:prices(['2','1.7']),:barcode('1239483232'));



my @allergens  = $product.allergens ;
my @supermarkets = $product.supermarkets ;
my @prices = $product.prices ;

say $product.name ;
say $product.category ;
say $product.barcode ;

@prices.map: *.say;
for @supermarkets { .say }


