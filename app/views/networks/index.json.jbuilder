json.array!(@networks) do |network|
  json.extract! network, :id, :name, :kind, :ip, :sn, :expire, :position, :remark
  json.url network_url(network, format: :json)
end
