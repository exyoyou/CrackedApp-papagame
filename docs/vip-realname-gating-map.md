---
name: vip-realname-gating-map
description: "Where VIP / real-name / cheat gating lives in this papa/mgps smali APK, and which gates are client-side vs server-side"
metadata:
  node_type: memory
  type: reference
  originSessionId: f75138aa-f752-44dd-b280-d7b207e56b11
  modified: 2026-11-23T10:22:29.627Z
---

papa/mgps 模拟器 APK 的权益门控分布(smali 反编译)。判断"本地改能不能生效"的依据:门是客户端布尔/整数 + 功能本地执行 → 可绕;数据/算力来自服务器 → 不可绕。

**会员(VIP)状态**
- `NewMemberInfo.getIsVip()Z`(服务器下发)→ 在 `AccountBean.smali:~834` setVip 进 `AccountBean$MemberInfo`。
- `AccountBean$MemberInfo.isVip()Z` 读本地缓存字段。
- 好友/线路/对战的 isVip/getVip 是显示用,与本人无关。

**实名/防沉迷 —— 两套独立来源**
- 账号数据:`UserInfo.getIsRealName()I`(→ `AccountBean.is_real_name`)。主程序进游戏前的实名登录框 gate 在 `IntentUtil.smali:~11283`(`getIsRealName()==0` 且 `LoginCfgsBean.is_open_certify==1` 才弹)。
- 服务器弹窗:`com.papa91.arc.bean.PopwindowBean`,每次启动游戏现发 HTTP(`checkRealName`)拿到。模拟器 `EmuBaseActivity.handleCheckNameResult` / `EmuActivity_psp` 完全靠 `PopwindowBean.getPopup()`/`isPopup()` 决定弹窗与强退。**不读 UserInfo/AccountBean。** 这才是"每次启动游戏弹+不认证强退"的来源。

**模拟器内 VIP 权益(金手指/一键/功能解锁)—— 客户端,可绕**
- 统一出口:`getVip()I`。`EmuMenuBaseActivity.getVip()`(fc/gba/sfc/wsc 等核心继承)和 `EmuActivity_psp.getVip()`(独立,继承 PpssppActivity)。SNK 游戏写死返回 0xa。返回 `m_VIP`(宿主通过 Intent/广播 extra `vipLevel`/`sVipLevel` 传入)。gate 比较是 `if-lez`。
- 弹窗类 `SettingDialog.getVip()` 转发给 `IEmulator.getVip()` → 上面两个。
- 非 VIP 时弹 `SettingVipTipDialog`(CheatingAdapter/OneKeyAdapter/GateAdapter)。
- 金手指执行是 PPSSPP native(`addEditCheatInfo`,`IEmulator.getCheatListData()`),应用时无服务端校验 → 改 getVip 恒 0xa 真能用。

**云游戏权益 —— 服务器,本地改无效**(算力/时长/专线在服务端校验)。

关联:[[apk-mod-changes]] [[cheat-native-gate]] [[frida-apklab-setup]]
