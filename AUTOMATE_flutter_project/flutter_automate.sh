#mkdir $1
cd ..
pwd
flutter create $1
rm $1/lib/main.dart
echo "Removed main.dart"
cp AUTOMATE_flutter_project/template_main.dart $1/lib/main.dart
echo "Added lib/main.dart"
mkdir $1/lib/screens/
cp AUTOMATE_flutter_project/template_home_screen.dart $1/lib/screens/home_screen.dart
echo "Added lib/screens/home_screen.dart"
text="import 'package:$1/screens/home_screen.dart';"
#using '@' as delimiter in sed command and adding $text import statement in second line of main.dart
#used '@' as delimiter as $text contains '/' and it affected the sed command
sed -i "2s@^@$text\n@" test_auto/lib/main.dart
cd $1/
intellij-idea-community .
