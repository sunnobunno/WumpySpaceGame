GDPC                 �	                                                                         T   res://.godot/exported/133200997/export-6b9c1b1fd6ae6f795188dfdc89e222b0-world.scn   �      k      ����`'��!���8�    X   res://.godot/exported/133200997/export-af04b94ac81ba2832bcbb3750a68cda4-playerR3D.scn    �      	
      ��8%XO�t��aG�"I    \   res://.godot/exported/133200997/export-bc0aef65e483068f3376545f8816a5c7-living_quarters.scn Х      +      ��mɳ�*����q�u��        res://.godot/extension_list.cfg  �      d       ���̎f�u�pK���c    ,   res://.godot/global_script_class_cache.cfg  P�             ��Р�8���8~$}P�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�      &      A]/�no.^La_L�;       res://.godot/uid_cache.bin  `�      �       �`초8����� 
    8   res://Release/data_Space_windows_x86_64/Space.deps.json �      �      ����BCsrSⲙ	    @   res://Release/data_Space_windows_x86_64/Space.runtimeconfig.json��            �IyE�4��ڶf�k\    4   res://addons/debug_draw_3d/debug_draw_3d.gdextension       �      �"�� x�1N�'��    H   res://addons/debug_draw_3d/gen/csharp/DebugDrawGeneratedAPI.generated.cs               h�)ژ��@��ح\��@    0   res://addons/godot-jolt/godot-jolt.gdextension  �            j-�.��^���Ñ       res://icon.svg  p�      �      �W|��/�\�pF[       res://icon.svg.import   @�      �       "�A��$��r�%�HY       res://project.binaryp�      Q
      �7����lY��'�    (   res://scenes/living_quarters.tscn.remap  �      l       �S����䚡���u�    $   res://scenes/playerR3D.tscn.remap   p�      f       9mH�e�ˈ�M�s2��        res://scenes/world.tscn.remap   ��      b       ������מ��ф�|�    $   res://scripts/CameraController.cs   ��             h�)ژ��@��ح\��@       res://scripts/CameraDolly.cs��             h�)ژ��@��ح\��@        res://scripts/MouseRaycaster.cs ��             h�)ژ��@��ح\��@    0   res://scripts/PlayerComponents/ComponentHover.cs��             h�)ژ��@��ح\��@    0   res://scripts/PlayerComponents/ComponentMove.cs ��             h�)ژ��@��ح\��@    8   res://scripts/PlayerComponents/ComponentRotateToMouse.cs��             h�)ژ��@��ح\��@    4   res://scripts/PlayerComponents/ComponentShooting.cs ��             h�)ژ��@��ح\��@    $   res://scripts/R3DTestController.cs  ��             h�)ژ��@��ح\��@       res://scripts/Test.cs    �             h�)ژ��@��ح\��@                
               [configuration]

entry_symbol = "debug_draw_3d_library_init"
compatibility_minimum = "4.1.4"
reloadable = false

[dependencies]

; example.x86_64 = { "relative or absolute path to the dependency" : "the path relative to the exported project", }
; -------------------------------------
; debug

macos = { }
windows.x86_64 = { }
linux.x86_64 = { }

; by default godot is using threads
web.wasm32.nothreads = {}
web.wasm32 = {}

android.arm32 = { }
android.arm64 = { }
android.x86_32 = { }
android.x86_64 = { }

ios = {}

; -------------------------------------
; release no debug draw

macos.template_release = { }
windows.template_release.x86_64 = { }
linux.template_release.x86_64 = { }

web.template_release.wasm32.nothreads = { }
web.template_release.wasm32 = { }

android.template_release.arm32 = { }
android.template_release.arm64 = { }
android.template_release.x86_32 = { }
android.template_release.x86_64 = { }

ios.template_release = {}

; -------------------------------------
; release forced debug draw

macos.template_release.forced_dd3d = { }
windows.template_release.x86_64.forced_dd3d = { }
linux.template_release.x86_64.forced_dd3d = { }

web.template_release.wasm32.nothreads.forced_dd3d = { }
web.template_release.wasm32.forced_dd3d = { }

ios.template_release.forced_dd3d = {}

[libraries]

; -------------------------------------
; debug

macos = "libs/libdd3d.macos.editor.universal.framework"
windows.x86_64 = "libs/libdd3d.windows.editor.x86_64.dll"
linux.x86_64 = "libs/libdd3d.linux.editor.x86_64.so"

web.wasm32.nothreads = "libs/libdd3d.web.template_debug.wasm32.wasm"
web.wasm32 = "libs/libdd3d.web.template_debug.wasm32.threads.wasm"

android.arm32 = "libs/libdd3d.android.template_debug.arm32.so"
android.arm64 = "libs/libdd3d.android.template_debug.arm64.so"
android.x86_32 = "libs/libdd3d.android.template_debug.x86_32.so"
android.x86_64 = "libs/libdd3d.android.template_debug.x86_64.so"

