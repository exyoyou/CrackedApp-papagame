# papa / mgsim.wufun APK 改机笔记

> 包名 `com.join.android.app.mgsim.wufun`(papa 聚合模拟器 / 云游戏平台)
> 反编译目录即本目录(apktool 3.0.3,`apktool.yml` 在根)
> 最后更新:2026-11-23

---

## 一、本次改了哪些(smali)

所有改动都是把对应方法/赋值**强制成固定值**。

### 1. VIP 会员状态(✅ 本地有效)
| 文件 | 方法 | 改动 |
|---|---|---|
| `smali_classes8/com/wufan/user/service/protobuf/NewMemberInfo.smali` | `getIsVip()Z` | 恒 `true`(`const/4 v0,0x1`) |
| `smali_classes3/com/join/mgps/dto/AccountBean$MemberInfo.smali` | `isVip()Z` | 恒 `true` |

### 2. 实名 / 防沉迷(✅ 本地有效,数据类方案)
| 文件 | 方法 | 改动 |
|---|---|---|
| `smali_classes2/com/papa91/arc/bean/PopwindowBean.smali` | `getPopup()` + `isPopup()` | 恒 `false`(`popup:Z` 的两处 `iget-boolean`→`const/4 v0,0x0`) |
| `smali_classes8/com/wufan/user/service/protobuf/UserInfo.smali` | `getIsRealName()I` | 恒 `1` |

> 注:`PopwindowBean` 是服务器下发的"启动游戏弹窗"响应类,控制实名弹窗 + 强退(FC/PSP 两套模拟器都读它)。
> `UserInfo.getIsRealName` 管主程序进游戏前的实名登录框(`IntentUtil:11283` 门)。
> 期间曾在 `EmuBaseActivity`/`EmuActivity_psp` 的 `checkRealName`/`showRealNameResult` 里塞过 `return-void`/`nop`,**后来已全部回退**,改走上面的数据类方案。

### 3. 模拟器内 VIP 权益显示门(✅ 对纯客户端功能有效)
| 文件 | 方法 | 改动 |
|---|---|---|
| `smali_classes2/com/papa91/activity/EmuMenuBaseActivity.smali` | `getVip()I` | 恒 `0xa` |
| `smali_classes2/com/papa91/arc/EmuActivity_psp.smali` | `getVip()I` | 恒 `0xa` |

> `getVip()` 是菜单统一的 VIP 等级出口;`SettingDialog.getVip()` 转发到它。比较逻辑是 `if-lez`(>0 即 VIP),SNK 游戏本来就写死 `0xa`。

### 4. VIP 数值等级链(调试金手指时加的)
| 文件 | 方法/位置 | 改动 | 说明 |
|---|---|---|---|
| `smali_classes8/.../UserInfo.smali` | `getSVIPLevel()I` / `getVipLevel()I` | 恒 `0xa` | `getSVIPLevel` 有效(喂 sVipLevel);`getVipLevel` **对 FC 启动路径无效**(见下) |
| `smali_classes3/.../AccountBean.smali` | `getSvip_level()I` / `getVip_level()I` | 恒 `0xa` | 缓存层,顺带改 |
| `smali_classes2/com/papa91/arc/EmuActivity_fc.smali` | `m_VIP` 赋值(~3955) | 读完 JSON 后强制 `const/16 v0,0xa` | 仍未让 native `vip` 变 10(native 另有来源) |
| `smali_classes4/com/join/mgps/Util/UtilsMy.smali` | `setVipLevel` 前(~41513) | 强制 `const/16 v0,0xa` | 启动元数据 vipLevel |
| `smali_classes2/.../EmuMenuBaseActivity.smali` | `getCheatLoaded()I` | 恒 `1` | 去掉"获取金手指配置"提示;**但不能让金手指真正生效** |

> 第 4 组对**金手指无实际作用**(门在 native,见第三节)。可保留(无害)也可回退。

---

## 二、整体结论:本地改能/不能生效

| 权益 | 判定层 | 功能执行 | 本地(smali)能否生效 |
|---|---|---|---|
| VIP 会员标识 | 客户端布尔 | 客户端 | ✅ 能 |
| 实名/防沉迷弹窗 | 客户端(PopwindowBean/UserInfo) | 客户端 | ✅ 能 |
| 模拟器纯客户端 VIP 功能 | `getVip()` | 客户端 | ✅ 能 |
| **金手指 / 一键定制** | **native(cocos)VCLoaded** | **native,服务器授权** | ❌ **不能** |
| 云游戏时长/算力/专线 | 服务器 | 服务器 | ❌ 不能 |

---

## 三、金手指为什么本地改不动(已挖到 native)

### 调用链
```
点金手指开关 (SettingCheatDialog$ExpandableListviewAdapter$1.onClick)
  getVip()>0 (已满足)  →  getCheatLoaded()==1 才继续
  → SettingDialog.cheatInfoEnable(pos,en)
  → EmuBaseActivity.cheatEnable(pos,en)   ← Java native 方法(注册在 libcocos2dcpp.so)
  → 【这里被 cocos native 内部拦截:查 VCLoaded，==0 直接 return】
  → 未到达 libnes.so 的 emu_CheatEnable
```

