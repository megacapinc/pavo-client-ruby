# frozen_string_literal: true

require_relative "pavo/version"

module Pavo
  autoload :Client, "pavo/client"
  autoload :Error, "pavo/error"
  autoload :Object, "pavo/object"
  autoload :Resource, "pavo/resource"
  autoload :Collection, "pavo/collection"

  autoload :Product, "pavo/objects/product"
  autoload :CompanyInformation, "pavo/objects/company_information"
  autoload :Variant, "pavo/objects/variant"
  autoload :Color, "pavo/objects/color"
  autoload :Customer, "pavo/objects/customer"
  autoload :Order, "pavo/objects/order"
  autoload :OrderDetails, "pavo/objects/order_details"
  autoload :Invoice, "pavo/objects/invoice"
  autoload :InvoiceDetails, "pavo/objects/invoice_details"
  autoload :Shipment, "pavo/objects/shipment"
  autoload :Transaction, "pavo/objects/transaction"

  autoload :ProductResource, "pavo/resources/product"
  autoload :CompanyInformationResource, "pavo/resources/company_information"
  autoload :VariantResource, "pavo/resources/variant"
  autoload :ColorResource, "pavo/resources/color"
  autoload :CustomerResource, "pavo/resources/customer"
  autoload :OrderResource, "pavo/resources/order"
  autoload :OrderDetailsResource, "pavo/resources/order_details"
  autoload :InvoiceResource, "pavo/resources/invoice"
  autoload :InvoiceDetailsResource, "pavo/resources/invoice_details"
  autoload :ShipmentResource, "pavo/resources/shipment"
  autoload :TransactionResource, "pavo/resources/transaction"
end
