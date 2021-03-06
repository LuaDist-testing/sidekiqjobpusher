return describe('KeyGenerator', function()
  local gen
  before_each(function()
    local KeyGenerator = require('sidekiqjobpusher.key_generator')
    gen = KeyGenerator()
  end)
  it("can genertate a key", function()
    local key = gen.generate('my_queue')
    return assert.are.equal(key, 'queue:my_queue')
  end)
  return it("can genertate a namespaced key", function()
    local key = gen.generate('my_queue', 'my_namespace')
    return assert.are.equal(key, 'my_namespace:queue:my_queue')
  end)
end)
