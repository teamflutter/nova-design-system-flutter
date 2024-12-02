#include "include/nova_design_system_flutter/nova_design_system_flutter_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "nova_design_system_flutter_plugin.h"

void NovaDesignSystemFlutterPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  nova_design_system_flutter::NovaDesignSystemFlutterPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
