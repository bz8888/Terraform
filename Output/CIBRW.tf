module "wf_app_landing_zone_CIBRW" {
   source = "localterraform.com/TFE-MSAC/wf-app-landing-zone/azurerm"
   version = "~>3.32.0"
   
   
   app_id          =  "CIBRW"
   platform_env    =  "nonprod"
   artrequestid    =  "1234356"

   

  tags = {
  
    app_guid   = ""
    au         = "123452"
    data_classification = "internal"
   }


}