ios = "libs/libdd3d.ios.template_debug.universal.dylib"

; -------------------------------------
; release no debug draw

macos.template_release = "libs/libdd3d.macos.template_release.universal.framework"
windows.template_release.x86_64 = "libs/libdd3d.windows.template_release.x86_64.dll"
linux.template_release.x86_64 = "libs/libdd3d.linux.template_release.x86_64.so"

web.template_release.wasm32.nothreads = "libs/libdd3d.web.template_release.wasm32.wasm"
web.template_release.wasm32 = "libs/libdd3d.web.template_release.wasm32.threads.wasm"

android.template_release.arm32 = "libs/libdd3d.android.template_release.arm32.so"
android.template_release.arm64 = "libs/libdd3d.android.template_release.arm64.so"
android.template_release.x86_32 = "libs/libdd3d.android.template_release.x86_32.so"
android.template_release.x86_64 = "libs/libdd3d.android.template_release.x86_64.so"

ios.template_release = "libs/libdd3d.ios.template_release.universal.dylib"

; -------------------------------------
; release forced debug draw

macos.template_release.forced_dd3d = "libs/libdd3d.macos.template_release.universal.enabled.framework"
windows.template_release.x86_64.forced_dd3d = "libs/libdd3d.windows.template_release.x86_64.enabled.dll"
linux.template_release.x86_64.forced_dd3d = "libs/libdd3d.linux.template_release.x86_64.enabled.so"

web.template_release.wasm32.nothreads.forced_dd3d = "libs/libdd3d.web.template_release.wasm32.enabled.wasm"
web.template_release.wasm32.forced_dd3d = "libs/libdd3d.web.template_release.wasm32.threads.enabled.wasm"

ios.template_release.forced_dd3d = "libs/libdd3d.ios.template_release.universal.enabled.dylib"

; -------------------------------------
; DOUBLE PRECISION
; -------------------------------------

; -------------------------------------
; debug

macos.double = "libs/libdd3d.macos.editor.universal.double.framework"
windows.x86_64.double = "libs/libdd3d.windows.editor.x86_64.double.dll"
linux.x86_64.double = "libs/libdd3d.linux.editor.x86_64.double.so"

web.wasm32.nothreads.double = "libs/libdd3d.web.template_debug.wasm32.double.wasm"
web.wasm32.double = "libs/libdd3d.web.template_debug.wasm32.threads.double.wasm"

android.arm32.double = "libs/libdd3d.android.template_debug.arm32.double.so"
android.arm64.double = "libs/libdd3d.android.template_debug.arm64.double.so"
android.x86_32.double = "libs/libdd3d.android.template_debug.x86_32.double.so"
android.x86_64.double = "libs/libdd3d.android.template_debug.x86_64.double.so"

ios.double = "libs/libdd3d.ios.template_debug.universal.dylib"

; -------------------------------------
; release no debug draw

macos.template_release.double = "libs/libdd3d.macos.template_release.universal.double.framework"
windows.template_release.x86_64.double = "libs/libdd3d.windows.template_release.x86_64.double.dll"
linux.template_release.x86_64.double = "libs/libdd3d.linux.template_release.x86_64.double.so"

web.template_release.wasm32.nothreads.double = "libs/libdd3d.web.template_release.wasm32.double.wasm"
web.template_release.wasm32.double = "libs/libdd3d.web.template_release.wasm32.threads.double.wasm"

android.template_release.arm32.double = "libs/libdd3d.android.template_release.arm32.double.so"
android.template_release.arm64.double = "libs/libdd3d.android.template_release.arm64.double.so"
android.template_release.x86_32.double = "libs/libdd3d.android.template_release.x86_32.double.so"
android.template_release.x86_64.double = "libs/libdd3d.android.template_release.x86_64.double.so"

ios.template_release.double = "libs/libdd3d.ios.template_release.universal.double.dylib"

; -------------------------------------
; release forced debug draw

macos.template_release.forced_dd3d.double = "libs/libdd3d.macos.template_release.universal.enabled.double.framework"
windows.template_release.x86_64.forced_dd3d.double = "libs/libdd3d.windows.template_release.x86_64.enabled.double.dll"
linux.template_release.x86_64.forced_dd3d.double = "libs/libdd3d.linux.template_release.x86_64.enabled.double.so"

web.template_release.wasm32.nothreads.forced_dd3d.double = "libs/libdd3d.web.template_release.wasm32.enabled.double.wasm"
web.template_release.wasm32.forced_dd3d.double = "libs/libdd3d.web.template_release.wasm32.threads.enabled.double.wasm"

ios.template_release.forced_dd3d.double = "libs/libdd3d.ios.template_release.universal.enabled.double.dylib"
             [godot-jolt]
