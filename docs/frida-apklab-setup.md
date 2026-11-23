---
name: frida-apklab-setup
description: 这台机器上调试 papa APK 的工具:apklab 打包工具、frida(设备+主机)、设备信息
metadata:
  node_type: memory
  type: reference
  originSessionId: f75138aa-f752-44dd-b280-d7b207e56b11
  modified: 2026-11-23T10:22:23.437Z
---

papa APK 改机的工具环境(用户机器 + 测试机)。

**测试设备**:adb id `eba9a483`(GM1911,一加,arm64-v8a,已 root)。frida-server **17.27.4** 常驻 `/data/local/tmp/frida-server`,以 `su -c` 运行。
- 应用进程:`com.join.android.app.mgsim.wufun`(主);`:fc`/`:mind` 等为模拟器/子进程。
- 查进程:`adb -s eba9a483 shell "su -c 'ps -A | grep wufun'"`。

**打包工具** `/home/youyou/.apklab/`:
- `apktool_3.0.3.jar`、`uber-apk-signer-1.3.0.jar`、`jadx-1.5.6`、`smali-lsp-2.2.0.jar`。
- 本机**没有** apktool/apksigner/zipalign 在 PATH,用上面的 jar。

**主机 frida**:系统无 pip,用 venv(临时目录会被清,需重建):
`python3 -m venv fridaenv && ./fridaenv/bin/python -m pip install frida==17.27.4 frida-tools`
附加:`./fridaenv/bin/frida -D eba9a483 -p <pid> -l script.js --runtime=v8`(主机版本须对齐 server 17.x)。

**关键 logcat 信号**:`YVLayer::resetPlayerUi ... vip =`(native vip)、`EmuCheat::loadCheat`(作弊码路径)、`POST test1 completed`/`response code`(native httpPostMemberInfo)。

关联:[[cheat-native-gate]] [[apk-mod-changes]]
