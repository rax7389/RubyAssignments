

# AllProductsData
class ProductData
  @@product_data = [
    { name: 'bicycle', seller: 'alex', price: 3_000, category: 'vehicle' },
    { name: 'car', seller: 'meena', price: 2_500_00, category: 'vehicle' },
    { name: 'jeans', seller: 'prabhu', price: 1_800, category: 'clothes' },
    { name: 'shirt', seller: 'prabhu', price: 700, category: 'clothes' },
    { name: 'blue shirt', seller: 'prabhu', price: 1_200, category: 'clothes' },
    { name: 't-shirt', seller: 'prabhu', price: 600, category: 'clothes' },
    { name: 'capri', seller: 'prabhu', price: 300, category: 'clothes' },
    { name: 'bike', seller: 'meena', price: 6_000_0, category: 'vehicle' },
    { name: 'scooter', seller: 'meena', price: 2_500_0, category: 'vehicle' },
    { name: 'maruti', seller: 'meena', price: 4_000_00, category: 'vehicle' },
    { name: 'auto', seller: 'meena', price: 1_000_00, category: 'vehicle' },
    { name: 'sweter', seller: 'prabhu', price: 1_200, category: 'clothes' },
    { name: 'jacket', seller: 'prabhu', price: 3_500, category: 'clothes' },
    { name: 'hat', seller: 'prabhu', price: 400, category: 'clothes' },
    { name: 'doll', seller: 'alex', price: 350, category: 'toys' },
    { name: 'toy car', seller: 'alex', price: 250, category: 'toys' },
    { name: 'bat', seller: 'alex', price: 700, category: 'toys' },
    { name: 'ball', seller: 'alex', price: 20, category: 'toys' },
    { name: 'batman', seller: 'alex', price: 300, category: 'toys' },
    { name: 'barbi doll', seller: 'alex', price: 3_000, category: 'toys' }
  ] # inputlist of product data
  def allpro_data
    @@product_data
  end
end
