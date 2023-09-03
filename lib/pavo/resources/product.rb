module Pavo
  class ProductResource < Resource
    def list(**params)
      Collection.from_response get_request("products", params: params), key: "products", type: Product
    end
  end
end
