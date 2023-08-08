echo "MY CUSTOM POST-CLONE SCRIPT..."

CURR_DISPLAY_NAME="cicdDemoApp"
NEW_DISPLAY_NAME="onmo-dev"
PROJECT_NAME=cicdDemoApp
STRING_XML_DIRECTORY=$APPCENTER_SOURCE_DIRECTORY/android/app/src/main/res/values
STRINGS_XML_FILE=$STRING_XML_DIRECTORY/strings.xml
INFO_PLIST_FILE=$APPCENTER_SOURCE_DIRECTORY/ios/$PROJECT_NAME/Info.plist



echo "-- Updating Android Display Name : Starts --"

echo "Install xmlstarlet" 
brew install xmlstarlet

echo "Move to strings.xml directory"
cd $STRING_XML_DIRECTORY

echo "Changing app display name in strings.xml"
xmlstarlet ed --inplace -u "/resources/string[@name='app_name']" --value $NEW_DISPLAY_NAME strings.xml

echo "File content:"
cat $STRINGS_XML_FILE

echo "-- Updating Android Display Name : Ends --"



echo "-- Updating IOS Display Name : Starts --"

echo "Updating display name to $NEW_DISPLAY_NAME in Info.plist"
plutil -replace CFBundleDisplayName -string $NEW_DISPLAY_NAME $INFO_PLIST_FILE

echo "File content:"
cat $INFO_PLIST_FILE

echo "-- Updating IOS Display Name : Ends --"