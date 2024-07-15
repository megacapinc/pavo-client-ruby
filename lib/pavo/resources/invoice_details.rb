module Pavo
  class InvoiceDetailsResource < Resource
    def retrieve(invoice_number:)
      InvoiceDetails.new get_request("invoice/#{invoice_number}").body.dig("invoice")
    end
  end
end
