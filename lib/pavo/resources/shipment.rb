module Pavo
  class ShipmentResource < Resource
    def list(**params)
      Collection.from_response get_request("shipments", params: params), key: "shipments", type: Shipment
    end
  end
end
