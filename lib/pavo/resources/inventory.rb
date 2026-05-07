module Pavo
  class InventoryResource < Resource
    def list(**params)
      Collection.from_response get_request("inventory", params: params), key: "inventory", type: Inventory
    end
  end
end
