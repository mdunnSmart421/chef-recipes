name "base"
description "Base role applied to all nodes."
run_list(
	"recipe[apt]",
	"recipe[zsh]",
  	"recipe[users::sysadmins]",  
	"recipe[sudo]", 
	"recipe[java]",
  	"recipe[tomcat]"
)
override_attributes(
  :authorization => {
    :sudo => {
      :users => ["ubuntu"],
      :passwordless => true
    }
  }
)