module Pavo
  class TransactionResource < Resource
    def list(**params)
      Collection.from_response get_request("transactions", params: params), key: "transactions", type: Transaction
    end
  end
end
