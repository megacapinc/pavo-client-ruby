module Pavo
  class Collection
    attr_reader :data, :limit, :offset, :total

    def self.from_response(response, key:, type:)
      body = response.body
      new(
        data: body[key].map { |attrs| type.new(attrs) },
        limit: body.dig("limit"),
        offset: body.dig("offset"),
        total: body.dig("total"),
      )
    end

    def initialize(data:, limit:, offset:, total:)
      @data = data
      @limit = limit
      @offset = offset
      @total = total
    end
  end
end
