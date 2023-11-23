module Pavo
  class OrderResource < Resource
    def list(**params)
      Collection.from_response get_request("orders", params: params), key: "orders", type: Order
    end
  end
end
