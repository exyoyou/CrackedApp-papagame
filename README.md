# CrackedApp-papagame

papa 聚合模拟器 / 云游戏(`com.join.android.app.mgsim.wufun`)的改机工程。

## 仓库结构

- **`master`(默认分支)**:只放文档(本 README、[MOD_NOTES.md](MOD_NOTES.md)、[docs/](docs/))和 GitHub Actions 工作流([.github/workflows/build.yml](.github/workflows/build.yml))。**不含反编译源码,不产出 APK。**
- **版本分支**(如 `6.1.7.0`,名字 = 该包 versionName):存放对应版本的 apktool 反编译 + 改机源码,并携带同一个 workflow。

## 自动打包(GitHub Actions)

每当有分支被 push:
- 若分支含 `apktool.yml`(即版本分支)→ 自动 `apktool b` 回编译 + `uber-apk-signer` 签名 → 在 **Releases** 里创建/更新一个 **tag = 分支名** 的发布,**只放一个 APK**(`papagame-<分支名>.apk`,同名覆盖)。
- 若分支无 `apktool.yml`(如 master)→ 跳过,不打包。

> GitHub Actions 约束:push 触发时运行的是**被 push 分支里**的 workflow 文件。所以每个版本分支都必须带 `.github/workflows/build.yml`。

## 新增一个版本

```bash
# 从已有版本分支切出(带上 workflow),再替换成新版反编译源码
git checkout -b <新versionName> 6.1.7.0
# ... 用新版 apktool 反编译源码覆盖本目录(保留 .github/)...
git add -A && git commit -m "<新versionName> 初始"
git push -u origin <新versionName>
# push 后 Actions 自动在 Releases 发布 papagame-<新versionName>.apk
```

## 配置签名(首次必做)

工作流用你自己的 keystore 签名,需在仓库 **Settings → Secrets and variables → Actions** 添加:

| Secret | 含义 |
|---|---|
| `KEYSTORE_BASE64` | keystore 文件的 base64(`base64 -w0 your.jks`) |
| `KEYSTORE_PASSWORD` | keystore 密码 |
| `KEY_ALIAS` | key 别名 |
| `KEY_PASSWORD` | key 密码 |

## 改了什么

见 [MOD_NOTES.md](MOD_NOTES.md):VIP、实名/防沉迷已本地绕过;金手指受 native(cocos VCLoaded)限制,smali 改不动(详见文档)。
