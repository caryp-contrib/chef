action :nest do
  bash :bash_nest do
    code "My egg is: #{new_resource.egg}"
  end
end
