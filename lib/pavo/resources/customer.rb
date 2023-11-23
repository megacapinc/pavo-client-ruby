module Pavo
  class CustomerResource < Resource
    def list(**params)
      Collection.from_response get_request("customers", params: params), key: "customers", type: Customer
    end
  end
end
