module "wf_app_landing_zone_{{app_id}}" {
   source = "localterraform.com/TFE-MSAC/wf-app-landing-zone/azurerm"
   version = "~>3.32.0"
   
   
   app_id          =  "{{app_id}}"
   platform_env    =  "{{platform_env}}"
   artrequestid    =  "{{art_request_id}}"

   

  tags = {
  
    app_guid   = "{{app_guide}}"
    au         = "{{au}}"
    data_classification = "{{data_classification}}"
   }


}