#!/bin/bash

EXPORT_PATH="export/$(date +"%d%m%Y_%H%M")"
ARCHIVE_PATH="$EXPORT_PATH/archive"

# Creazione della directory di export
mkdir -p "$EXPORT_PATH"

# Archivio per dispositivi iOS
xcodebuild -project Unity-iPhone.xcodeproj archive \
 -scheme UnityFramework \
 -sdk iphoneos \
 -archivePath "$ARCHIVE_PATH/ios_devices.xcarchive" \
 BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
 SKIP_INSTALL=NO \
 DEBUG_INFORMATION_FORMAT=dwarf-with-dsym \
 DWARF_DSYM_FILE_SHOULD_ACCOMPANY_PRODUCT=YES

# # Archivio per simulatori iOS
# xcodebuild -project Unity-iPhone.xcodeproj archive \
#   -scheme UnityFramework \
#   -sdk iphonesimulator \
#   -archivePath "$ARCHIVE_PATH/ios_simulators.xcarchive" \
#   BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
#   SKIP_INSTALL=NO

# Creazione del framework universale (xcframework)
xcodebuild -create-xcframework \
  -framework "$ARCHIVE_PATH/ios_devices.xcarchive/Products/Library/Frameworks/UnityFramework.framework" \
  -output "$EXPORT_PATH/UnityFramework.xcframework"

#  -framework "$ARCHIVE_PATH/ios_simulators.xcarchive/Products/Library/Frameworks/UnityFramework.framework" \

# Includo i simboli di debug nella cartella del framework
cp -R "$ARCHIVE_PATH/ios_devices.xcarchive/dSYMs/UnityFramework.framework.dSYM" \
      "$EXPORT_PATH/UnityFramework.xcframework/ios-arm64/UnityFramework.framework.dSYM"

# Firma del framework
codesign --force --sign "6BD0C33B1CD18BDFC1167582664B37394A995DCC" --timestamp=none --deep "$EXPORT_PATH/UnityFramework.xcframework"

# Compressione del framework
ditto -c -k --sequesterRsrc --keepParent $EXPORT_PATH/UnityFramework.xcframework $EXPORT_PATH/UnityFramework.xcframework.zip

# Checksum dello zip del framework
swift package compute-checksum "$EXPORT_PATH/UnityFramework.xcframework.zip"
