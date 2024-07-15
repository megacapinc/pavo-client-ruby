module Pavo
  class InvoiceResource < Resource
    def list(**params)
      Collection.from_response get_request("invoices", params: params), key: "invoices", type: Invoice
    end
  end
end
