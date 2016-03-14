class CreateNetdetails < ActiveRecord::Migration
  def change
    create_table :netdetails, id: false do |t|

	    t.string :ImageID
        t.string :ImageNO
        t.integer :State_Pid
        t.date  :DATE
        t.string :Cont_name
        t.string :command
        t.string :os
        t.string :Status
        t.string :Memory
        t.string :Swap_mem
        t.string :Kernel_mem
        t.string :CPU_core
        t.string :CPU_Qouta
        t.string :IPv4
        t.string :Gateway
        t.string :MacADD
    end
     execute "ALTER TABLE netdetails ADD PRIMARY KEY (Cont_name);"
  end
end
