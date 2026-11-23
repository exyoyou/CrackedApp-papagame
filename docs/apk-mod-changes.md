---
name: apk-mod-changes
description: "papa APK 本次会话改了哪些 smali、哪些生效/无效,完整清单见项目根 MOD_NOTES.md"
metadata:
  node_type: memory
  type: project
  originSessionId: f75138aa-f752-44dd-b280-d7b207e56b11
  modified: 2026-11-23T10:22:08.076Z
---

papa APK 改机(2026-11-23)已应用的 smali 改动。**完整表格 + 行号见项目根 `MOD_NOTES.md`**(优先看它)。

**有效(本地能生效)**:
- VIP:`NewMemberInfo.getIsVip()`、`AccountBean$MemberInfo.isVip()` → true。
- 实名/防沉迷:`PopwindowBean.getPopup()/isPopup()` → false;`UserInfo.getIsRealName()` → 1。(曾改 `checkRealName`/`showRealNameResult` 的 return/finish,已回退改走数据类。)
- 模拟器显示门:`EmuMenuBaseActivity.getVip()`、`EmuActivity_psp.getVip()` → 0xa。

**对金手指无效(门在 native,见 [[cheat-native-gate]])**:
- `UserInfo.getSVIPLevel/getVipLevel`、`AccountBean.getSvip_level/getVip_level` → 0xa(其中 FC 的 vipLevel 实际走加密 `b.vl`,getVipLevel 白改)。
- `EmuActivity_fc` 的 m_VIP 赋值强制 0xa;`UtilsMy` setVipLevel 前强制 0xa;`EmuMenuBaseActivity.getCheatLoaded()` → 1(只去掉提示,不生效)。这些可保留(无害)或回退。

**重打包**:apktool b → uber-apk-signer → adb install -r(工具见 [[frida-apklab-setup]])。

关联:[[vip-realname-gating-map]] [[cheat-native-gate]]
