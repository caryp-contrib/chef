#
# Author:: Michael Leinartas (<mleinartas@gmail.com>)
# Copyright:: Copyright (c) 2010 Michael Leinartas
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

class Chef
  class Resource
    class Ohai < Chef::Resource
      
      def initialize(name, run_context=nil)
        super
        @resource_name = :ohai
        @allowed_actions.push(:reload)
        @action = :reload
        @plugin = nil
      end

      def plugin(arg=nil)
        set_or_return(
          :plugin,
          arg,
          :kind_of => [ String ]
        )
      end
    end
  end
end
