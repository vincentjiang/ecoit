json.array!(@softwares) do |software|
  json.extract! software, :id, :name, :kind, :sn, :expire, :remark
  json.url software_url(software, format: :json)
end
