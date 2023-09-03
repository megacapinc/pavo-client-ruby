module Pavo
  class CompanyInformationResource < Resource
    def info(**params)
      CompanyInformation.new get_request("company_information", params: params).body
    end
  end
end
