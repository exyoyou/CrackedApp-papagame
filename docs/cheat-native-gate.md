---
name: cheat-native-gate
description: "金手指(cheat)在 papa APK 里被 native cocos 层按服务器会员卡住,smali 改不动;native 路线起点"
metadata:
  node_type: memory
  type: project
  originSessionId: f75138aa-f752-44dd-b280-d7b207e56b11
  modified: 2026-11-23T10:21:54.390Z
---

papa APK(com.join.android.app.mgsim.wufun)的**金手指本地(smali)改不出来**,门在 native。

**调用链**:点开关 → `SettingCheatDialog$...$1.onClick`(查 `getVip()>0` + `getCheatLoaded()==1`)→ `SettingDialog.cheatInfoEnable` → `EmuBaseActivity.cheatEnable(II)`(Java native,注册在 libcocos2dcpp.so)→ **cocos native 内部查 VCLoaded,==0 直接 return,不转发 libnes** → 无效果。

**frida 实测(2026-11-23,设备 eba9a483,frida-server 17.27.4)**:
- `EmuBaseActivity.cheatInfos` 内存有 28 条(名字,来自本地 `hdl1.ini`,ini 里**没有码**只有名字+开关标签)。
- `getVCLoaded()` 返回 0 → UI 卡"正在获取金手指配置"。
- 强制 `getCheatLoaded→1`+`getVip→10`+`setVipType(10,10)` 后:Java `cheatEnable(pos,1)` 被调,但 **libnes `emu_CheatEnable` 0 次调用**(`CheatCodeProcess` 每帧跑,正常),游戏无效果 → 拦截在 cocos 层。
- `VCLoaded` 由 native `httpPostMemberInfo()`(服务器会员授权)设置,非会员→0。

**作弊码其实在本地**:`.../files/wufan91/35/roms/<game>/<game>.lob` 是加密 ZIP,libnes 自带 LZMA/7z 解压。不是缺数据,是 cocos 不放行。

**native 符号**(`app_jniLibs/35/537_5.3.7.0/arm64-v8a/`):
- `libnes.so`:`emu_CheatEnable`、`emu_CheckCheatCode`、`_ZN3NES9GenieLoadEPc`(GenieLoad)、`_ZN3NES16CheatCodeProcessEv`(CheatCodeProcess)、`_ZN3NES12CheatInitialEv`。
- `libcocos2dcpp.so`(83MB):`cheatEnable`/`getVCLoaded`/`httpPostMemberInfo` 的 JNI 实现(RegisterNatives 动态注册),**VCLoaded 门在此**。

**下一步**:hook native `getVCLoaded` 返回 1(或改 cocos cheatEnable 的 VCLoaded 分支)+ 确保 `GenieLoad` 加载本地 .lob → 验证"放行即生效",再决定常驻 frida 脚本 or patch .so。详见项目根 `MOD_NOTES.md`。

关联:[[vip-realname-gating-map]] [[apk-mod-changes]] [[frida-apklab-setup]]
