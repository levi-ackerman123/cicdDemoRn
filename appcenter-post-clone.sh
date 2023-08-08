echo "MY CUSTOM POST-CLONE SCRIPT..."

echo "Install xmlstarlet" 
brew install xmlstarlet

echo "Move to strings directory"
cd android/app/src/main/res/values

echo "Change app name"
xmlstarlet ed --inplace -u "/resources/string[@name='app_name']" --value "staging" strings.xml

echo "Print content"
cat $APPCENTER_SOURCE_DIRECTORY/android/app/src/main/res/values/strings.xml