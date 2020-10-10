use v6.d;
use Product ;

## raku -Ilib bin/main.rakumod

# Create a product object

my $product = Product.new(:name('alpro yogurt'),:category('food'),:allergens(['soy']), :supermarkets(['Mercadona','hipercor','supersol']),:prices(['2','1.7']),:barcode('1239483232'));



my @allergens  = $product.gallergens ;
my @supermarkets = $product.gsupermarkets ;
my @prices = $product.gprices ;

say $product.name ;
say $product.category ;
say $product.barcode ;

for @supermarkets { .say }
@supermarkets.map: *.say;

