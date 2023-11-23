module Pavo
  class OrderDetailsResource < Resource
    def retrieve(order_number:)
      OrderDetails.new get_request("order/#{order_number}").body.dig("order")
    end
  end
end
