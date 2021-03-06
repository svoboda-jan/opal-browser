require 'browser/http/binary'
require 'browser/http/headers'
require 'browser/http/request'
require 'browser/http/response'

require 'browser/http/compatibility'

module Browser

module HTTP
  # Send an asynchronous request.
  #
  # @param method [Symbol] the HTTP method to use
  # @param url [String] the URL to request
  # @param data [String, Hash] the data to send
  # @return [Response] the response
  def self.send(method, url, data = nil, &block)
    Request.new(&block).open(method, url).send(data)
  end

  # Send an asynchronous GET request.
  #
  # @param url [String] the URL to request
  # @return [Response] the response
  def self.get(url, &block)
    send(:get, url, &block)
  end

  # Send an asynchronous HEAD request.
  #
  # @param url [String] the URL to request
  # @return [Response] the response
  def self.head(url, &block)
    send(:head, url, &block)
  end

  # Send an asynchrnous POST request.
  #
  # @param url [String] the URL to request
  # @param data [String, Hash] the data to send
  # @return [Response] the response
  def self.post(url, data = nil, &block)
    send(:post, url, data, &block)
  end

  # Send an asynchronous PUT request.
  #
  # @param url [String] the URL to request
  # @param data [String, Hash] the data to send
  # @return [Response] the response
  def self.put(url, data = nil, &block)
    send(:put, url, data, &block)
  end

  # Send an asynchronous DELETE request.
  #
  # @param url [String] the URL to request
  # @param data [String, Hash] the data to send
  # @return [Response] the response
  def self.delete(url, data = nil, &block)
    send(:delete, url, data, &block)
  end

  # Send a synchronous request.
  #
  # @param method [Symbol] the HTTP method to use
  # @param url [String] the URL to request
  # @param data [String, Hash] the data to send
  # @return [Response] the response
  def self.send!(method, url, data = nil, &block)
    Request.new(&block).open(method, url, false).send(data)
  end

  # Send a synchronous GET request.
  #
  # @param url [String] the URL to request
  # @return [Response] the response
  def self.get!(url, &block)
    send!(:get, url, &block)
  end

  # Send a synchronous HEAD request.
  #
  # @param url [String] the URL to request
  # @return [Response] the response
  def self.head!(url, &block)
    send!(:head, url, &block)
  end

  # Send a synchronous POST request.
  #
  # @param url [String] the URL to request
  # @param data [String, Hash] the data to send
  # @return [Response] the response
  def self.post!(url, data = nil, &block)
    send!(:post, url, data, &block)
  end

  # Send a synchronous PUT request.
  #
  # @param url [String] the URL to request
  # @param data [String, Hash] the data to send
  # @return [Response] the response
  def self.put!(url, data = nil, &block)
    send!(:put, url, data, &block)
  end

  # Send a synchronous DELETE request.
  #
  # @param url [String] the URL to request
  # @param data [String, Hash] the data to send
  # @return [Response] the response
  def self.delete!(url, data = nil, &block)
    send!(:delete, url, data, &block)
  end
end

end
