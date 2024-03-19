module Pavo
  class OrderResource < Resource
    def list(**params)
      Collection.from_response get_request("orders", params: params), key: "orders", type: Order
    end

    def create(**attributes)
      Order.new post_request("order", body: attributes).body.dig("order")
    end
  end
end