version = "0.14.0-stable"
build = "3392156fab"

[configuration]

entry_symbol = "godot_jolt_main"
compatibility_minimum = "4.3"
compatibility_maximum = "4.3"

[libraries]

windows.release.single.x86_64 = "windows/godot-jolt_windows-x64.dll"
windows.debug.single.x86_64 = "windows/godot-jolt_windows-x64_editor.dll"

windows.release.single.x86_32 = "windows/godot-jolt_windows-x86.dll"
windows.debug.single.x86_32 = "windows/godot-jolt_windows-x86_editor.dll"

linux.release.single.x86_64 = "linux/godot-jolt_linux-x64.so"
linux.debug.single.x86_64 = "linux/godot-jolt_linux-x64_editor.so"

linux.release.single.x86_32 = "linux/godot-jolt_linux-x86.so"
linux.debug.single.x86_32 = "linux/godot-jolt_linux-x86_editor.so"

macos.release.single = "macos/godot-jolt_macos.framework"
macos.debug.single = "macos/godot-jolt_macos_editor.framework"

ios.release.single = "ios/godot-jolt_ios.framework"
ios.debug.single = "ios/godot-jolt_ios_editor.framework"

android.release.single.arm64 = "android/libgodot-jolt_android-arm64.so"
android.debug.single.arm64 = "android/libgodot-jolt_android-arm64_editor.so"

android.release.single.arm32 = "android/libgodot-jolt_android-arm32.so"
android.debug.single.arm32 = "android/libgodot-jolt_android-arm32_editor.so"

android.release.single.x86_64 = "android/libgodot-jolt_android-x64.so"
android.debug.single.x86_64 = "android/libgodot-jolt_android-x64_editor.so"

