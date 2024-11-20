module "wf_app_landing_zone_VAS" {
   source = "localterraform.com/TFE-MSAC/wf-app-landing-zone/azurerm"
   version = "~>3.32.0"
   
   
   app_id          =  "VAS"
   platform_env    =  "nonprod"
   artrequestid    =  "1234356"

   

  tags = {
  
    app_guid   = ""
    au         = "123454"
    data_classification = "internal"
   }


}