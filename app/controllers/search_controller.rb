class SearchController < ApplicationController
  def search

  	
  	
  	@servers = Server.find_by_sql(sql("servers"))
  	@networks = Network.find_by_sql(sql("networks"))
  	@systems = System.find_by_sql(sql("systems"))
  	@softwares = Software.find_by_sql(sql("softwares"))

  	@model_name = "搜索结果"
  	@resources = @servers + @networks + @systems + @softwares
  	@resources.sort! {|x,y| x.name <=> y.name}
  	
  end

  private
	  def sql(table)
	  	kw = params[:kw]
	  	sql = "select * from #{table} where name like" + "'" + "%#{kw}%" + "'"
	  end
end
