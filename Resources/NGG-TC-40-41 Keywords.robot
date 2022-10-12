*** Variables ***

${url}         http://127.0.0.1:4723/wd/hub
${PlatFormName}      Android
#We'll need to find the Android version that the eHub is using.
${PlatFormVersion}   7.1.2
#This can be replaced with the device name if using a remote device via adroid studio
${DeviceName}        192.168.1.133:5555
${Activity_NAME}      com.sentrics.engage360..presentation.MainActivity
${PACKAGE_NAME}       com.sentrics.engage360

*** Keywords ***
Open App
# Enter To Aplication
    Open Application   ${url}
  ...   platformName=${PlatFormName}
  ...   platformVersion=${PlatFormVersion}
  ...   deviceName=${DeviceName}
  ...   automationName=UiAutomator2
  ...   newCommandTimeout=2500
  ...   noReset=True
  ...   activateName=${Activity_NAME}
  ...   packageName=${PACKAGE_NAME}

# NGG-TC-41
Home-Settings

        Press KeyCode           20
        Press KeyCode           20
        Press Keycode           20
        Press Keycode           20
        Press Keycode           22
        Press Keycode           22
        Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvAppName
        Element Should Be Enabled               id=com.sentrics.engage360:id/tvAppName          Settings
        Press Keycode           23

# NGG-TC-40
Enter Windows Settings
 # Enter TV Preferences
        Wait Until Element Is Visible            id=com.sentrics.engage360:id/tvAppName
        Element Should Be Enabled                id=com.sentrics.engage360:id/tvAppName             TV Preferences
        Press Keycode           23


        Wait Until Element Is Visible            id=com.sentrics.engage360:id/btnUpdateVersion
        Element Should Be Enabled           id=com.sentrics.engage360:id/btnUpdateVersion           UPDATE TV GUIDE
# Back
        Press Keycode           4
        Wait Until Element Is Visible            id=com.sentrics.engage360:id/tvAppName


# Enter Remote Preferences
        Press Keycode       22
        Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
        Element Should Be Enabled           id=com.sentrics.engage360:id/tvAppName          Remote Preferences
        Press Keycode       23
        Wait Until Element Is Visible        id=com.sentrics.engage360:id/btnFav1ChangeAction
        Element Should Be Enabled            id=com.sentrics.engage360:id/btnFav1ChangeAction            	Change Action
# Back
        Press Keycode           4
        Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvAppName

# Enter Network Info
        Press Keycode       22
        Press Keycode       22
        Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
        Element Should Be Enabled           id=com.sentrics.engage360:id/tvAppName          Network Info
        Press Keycode       23
        Wait Until Element Is Visible      id=com.sentrics.engage360:id/btnSyncResident
        Element Should Be Enabled          id=com.sentrics.engage360:id/btnSyncResident        RESIDENT UPDATE

# Back
        Press Keycode           4
        Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvAppName


# Enter My Preferences
        Press Keycode       20
        Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
        Element Should Be Enabled           id=com.sentrics.engage360:id/tvAppName          My Preferences
        Press Keycode       23
        Wait Until Element Is Visible        id=com.sentrics.engage360:id/btnUpdateLanguage
        Element Should Be Enabled            id=com.sentrics.engage360:id/btnUpdateLanguage     CHANGE
# Back
        Press Keycode           4
        Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvAppName

# Back
        Press Keycode           4