android.release.single.x86_32 = "android/libgodot-jolt_android-x86.so"
android.debug.single.x86_32 = "android/libgodot-jolt_android-x86_editor.so"
        {
  "runtimeTarget": {
    "name": ".NETCoreApp,Version=v6.0/win-x64",
    "signature": ""
  },
  "compilationOptions": {},
  "targets": {
    ".NETCoreApp,Version=v6.0": {},
    ".NETCoreApp,Version=v6.0/win-x64": {
      "Space/1.0.0": {
        "dependencies": {
          "Godot.SourceGenerators": "4.3.0",
          "GodotSharp": "4.3.0",
          "runtimepack.Microsoft.NETCore.App.Runtime.win-x64": "6.0.36"
        },
        "runtime": {
          "Space.dll": {}
        }
      },
      "runtimepack.Microsoft.NETCore.App.Runtime.win-x64/6.0.36": {
        "runtime": {
          "Microsoft.CSharp.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "Microsoft.VisualBasic.Core.dll": {
            "assemblyVersion": "11.0.0.0",
            "fileVersion": "11.100.3624.51421"
          },
          "Microsoft.VisualBasic.dll": {
            "assemblyVersion": "10.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "Microsoft.Win32.Primitives.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "Microsoft.Win32.Registry.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.AppContext.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Buffers.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Collections.Concurrent.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Collections.Immutable.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Collections.NonGeneric.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Collections.Specialized.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Collections.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.ComponentModel.Annotations.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.ComponentModel.DataAnnotations.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.ComponentModel.EventBasedAsync.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.ComponentModel.Primitives.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.ComponentModel.TypeConverter.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.ComponentModel.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Configuration.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Console.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Core.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Data.Common.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Data.DataSetExtensions.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Data.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Diagnostics.Contracts.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Diagnostics.Debug.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Diagnostics.DiagnosticSource.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Diagnostics.FileVersionInfo.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Diagnostics.Process.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Diagnostics.StackTrace.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Diagnostics.TextWriterTraceListener.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Diagnostics.Tools.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Diagnostics.TraceSource.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Diagnostics.Tracing.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Drawing.Primitives.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Drawing.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Dynamic.Runtime.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Formats.Asn1.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Globalization.Calendars.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Globalization.Extensions.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Globalization.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.IO.Compression.Brotli.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.IO.Compression.FileSystem.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.IO.Compression.ZipFile.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.IO.Compression.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.IO.FileSystem.AccessControl.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.IO.FileSystem.DriveInfo.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.IO.FileSystem.Primitives.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.IO.FileSystem.Watcher.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.IO.FileSystem.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.IO.IsolatedStorage.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.IO.MemoryMappedFiles.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.IO.Pipes.AccessControl.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.IO.Pipes.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.IO.UnmanagedMemoryStream.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.IO.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Linq.Expressions.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Linq.Parallel.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Linq.Queryable.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Linq.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Memory.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Net.Http.Json.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Net.Http.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Net.HttpListener.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Net.Mail.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Net.NameResolution.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Net.NetworkInformation.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Net.Ping.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Net.Primitives.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Net.Quic.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Net.Requests.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Net.Security.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Net.ServicePoint.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Net.Sockets.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Net.WebClient.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Net.WebHeaderCollection.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Net.WebProxy.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Net.WebSockets.Client.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Net.WebSockets.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Net.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Numerics.Vectors.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Numerics.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.ObjectModel.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Private.CoreLib.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Private.DataContractSerialization.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Private.Uri.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Private.Xml.Linq.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Private.Xml.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Reflection.DispatchProxy.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Reflection.Emit.ILGeneration.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Reflection.Emit.Lightweight.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Reflection.Emit.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Reflection.Extensions.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Reflection.Metadata.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Reflection.Primitives.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Reflection.TypeExtensions.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Reflection.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Resources.Reader.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Resources.ResourceManager.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Resources.Writer.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Runtime.CompilerServices.Unsafe.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Runtime.CompilerServices.VisualC.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Runtime.Extensions.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Runtime.Handles.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Runtime.InteropServices.RuntimeInformation.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Runtime.InteropServices.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Runtime.Intrinsics.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Runtime.Loader.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Runtime.Numerics.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Runtime.Serialization.Formatters.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Runtime.Serialization.Json.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Runtime.Serialization.Primitives.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Runtime.Serialization.Xml.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Runtime.Serialization.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Runtime.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Security.AccessControl.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Security.Claims.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Security.Cryptography.Algorithms.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Security.Cryptography.Cng.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Security.Cryptography.Csp.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Security.Cryptography.Encoding.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Security.Cryptography.OpenSsl.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Security.Cryptography.Primitives.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Security.Cryptography.X509Certificates.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Security.Principal.Windows.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Security.Principal.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Security.SecureString.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Security.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.ServiceModel.Web.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.ServiceProcess.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Text.Encoding.CodePages.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Text.Encoding.Extensions.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Text.Encoding.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Text.Encodings.Web.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Text.Json.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Text.RegularExpressions.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Threading.Channels.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Threading.Overlapped.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Threading.Tasks.Dataflow.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Threading.Tasks.Extensions.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Threading.Tasks.Parallel.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Threading.Tasks.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Threading.Thread.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Threading.ThreadPool.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Threading.Timer.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Threading.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Transactions.Local.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Transactions.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.ValueTuple.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Web.HttpUtility.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Web.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Windows.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Xml.Linq.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Xml.ReaderWriter.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Xml.Serialization.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Xml.XDocument.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Xml.XPath.XDocument.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Xml.XPath.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Xml.XmlDocument.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Xml.XmlSerializer.dll": {
            "assemblyVersion": "6.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.Xml.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "System.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "WindowsBase.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "mscorlib.dll": {
            "assemblyVersion": "4.0.0.0",
            "fileVersion": "6.0.3624.51421"
          },
          "netstandard.dll": {
            "assemblyVersion": "2.1.0.0",
            "fileVersion": "6.0.3624.51421"
          }
        },
        "native": {
          "Microsoft.DiaSymReader.Native.amd64.dll": {
            "fileVersion": "14.40.33810.0"
          },
          "System.IO.Compression.Native.dll": {
            "fileVersion": "42.42.42.42424"
          },
          "api-ms-win-core-console-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-console-l1-2-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-datetime-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-debug-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-errorhandling-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-fibers-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-file-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-file-l1-2-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-file-l2-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-handle-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-heap-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-interlocked-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-libraryloader-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-localization-l1-2-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-memory-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-namedpipe-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-processenvironment-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-processthreads-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-processthreads-l1-1-1.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-profile-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-rtlsupport-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-string-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-synch-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-synch-l1-2-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-sysinfo-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-timezone-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-core-util-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-crt-conio-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-crt-convert-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-crt-environment-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-crt-filesystem-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-crt-heap-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-crt-locale-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-crt-math-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-crt-multibyte-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-crt-private-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-crt-process-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-crt-runtime-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-crt-stdio-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-crt-string-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-crt-time-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "api-ms-win-crt-utility-l1-1-0.dll": {
            "fileVersion": "10.0.22000.194"
          },
          "clretwrc.dll": {
            "fileVersion": "6.0.3624.51421"
          },
          "clrjit.dll": {
            "fileVersion": "6.0.3624.51421"
          },
          "coreclr.dll": {
            "fileVersion": "6.0.3624.51421"
          },
          "createdump.exe": {
            "fileVersion": "6.0.3624.51421"
          },
          "dbgshim.dll": {
            "fileVersion": "6.0.3624.51421"
          },
          "hostfxr.dll": {
            "fileVersion": "6.0.3624.51421"
          },
          "hostpolicy.dll": {
            "fileVersion": "6.0.3624.51421"
          },
          "mscordaccore.dll": {
            "fileVersion": "6.0.3624.51421"
          },
          "mscordaccore_amd64_amd64_6.0.3624.51421.dll": {
            "fileVersion": "6.0.3624.51421"
          },
          "mscordbi.dll": {
            "fileVersion": "6.0.3624.51421"
          },
          "mscorrc.dll": {
            "fileVersion": "6.0.3624.51421"
          },
          "msquic.dll": {
            "fileVersion": "1.9.1.0"
          },
          "ucrtbase.dll": {
            "fileVersion": "10.0.22000.194"
          }
        }
      },
      "Godot.SourceGenerators/4.3.0": {},
      "GodotSharp/4.3.0": {
        "runtime": {
          "lib/net6.0/GodotSharp.dll": {
            "assemblyVersion": "4.3.0.0",
            "fileVersion": "4.3.0.0"
          }
        }
      }
    }
  },
  "libraries": {
    "Space/1.0.0": {
      "type": "project",
      "serviceable": false,
      "sha512": ""
    },
    "runtimepack.Microsoft.NETCore.App.Runtime.win-x64/6.0.36": {
      "type": "runtimepack",
      "serviceable": false,
      "sha512": ""
    },
    "Godot.SourceGenerators/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-fLDNOAo/kpL1JtGXP6b2M48dobzb5YmKSRLXKDt+td8qegu0Ao3H25avoySVmrb52d7zpe8yvgMwba7QMhqnqQ==",
      "path": "godot.sourcegenerators/4.3.0",
      "hashPath": "godot.sourcegenerators.4.3.0.nupkg.sha512"
    },
    "GodotSharp/4.3.0": {
      "type": "package",
      "serviceable": true,
      "sha512": "sha512-mEwRmNIG2k/yPfkFencEkNVXpHCa+uETHkIQcq0MxcsfwJQZ4HueFU5Q9CYDIdd5YrRPqjwuyxbsuD6Je8lfdQ==",
      "path": "godotsharp/4.3.0",
      "hashPath": "godotsharp.4.3.0.nupkg.sha512"
    }
  },
  "runtimes": {
    "win-x64": [
      "win",
      "any",
      "base"
    ],
    "win-x64-aot": [
      "win-aot",
      "win-x64",
      "win",
      "aot",
      "any",
      "base"
    ],
    "win10-x64": [
      "win10",
      "win81-x64",
      "win81",
      "win8-x64",
      "win8",
      "win7-x64",
      "win7",
      "win-x64",
      "win",
      "any",
      "base"
    ],
    "win10-x64-aot": [
      "win10-aot",
      "win10-x64",
      "win10",
      "win81-x64-aot",
      "win81-aot",
      "win81-x64",
      "win81",
      "win8-x64-aot",
      "win8-aot",
      "win8-x64",
      "win8",
      "win7-x64-aot",
      "win7-aot",
      "win7-x64",
      "win7",
      "win-x64-aot",
      "win-aot",
      "win-x64",
      "win",
      "aot",
      "any",
      "base"
    ],
    "win7-x64": [
      "win7",
      "win-x64",
      "win",
      "any",
      "base"
    ],
    "win7-x64-aot": [
      "win7-aot",
      "win7-x64",
      "win7",
      "win-x64-aot",
      "win-aot",
      "win-x64",
      "win",
      "aot",
      "any",
      "base"
    ],
    "win8-x64": [
      "win8",
      "win7-x64",
      "win7",
      "win-x64",
      "win",
      "any",
      "base"
    ],
    "win8-x64-aot": [
      "win8-aot",
      "win8-x64",
      "win8",
      "win7-x64-aot",
      "win7-aot",
      "win7-x64",
      "win7",
      "win-x64-aot",
      "win-aot",
      "win-x64",
      "win",
      "aot",
      "any",
      "base"
    ],
    "win81-x64": [
      "win81",
      "win8-x64",
      "win8",
      "win7-x64",
      "win7",
      "win-x64",
      "win",
      "any",
      "base"
    ],
    "win81-x64-aot": [
      "win81-aot",
      "win81-x64",
      "win81",
      "win8-x64-aot",
      "win8-aot",
      "win8-x64",
      "win8",
      "win7-x64-aot",
      "win7-aot",
      "win7-x64",
      "win7",
      "win-x64-aot",
      "win-aot",
      "win-x64",
      "win",
      "aot",
      "any",
      "base"
    ]
  }
}             {
  "runtimeOptions": {
    "tfm": "net6.0",
    "includedFrameworks": [
      {
        "name": "Microsoft.NETCore.App",
        "version": "6.0.36"
      }
    ],
    "configProperties": {
      "System.Reflection.Metadata.MetadataUpdater.IsSupported": false
    }
  }
}   RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script           local://PackedScene_v3pej �          PackedScene          	         names "         LivingQuarters    Node3D    CSGCombiner3D    use_collision 	   CSGBox3D 
   transform    size 
   CSGBox3D3 
   CSGBox3D4 
   CSGBox3D2 
   operation 
   CSGBox3D5 
   CSGBox3D6    Floor    	   variants                  �?              �?              �?    ���?ο   =
