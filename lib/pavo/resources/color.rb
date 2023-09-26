module Pavo
  class ColorResource < Resource
    def list(**params)
      Collection.from_response get_request("colors", params: params), key: "colors", type: Color
    end
  end
end
