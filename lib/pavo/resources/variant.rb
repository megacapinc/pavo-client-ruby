module Pavo
  class VariantResource < Resource
    def list(**params)
      Collection.from_response get_request("product/variants", params: params), key: "variants", type: Variant
    end
  end
end
