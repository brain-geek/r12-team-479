# Path to deploy folder is calculated based on appication name:
# "/home/#{application}/app/"

#set rails environment here
set :rails_env, "production"

#set git branch here
set :branch, "master"

#set server address here
set :domain, "codeage@198.74.58.236" # Required for ssh deploy

role :resque_worker, "codeage@198.74.58.236"
role :resque_scheduler, "codeage@198.74.58.236"


#Server roles
role :web, domain
role :app, domain
role :db,  domain, :primary => true
