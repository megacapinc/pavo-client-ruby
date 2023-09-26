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

  autoload :ProductResource, "pavo/resources/product"
  autoload :CompanyInformationResource, "pavo/resources/company_information"
  autoload :VariantResource, "pavo/resources/variant"
end
