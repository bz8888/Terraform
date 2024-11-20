module "wf_app_landing_zone_TESTDEV" {
   source = "localterraform.com/TFE-MSAC/wf-app-landing-zone/azurerm"
   version = "~>3.32.0"
   
   
   app_id          =  "TESTDEV"
   platform_env    =  "sandbox"
   artrequestid    =  "1234356"

   

  tags = {
  
    app_guid   = "123456789"
    au         = "123456"
    data_classification = "internal"
   }


}