UA��m@�cA     �?              �?              �?e�!����?o���   ��A��m@6��@     �?              �?              �?�D�����?zǑ�   J{0A��m@+�rA     �?              �?              �?    �A�?�Qʿ         )\MAh�m@z�[A     �?              �?              �?�^��A�?=
��   FAh�m@���@     �?              �?              �?9����A�?MJ��   �@(Ah�m@l	jA     �?              �?              �?���  ���qѿ    o]A   ?�;zA     �?              �?              �?;p��  ���[��    o]A   ?� �A     �?              �?              �?S��  ������   ��
A   ?w��@      node_count             nodes     �   ��������       ����                      ����                           ����                                ����                                ����                             	   ����         
         	                    ����      
   
                             ����         
                              ����                     ����                             	   ����                                ����                         conn_count              conns               node_paths              editable_instances              version             RSRC     RSRC                    PackedScene            ��������                                                  ComponentRotateToMouse    ComponentMove    ComponentHover 
   EyeHeight    ..    resource_local_to_scene    resource_name    lightmap_size_hint 	   material    custom_aabb    flip_faces    add_uv2    uv2_padding    radius    height    radial_segments    rings    script    size    subdivide_width    subdivide_height    subdivide_depth    custom_solver_bias    margin 	   _bundled       Script #   res://scripts/R3DTestController.cs ��������   Script 9   res://scripts/PlayerComponents/ComponentRotateToMouse.cs ��������   Script 0   res://scripts/PlayerComponents/ComponentMove.cs ��������   Script 1   res://scripts/PlayerComponents/ComponentHover.cs ��������   Script 4   res://scripts/PlayerComponents/ComponentShooting.cs ��������      local://CapsuleMesh_3ebml          local://BoxMesh_27cs8 !         local://CapsuleShape3D_propw 9         local://PackedScene_i3x83 X         CapsuleMesh             BoxMesh             CapsuleShape3D             PackedScene          	         names "         Player 
   transform    center_of_mass_mode    script    springStrength    rotateToMouseComponent    moveComponent    hoverComponent    eyeHeightTransform    RigidBody3D    ComponentRotateToMouse    Node3D    ComponentMove    ComponentHover    ComponentShooting    Model    Body    mesh 	   skeleton    MeshInstance3D    Eyes    CollisionShape3D    shape 
   EyeHeight 	   Marker3D    	   variants            �?              �?              �?    n��?                    )   �Q��=@                                                                                             ��(?            �B>            ��y>    �v�>T9�>                                   �?              �?              �?    Z)�>          node_count    
         nodes     l   ��������	       ����                              @     @     @     @                  
   ����                           ����      	                     ����      
                     ����                           ����                     ����                                ����                                       ����                           ����                   conn_count              conns               node_paths              editable_instances              version             RSRC       RSRC                    PackedScene            ��������                                                  ..    Player    resource_local_to_scene    resource_name    lightmap_size_hint 	   material    custom_aabb    flip_faces    add_uv2    uv2_padding    radius    height    radial_segments    rings    is_hemisphere    script 	   _bundled       Script    res://scripts/CameraDolly.cs ��������   Script "   res://scripts/CameraController.cs ��������   Script     res://scripts/MouseRaycaster.cs ��������   PackedScene    res://scenes/playerR3D.tscn �TI=�¿0   Script    res://scripts/Test.cs ��������   PackedScene "   res://scenes/living_quarters.tscn 8�si�%N      local://SphereMesh_1dbo8          local://PackedScene_u8vyp          SphereMesh             PackedScene          	         names "   0      World    Node3D    CameraDolly    script    followNode    acceleration 	   Camera3D 
   transform    projection    fov    size    rotX    Camera    MouseRaycaster 	   camera3D    Player    axis_lock_angular_x    axis_lock_angular_z    inertia 
   can_sleep    springStrength    accel 	   maxSpeed    MousePointer    visible    gravity_scale    controller    RigidBody3D    MeshInstance3D    mesh    LivingQuarters    Lights    DirectionalLight3D    light_color    light_energy    shadow_enabled    shadow_transmittance_bias    shadow_blur    SpotLight3D    light_indirect_energy    spot_range    spot_attenuation    spot_angle    spot_angle_attenuation    SpotLight3D4    SpotLight3D2    SpotLight3D3    light_volumetric_fog_energy    	   variants    0                          )   �Q����?   �7?��$H!?���m�g?V�>�N2������&&?��@��@��@           �A   � �@         )   ������=�                                 �?              �?              �?���>P��?             ���=���=���=            �B)   ��Q�NE@)   ���(\�@     �?              �?              �?Hӿ�Z@?��:@                   ���>            ���>            ���>                                  ��>fk?��������ׄ>tyk?��a?���ʈ�>    V��@����   �c?  �?zSi?  �?   ��?   �Ϋ�   X�?   ��Q?���Ϡ��"?依>�E?=*�=��r��V�>l&����Z@��@     �?�0?[?  �?   `�,A   q=�?   ���@   {.?   ffkB   ���?     �?            1�;�  �?      ��1�;�����a�@�r��   �?�	�>R�N4  �?   l��@   Ș�B   �[v�;�r?��Q��"?依>�E?�K?���=���H���Z@^��   ��m�m;�>@��=�{o>依>�l?���>�b?����c@��Z@y]y�   '1A   �IL?   J�?   mE�B      node_count             nodes     �   ��������       ����                      ����            @                          ����               	      
                                     ����      	     @
               ���                                                                             ����                                   @                    ����                           ���                            ����                       ����         !      "      #      $      %                 &   &   ����	         !      "       '   !   #      (   "   )   #   *   $   +   %              &   ,   ����	      &   !   '   "       '   !   #      (   (   )   #   *   )   +   %              &   -   ����	      *   !      "       '   !   #      (   "   )   #   *   $   +   %              &   .   ����
      +   !      "   ,   '   -   /   .   #      (   "   )   #   *   /   +   %             conn_count              conns               node_paths              editable_instances              version             RSRC     
               
               
               
               
               
               
               
               
               GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�Hrm�n�Ts�#��� ��Ԁ������g��f�#I����2���w5 z���1��H�#Y���úW���9ȵm-k�|P�C	�<��m�Rܭ d�o���m$EJ�vw��ԶmO�f���23ØyIG��23s�����̐�-�?�#�om�VR����ĥၝ`!m<�  mcm@��Jb�M�t���6�$z��uS�70��`U$&�&g�]����xa{���c���~�*�~�
