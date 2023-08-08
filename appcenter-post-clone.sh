echo "MY CUSTOM POST-CLONE SCRIPT..."

# echo "Install xmlstarlet" 
# brew install xmlstarlet

# echo "Move to strings directory"
# cd android/app/src/main/res/values

# echo "Change app name"
# xmlstarlet ed --inplace -u "/resources/string[@name='app_name']" --value "staging" strings.xml

# echo "Print content"
# cat $APPCENTER_SOURCE_DIRECTORY/android/app/src/main/res/values/strings.xml

NEW_DISPLAY_NAME=onmo-dev
PROJECT_NAME=cicdDemoApp
STRINGS_XML_FILE=$APPCENTER_SOURCE_DIRECTORY/android/app/src/main/res/values/strings.xml
INFO_PLIST_FILE=$APPCENTER_SOURCE_DIRECTORY/ios/$PROJECT_NAME/Info.plist


echo "Updating NEW_DISPLAY_NAME name to $NEW_DISPLAY_NAME in strings.xml"
sed -i 's/cicdDemoApp/$NEW_DISPLAY_NAME/' $STRINGS_XML_FILE

echo "File content:"
cat $STRINGS_XML_FILE



echo "Updating display name to $NEW_DISPLAY_NAME in Info.plist"
plutil -replace CFBundleDisplayName -string $NEW_DISPLAY_NAME $INFO_PLIST_FILE

echo "File content:"
cat $INFO_PLIST_FILE
