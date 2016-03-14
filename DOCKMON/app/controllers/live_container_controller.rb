# Licensed by GPL/GNU 2016 DOCKMON version 0.1 
# This File is considered as Main Controller of the Application
# Developed By: Nikit Swaraj DevOps Foradian Tech. 2016

class LiveContainerController < ApplicationController
  def index
  end

  def read_container_file
  @netdetail = Netdetail.all
  end
 
  def documentation
  end

  def show_details
   @netdetails = Netdetail.find_by(:Cont_name => params[:Cont_name])
   respond_to do |format|
   format.js {}
  end
  end

  def terminal_action
   @netdetails = Netdetail.find_by(:Cont_name => params[:Cont_name])
   `xterm -geometry 120*24+400+1500 -T DOCKMON -e docker stats nikit`
  
  end


end