�� ��B���H��~�~�V�)�J�:̠Ʉ	rYlrs6E�M5�hB�C?Q��x0sT��IGK��پl9��]�Cڗ-�-����1ᇕ��HŦ�Mv�.�i�q�4N[���i������RRy�:[�q�q�Ti��B]x���M�kP�tY�&sڶt	u��݁z���Lф��P�PA���w���>�ʎ
0�ȹ�v�6���:������^�iL.cB؍1�I�w� ���c�Yy��Na�y�2+�9:���͏}����:�i���eX���s=S�ZL�<oJ��M�Z�JU�T�27�E��4����"k���&:�-��zK�ڭ:���Yn����EU�Tq�Sm�Jav"2Q܉�[ ��
}RP#����s,��}��g��lh�jcGJy��в�6�N�"�����+��Ģ�7n�a�j;|pW�f��E}�%�XA�N
�䑭���j��t���+���\��EH)�n��!:��^Pk�]�|��lT ��Z�4�729f�Ј)w��T0Ĕ�ix�\�b�9�<%�#Ɩs�Z�O�mjX �qZ0W����E�Y�ڨD!�$G�v����BJ�f|pq8��5�g�o��9�l�?���Q˝+U�	>�7�K��z�t����n�H�+��FbQ9���3g-UCv���-�n�*���E��A�҂
�Dʶ� ��WA�d�j��+�5�Ȓ���"���n�U��^�����$G��WX+\^�"�h.���M�3�e.
����MX�K,�Jfѕ*N�^�o2��:ՙ�#o�e.
��p�"<W22ENd�4B�V4x0=حZ�y����\^�J��dg��_4�oW�d�ĭ:Q��7c�ڡ��
A>��E�q�e-��2�=Ϲkh���*���jh�?4�QK��y@'�����zu;<-��|�����Y٠m|�+ۡII+^���L5j+�QK]����I �y��[�����(}�*>+���$��A3�EPg�K{��_;�v�K@���U��� gO��g��F� ���gW� �#J$��U~��-��u���������N�@���2@1��Vs���Ŷ`����Dd$R�":$ x��@�t���+D�}� \F�|��h��>�B�����B#�*6��  ��:���< ���=�P!���G@0��a��N�D�'hX�׀ "5#�l"j߸��n������w@ K�@A3�c s`\���J2�@#�_ 8�����I1�&��EN � 3T�����MEp9N�@�B���?ϓb�C��� � ��+�����N-s�M�  ��k���yA 7 �%@��&��c��� �4�{� � �����"(�ԗ�� �t�!"��TJN�2�O~� fB�R3?�������`��@�f!zD��%|��Z��ʈX��Ǐ�^�b��#5� }ى`�u�S6�F�"'U�JB/!5�>ԫ�������/��;	��O�!z����@�/�'�F�D"#��h�a �׆\-������ Xf  @ �q�`��鎊��M��T��(}�_�w�}���r�L|� |v�՘�e��yw�S|�� U�${1J'��[�ڞ�x��2����:��Ggjxؗ�m3�ivF��`�ߢe��a��G��V�t��is��J�����'�Q_5W���?�l�{1g���kԶ�zk�T�-|�V*��ޜZ�CW�,��(۝��Ǘ��� T{?�^��{���(9�(��u�5�͚����y~)J�&������}	@���74���&���N-�L_���o��������ݵ=�����y�VK��&�����������G�xߠ�]������ev%�{��eycc�{s�\�RАk{�|��P���eu�~]���2?0�F���1�V&x���:c������/�g{�.F)PDwGf�M�����(�0}��ag��e�'���6l�"s�L�H�c�"��̊ #Yf���:8������
�Eذ�3u�k5�Bt�m���!�#*Eǚa�ܰ_��Tq�.�0}�a@�^G��N�a��\��A�N�0���I���lq�5�+(��Џ�����Yq�wz_���*;<-w�;tX�"��n�'����Mۭy`0��kOԙ������,�����x�'��S�ݚa�텷�u��h����\��~�d.;����q5f-���������|�������ͪQl�9���~�\����7��^�?��������e�u$?`�߇u��*��yT����������A�6�E~`\�����n��1l�7t�;G�I��c��,VJ�Q[;�	Y|�kj��*�na����U�/�o��u�	?�闯7��׏w�m��.�|�~�}���r��RΎ��o.���o֜��~�_���.��ǿ�χ���q�˹���7�|�����~��[O5����2�%>�K�C�T׿�Y�L�%-	F�E�H,��v�t�f����i�V�N�'g��/)� ^.7��T��f��y�(����R��~f��p®��O���V�\���k���lڮ2aW��jc�{%�Y\m�šN�+����Y��׹H���y?��ۋG�~��b�l�9��dϻĸ��
��l�X��ɎZ�YDVD%*�P&��m�����]r�&��C����-2G-�-���d�gcgH��!�#�s^���s�l#/��l�r��#���8%Ӭ�L��1㬤ӖIYIa��0�qw���M�>�� � �����c��-$��D&����i�|L�n;�YˡR�����.�mK�P9_T� �c�����F*� ����+�\��|�Mt��nS�#��^+�l���2���|��9�Ç��9��X2mZPnߺ0P��������l�C�t'�^�A\�Q6�?Ɯ�_�EDVDDv�������vCcʁ&rw`w@�'c�%��6�_>0�m��i�}ܢ���            [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://tqqiu8l5ysgh"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 [remap]

