#ifndef FLUTTER_PLUGIN_NOVA_DESIGN_SYSTEM_FLUTTER_PLUGIN_H_
#define FLUTTER_PLUGIN_NOVA_DESIGN_SYSTEM_FLUTTER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace nova_design_system_flutter {

class NovaDesignSystemFlutterPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  NovaDesignSystemFlutterPlugin();

  virtual ~NovaDesignSystemFlutterPlugin();

  // Disallow copy and assign.
  NovaDesignSystemFlutterPlugin(const NovaDesignSystemFlutterPlugin&) = delete;
  NovaDesignSystemFlutterPlugin& operator=(const NovaDesignSystemFlutterPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace nova_design_system_flutter

#endif  // FLUTTER_PLUGIN_NOVA_DESIGN_SYSTEM_FLUTTER_PLUGIN_H_