### frida 实测(决定性证据)
- `cheatInfos` 内存里**有 28 条**(金手指名字列表,来自本地 `hdl1.ini`)。
- `getVCLoaded()` 返回 **0** → UI 弹"正在获取金手指配置"卡住。
- 强制 `getCheatLoaded→1` + `getVip→10` + `setVipType(10,10)` 后:
  - Java `cheatEnable(pos,1)` **确实被调用**;
  - 但 native `libnes.so::emu_CheatEnable` **0 次调用**(`CheatCodeProcess` 每帧跑 1328 次正常,但没有任何 cheat 被 enable);
  - 游戏里**无效果**。
- 结论:拦截发生在 **libcocos2dcpp.so** 对 `cheatEnable` 的 JNI 实现里,它查 `VCLoaded` 不通过就不转发给 libnes。

### 关键事实
- `VCLoaded` 由 native `httpPostMemberInfo()`(向服务器要会员授权)设置;服务器按**真实账号**判定,非会员 → `VCLoaded=0`。
- **作弊码其实在本地**:`.../files/wufan91/35/roms/hdl1/hdl1.lob` 是加密 ZIP(内含 `hdl1_1.lob`),libnes 自带 LZMA/7z 解压(`LzmaDec_DecodeToDic`/`SzFolder_Decode`)。`hdl1.ini` 只有名字和"关闭/开启"标签,没有码。
- 所以不是"数据缺失",是"cocos native 层不放行"。

### native 符号(libnes.so,arm64-v8a)
路径:`/data/data/com.join.android.app.mgsim.wufun/app_jniLibs/35/537_5.3.7.0/arm64-v8a/`
- `libnes.so` — NES 核心,导出:
  - `emu_CheatEnable`、`emu_CheckCheatCode`
  - `_ZN3NES9GenieLoadEPc`(GenieLoad,加载码)
  - `_ZN3NES16CheatCodeProcessEv`(CheatCodeProcess,逐帧应用)
  - `_ZN3NES12CheatInitialEv`、`_ZN3NES14IsCheatCodeAddEv`、`_ZN3NES11GenieDecodeEPKcR9GENIECODE`
- `libcocos2dcpp.so`(83MB)— cocos 层,**JNI 注册了 `cheatEnable`/`getVCLoaded`/`httpPostMemberInfo`,VCLoaded 门就在这里面**(RegisterNatives 动态注册,非 `Java_*` 导出)。

---

## 四、下一步(native 路线,二选一)

目标:让 cocos 层 `cheatEnable` 不检查 VCLoaded、直接转发到 libnes `emu_CheatEnable`,并确保 `GenieLoad` 把本地 `hdl1.lob` 的码加载进去。

1. **常驻 frida native 脚本**(快,不改包,但每次要 root+frida 起):
   - 在 libcocos2dcpp.so 里定位 `cheatEnable` 的 JNI 实现(可从 `RegisterNatives` 入手,或 hook Java native 方法拿到实现地址 `Module.findExportByName` 对 `getVCLoaded` 的 native 做 Interceptor.replace 返回 1,再看 cheatEnable 是否放行)。
   - 若 cheatEnable 内部直接查全局 VCLoaded,Interceptor 把该分支/该函数返回值改掉。
2. **patch libcocos2dcpp.so**(做成干净可装包):定位同一处判断,nop 掉分支。需要对 83MB 库做静态逆向(IDA/Ghidra)。

**起点建议**:先 hook native `getVCLoaded`(replace 返回 1)+ 手动调 `GenieLoad`/`emu_CheatEnable`,验证"只要放行就能生效",再决定脚本还是 patch。

---

## 五、工具与环境

- **设备**:`eba9a483`(GM1911,arm64-v8a,已 root)。frida-server **17.27.4** 常驻 `/data/local/tmp/frida-server`(以 root 运行)。
- **主机 frida**(venv,版本对齐 17.27.4):
  `/tmp/claude-1000/.../scratchpad/fridaenv/bin/frida`(临时目录,可能被清;重建:`python3 -m venv fridaenv && ./fridaenv/bin/python -m pip install frida==17.27.4 frida-tools`)
- **打包工具**(`/home/youyou/.apklab/`):`apktool_3.0.3.jar`、`uber-apk-signer-1.3.0.jar`、`jadx-1.5.6`、`smali-lsp-2.2.0.jar`。
- **进程**:主程序 `com.join.android.app.mgsim.wufun`;FC 模拟器子进程 `:fc`(cocos);还有 `:mind`。各模拟器核心独立进程。
- **常用排查**:
  - 中文串搜 smali:用 `\uXXXX` 转义(如 实名=`实名`)。
  - 关键 logcat:`YVLayer::resetPlayerUi ... vip =`(native vip 值)、`EmuCheat::loadCheat`(作弊码加载)、`POST test1 completed`/`response code`(native httpPostMemberInfo)。
  - FC 核心 so 目录见第三节。

---

## 六、重打包提醒
改完 smali → `apktool b` 回编译 → `uber-apk-signer` 签名 → `adb install -r`。注意 VIP/实名已验证有效;金手指需 native 路线。
