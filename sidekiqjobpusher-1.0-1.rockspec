-- This file was automatically generated for the LuaDist project.

package = "sidekiqjobpusher"
version = "1.0-1"
-- LuaDist source
source = {
  tag = "1.0-1",
  url = "git://github.com/LuaDist-testing/sidekiqjobpusher.git"
}
-- Original source
-- source = {
--    url = "git://github.com/tomdmaguire/sidekiqjobpusher",
--    tag = "v1.0"
-- }
description = {
   summary = "Sidekiq API",
   detailed = [[
      Write Sidekiq jobs directly into redis
   ]],
   homepage = "https://github.com/tomdmaguire/sidekiqjobpusher",
   license = "MIT/X11"
}
dependencies = {
   "lua ~> 5.1",
   "lua-cjson"
}
build = {
   type = "builtin",
   modules = {
      ['sidekiqjobpusher.client'] = "lib/sidekiqjobpusher/client.lua",
      ['sidekiqjobpusher.key_generator'] = "lib/sidekiqjobpusher/key_generator.lua",
      ['sidekiqjobpusher.message_serialiser'] = "lib/sidekiqjobpusher/message_serialiser.lua"
   }
}