path="res://.godot/exported/133200997/export-bc0aef65e483068f3376545f8816a5c7-living_quarters.scn"
    [remap]

path="res://.godot/exported/133200997/export-af04b94ac81ba2832bcbb3750a68cda4-playerR3D.scn"
          [remap]

path="res://.godot/exported/133200997/export-6b9c1b1fd6ae6f795188dfdc89e222b0-world.scn"
              list=Array[Dictionary]([])
     <svg xmlns="http://www.w3.org/2000/svg" width="128" height="128"><rect width="124" height="124" x="2" y="2" fill="#363d52" stroke="#212532" stroke-width="4" rx="14"/><g fill="#fff" transform="translate(12.322 12.322)scale(.101)"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 814 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H446l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c0 34 58 34 58 0v-86c0-34-58-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042" transform="translate(12.322 12.322)scale(.101)"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></svg>                 8�si�%N!   res://scenes/living_quarters.tscn�TI=�¿0   res://scenes/playerR3D.tscn�}E�2<   res://scenes/world.tscn[j��p��   res://icon.svg           res://addons/debug_draw_3d/debug_draw_3d.gdextension
res://addons/godot-jolt/godot-jolt.gdextension
            ECFG      _custom_features         dotnet     application/config/name         WumpySpaceGame     application/run/main_scene          res://scenes/world.tscn    application/config/features$   "         4.3    Forward Plus       application/config/icon         res://icon.svg     dotnet/project/assembly_name         Space      global_group/Camera             input/Up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   W   	   key_label             unicode           location          echo          script      
   input/Down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   S   	   key_label             unicode    s      location          echo          script      
   input/Left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   A   	   key_label             unicode    a      location          echo          script         input/Right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   D   	   key_label             unicode    d      location          echo          script      '   physics/common/physics_ticks_per_second      Z   !   physics/common/physics_jitter_fix             physics/3d/physics_engine         JoltPhysics3D      physics/3d/default_angular_damp          >   rendering/anti_aliasing/screen_space_roughness_limiter/enabled          2   rendering/environment/defaults/default_clear_color      @�>@�>@�>  �?               