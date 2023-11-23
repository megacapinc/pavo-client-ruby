# Pavo API Rubygem

Rubygem for [Pavo API](https://developers.omspavo.com/) integration.

## Installation

Add this line to your application's Gemfile:

    gem 'pavo', github: "megacapinc/pavo-client-ruby"

And then execute:

    $ bundle

## Usage

To access the API, you'll need to create a `Pavo::Client` and pass in your API key.

```ruby
client = Pavo::Client.new(api_key: ENV["PAVO_API_KEY"])
```

The client then gives you access to each of the resources.

## Resources

The gem maps as closely as we can to the Pavo API so you can easily convert API examples to gem code. They're built using OpenStruct so you can easily access data in a Ruby-ish way.

##### Pagination

 `list` endpoints return pages of results. The result object will have a `data` key to access the results, as well as metadata like `limit`, `offset` and `total` for retrieving subsets of the collection.
 
```ruby
results = client.product.list
#=> Pavo::Collection

results.data
#=> [#<Pavo::Product>, #<Pavo::Product>]

results.total
#=> 888

results.limit  # default: 10 / max: 100
#=> 10

results.offset
#=> 0
```
 
You may also specify the value of `limit` and `offset`.

```ruby
# Retrieve the next page
client.product.list(limit: 10, offset: 10)
#=> Pavo::Collection
```

### Company Information

```ruby
client.company_information.info
```

### Products

```ruby
client.product.list
```

### Colors

```ruby
client.color.list
```

### Variants

```ruby
client.variant.list
```

### Customers

```ruby
client.customer.list
```
