json.array!(@servers) do |server|
  json.extract! server, :id, :name, :kind, :brand, :smodel, :ip, :ilo, :cpu, :ram, :harddisk, :os, :sn, :expire, :position, :remark
  json.url server_url(server, format: :json)
end
