.class public Lcom/join/mgps/mod/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "Plugin"

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:Ljava/lang/String; = "arm64"

.field public static final e:Ljava/lang/String; = "armeabi"

.field public static final f:Ljava/lang/String; = "x86"

.field public static final g:Ljava/lang/String; = "mips"

.field public static final h:Ljava/lang/String; = "plugin_configs"

.field public static final i:Ljava/lang/String; = "pluginLib"

.field public static final j:Ljava/lang/String; = "Plugin"

.field public static final k:Ljava/lang/String; = "PluginEntryData"

.field public static final l:Ljava/lang/String; = "useNativeLib"

.field public static final m:Ljava/lang/String; = "soCode"

.field public static final n:Ljava/lang/String; = "soVersion"

.field public static final o:Ljava/lang/String; = "launchPackage"

.field public static final p:Ljava/lang/String; = "hostPlatform"

.field public static final q:Ljava/lang/String; = "hostFlavor"

.field public static final r:Ljava/lang/String; = "hostTargetVersion"

.field public static final s:Ljava/lang/String; = "com.join.android.app.mgsim.wufun"

.field public static final t:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.soCopyStart"

.field public static final u:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.soCopyFinish"

.field public static final v:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.soCopyFail"

.field public static final w:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.loadMod"

.field public static final x:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.launchEngine"

.field public static final y:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.exitGame"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "libGGGG.so"

    .line 2
    .line 3
    const-string v1, "libpgod.so"

    .line 4
    .line 5
    const-string v2, "libctrl.so"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/join/mgps/mod/utils/d;->b:[Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "libtolua.so"

    .line 14
    .line 15
    filled-new-array {v0}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/join/mgps/mod/utils/d;->c:[Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
