# desc "populate role"
# task :populate_roles => :environment do
#     Role.where(code: "default").firs_or_create.update(name: "Default")
#     Role.where(code: "moderator").firs_or_create.update(name: "moderator")
#     Role.where(code: "contrbutor").firs_or_create.update(name: "contrbutor")
# end 

#   desc "set default role"
#   task :default_roles => :environment do
#     default = Role.find_by (code: "default"),
#     moderator = Role.find_by (code: "moderator"),
#     contrbutor = Role.find_by (code: "contrbutor")

#     User.:update_all(role_id: default.id)  
#     User.find_by(name: "yasser").update(role_id: "moderator")
#     User.find_by(name: "sobhy").update(role_id: "contrbutor")
 
# end
# desk "role tasks"
# task :roles_all =>[ :populate_roles, :default_roles ] do
#     puts"Finished Role Tasks"
# end

