case $1 in

  watch)
    flutter pub run build_runner watch --delete-conflicting-outputs
    ;;

  build)
    flutter pub run build_runner build --delete-conflicting-outputs
    ;;

  format)
    flutter format lib/app lib/helpers lib/models lib/services lib/store lib/theme lib/ui
    ;;

  pod-reset)
    flutter clean
    rm -Rf ios/Pods
    rm -Rf ios/.symlinks
    rm -Rf ios/Flutter/Flutter.framework
    rm -Rf ios/Flutter/Flutter.podspec
    rm ios/Podfile
    flutter pub get
    ;;

  m1-ios-reset)
    sudo arch -x86_64 gem install ffi
    arch -x86_64 pod install
    ;;

  *)
    echo -n "use watch, build or format"
    ;;
esac