#import "CustomFolderGalleryPlugin.h"
#if __has_include(<custom_folder_gallery/custom_folder_gallery-Swift.h>)
#import <custom_folder_gallery/custom_folder_gallery-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "custom_folder_gallery-Swift.h"
#endif

@implementation CustomFolderGalleryPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCustomFolderGalleryPlugin registerWithRegistrar:registrar];
}
@end
