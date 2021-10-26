*** Settings ***
Documentation    Variáveis da pagina

*** Variables ***
&{LOGIN}
...             button_login=id=com.google.android.youtube:id/button      
...             button_add_account=id=com.google.android.youtube:id/name
...             input_email=xpath=//android.widget.EditText[@resource-id='identifierId']
...             email=
...             next=xpath=//android.widget.Button[@text='Próxima']
...             input_password=xpath=//*[@resource-id='password']//android.widget.EditText
...             password=
...             accept=xpath=//android.widget.Button[@text='Concordo']
...             gdrive=id=com.google.android.gms:id/sud_items_switch
...             accept2=xpath=//android.widget.Button[@text='ACEITAR']
&{YT}
...             icon_avatar=id=com.google.android.youtube:id/mobile_topbar_avatar
...             icon_logo=id=com.google.android.youtube:id/youtube_logo
...             explore=xpath=//android.widget.Button[@content-desc="Explorar"]
...             subscribe=id=com.google.android.youtube:id/subscribe_button