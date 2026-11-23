.class public Lcom/byazt/nys/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ae,
        0x2a
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/nys/i$c;,
        Lcom/byazt/nys/i$ve;,
        Lcom/byazt/nys/i$tt;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String;

.field public static volatile n:Lcom/byazt/nys/i;

.field public static volatile t:Lcom/bytedance/sdk/openadsdk/TTPluginListener;

.field public static final tt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/TTPluginListener;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile uj:Ldalvik/system/BaseDexClassLoader;

.field public static final ve:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/concurrent/CountDownLatch;

.field public da:Lorg/json/JSONObject;

.field public final i:Landroid/content/Context;

.field public sl:Lcom/bykv/vk/openvk/api/proto/EventListener;

.field public volatile sp:Z

.field public volatile x:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "next"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/byazt/nys/i;->c:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/byazt/nys/i;->tt:Ljava/util/HashMap;

    .line 25
    .line 26
    new-instance v0, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/byazt/nys/i;->ve:Ljava/util/HashMap;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/byazt/nys/i;->n:Lcom/byazt/nys/i;

    .line 35
    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/nys/i;->a:Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/byazt/nys/i;->sp:Z

    .line 14
    .line 15
    const-string v0, "none"

    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/nys/i;->x:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Lorg/json/JSONObject;

    .line 20
    .line 21
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/byazt/nys/i;->da:Lorg/json/JSONObject;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/byazt/nys/i;->sl:Lcom/bykv/vk/openvk/api/proto/EventListener;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/byazt/nys/i;->i:Landroid/content/Context;

    .line 34
    .line 35
    :try_start_0
    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v1}, Lcom/bytedance/pangle/GlobalParam;->closeHookHuaweiOnInit(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    const-string v1, "TTPluginManager"

    .line 45
    .line 46
    const-string v2, "Unexpected error for closeHookHuaweiOnInit."

    .line 47
    .line 48
    invoke-static {v1, v2, v0}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Lcom/byazt/nys/i;->tt(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    const-string p1, "com.byted.pangle"

    .line 59
    .line 60
    invoke-static {p1}, Lcom/bytedance/pangle/Zeus;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_0

    .line 65
    .line 66
    invoke-static {}, Lcom/byazt/lm/uj;->instance()Lcom/byazt/lm/uj;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Lcom/bytedance/pangle/plugin/Plugin;->setApiBridge(Ljava/util/function/Function;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method

.method private static c(Lorg/json/JSONObject;)Lcom/byazt/nys/i$c;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_0
    new-instance v0, Lcom/byazt/nys/i$c;

    invoke-direct {v0}, Lcom/byazt/nys/i$c;-><init>()V

    const-string v1, "package_name"

    .line 74
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/nys/i$c;->ve:Ljava/lang/String;

    const-string v1, "version_code"

    .line 75
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/byazt/nys/i$c;->uj:I

    const-string v1, "download_url"

    .line 76
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/nys/i$c;->n:Ljava/lang/String;

    const-string v1, "md5"

    .line 77
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/nys/i$c;->sp:Ljava/lang/String;

    const-string v1, "min_version"

    .line 78
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/byazt/nys/i$c;->i:I

    const-string v1, "max_version"

    .line 79
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/byazt/nys/i$c;->da:I

    const-string v1, "sign"

    .line 80
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/nys/i$c;->c:Ljava/lang/String;

    const-string v1, "is_revert"

    .line 81
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    iput v1, v0, Lcom/byazt/nys/i$c;->a:I

    .line 82
    new-instance v1, Ljava/io/File;

    const-string v2, "plugin_file"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/byazt/nys/i$c;->tt:Ljava/io/File;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lcom/byazt/nys/i;
    .locals 2

    .line 5
    sget-object v0, Lcom/byazt/nys/i;->n:Lcom/byazt/nys/i;

    if-nez v0, :cond_1

    .line 6
    const-class v0, Lcom/byazt/nys/i;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/byazt/nys/i;->n:Lcom/byazt/nys/i;

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/byazt/nys/i;

    invoke-direct {v1, p0}, Lcom/byazt/nys/i;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/byazt/nys/i;->n:Lcom/byazt/nys/i;

    .line 9
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 10
    :cond_1
    :goto_0
    sget-object p0, Lcom/byazt/nys/i;->n:Lcom/byazt/nys/i;

    return-object p0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 3

    .line 90
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 93
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 94
    aget-char v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, "."

    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 46
    :try_start_0
    invoke-static {p0, v0}, Lcom/bytedance/pangle/Zeus;->isPluginInstalled(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-static {p0, v0}, Lcom/bytedance/pangle/Zeus;->getPlugin(Ljava/lang/String;Z)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result p0

    invoke-static {p0}, Lcom/byazt/nys/i;->c(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v0, "TTPluginManager"

    const-string v1, "Get local version failed"

    .line 49
    invoke-static {v0, v1}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.union_test.toutiao"

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.pangolin_demo.toutiao"

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.bytedance.mediation_demo_csj"

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/nys/i;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nys/i;->da:Lorg/json/JSONObject;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/nys/i;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/nys/i;->tt(Ljava/lang/String;I)V

    return-void
.end method

.method private static c(Lcom/bytedance/pangle/plugin/Plugin;)V
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "TTPluginManager"

    const-string v0, "plugin is null."

    .line 83
    invoke-static {p0, v0}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 84
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "plugin_pkg_name"

    .line 86
    iget-object v2, p0, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result p0

    invoke-static {p0}, Lcom/byazt/nys/i;->c(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "plugin_version"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 89
    const-class v1, Landroid/os/Bundle;

    invoke-interface {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getExtra(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static synthetic c(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/byazt/nys/i;->ve(Ljava/lang/String;I)V

    return-void
.end method

.method public static c(Ljava/lang/Throwable;)V
    .locals 2

    .line 119
    instance-of v0, p0, Ljava/lang/AbstractMethodError;

    if-eqz v0, :cond_0

    const-string v0, "com.byted.pangle"

    .line 120
    invoke-static {v0}, Lcom/bytedance/pangle/Zeus;->unInstallPlugin(Ljava/lang/String;)V

    const-string v0, "TTPluginManager"

    const-string v1, "AbstractMethodError, rollback to builtin version."

    .line 121
    invoke-static {v0, v1}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uninstall_plugin"

    const/4 v1, 0x0

    .line 122
    invoke-static {v0, v1, p0}, Lcom/byazt/nys/a;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static c(ZLjava/lang/String;)V
    .locals 8

    .line 100
    sget-object v0, Lcom/byazt/nys/i;->tt:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTPluginListener;

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Install dl plugin "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const-string v3, " success"

    goto :goto_0

    :cond_0
    const-string v3, " failed"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", need notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TTPluginManager"

    invoke-static {v3, v2}, Lcom/byazt/bog/a;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v2, Lcom/byazt/nys/i;->ve:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    if-eqz p0, :cond_7

    .line 103
    sget-object p0, Lcom/byazt/nys/i;->t:Lcom/bytedance/sdk/openadsdk/TTPluginListener;

    .line 104
    invoke-static {p0, p1}, Lcom/byazt/nys/i;->c(Lcom/bytedance/sdk/openadsdk/TTPluginListener;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v1, :cond_2

    if-nez v4, :cond_3

    :cond_2
    return-void

    .line 105
    :cond_3
    invoke-static {p1}, Lcom/bytedance/pangle/Zeus;->loadPlugin(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 106
    invoke-static {p1}, Lcom/bytedance/pangle/Zeus;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object v3

    .line 107
    invoke-static {v3}, Lcom/byazt/nys/i;->c(Lcom/bytedance/pangle/plugin/Plugin;)V

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 108
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_4
    const/16 v4, 0x3e8

    if-eqz v1, :cond_5

    .line 109
    iget-object v6, v3, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

    iget-object v7, v3, Lcom/bytedance/pangle/plugin/Plugin;->mResources:Landroid/content/res/Resources;

    invoke-interface {v1, v4, v6, v7, v5}, Lcom/bytedance/sdk/openadsdk/TTPluginListener;->onPluginListener(ILjava/lang/ClassLoader;Landroid/content/res/Resources;Landroid/os/Bundle;)V

    .line 110
    :cond_5
    invoke-static {p0, p1}, Lcom/byazt/nys/i;->c(Lcom/bytedance/sdk/openadsdk/TTPluginListener;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 111
    iget-object v1, v3, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

    iget-object v3, v3, Lcom/bytedance/pangle/plugin/Plugin;->mResources:Landroid/content/res/Resources;

    invoke-interface {p0, v4, v1, v3, v5}, Lcom/bytedance/sdk/openadsdk/TTPluginListener;->onPluginListener(ILjava/lang/ClassLoader;Landroid/content/res/Resources;Landroid/os/Bundle;)V

    .line 112
    sput-object v5, Lcom/byazt/nys/i;->t:Lcom/bytedance/sdk/openadsdk/TTPluginListener;

    goto :goto_2

    :cond_6
    const-string p0, "handle installed, load failed"

    .line 113
    invoke-static {v3, p0}, Lcom/byazt/bog/a;->tt(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x3ea

    .line 114
    invoke-static {p1, p0}, Lcom/byazt/nys/i;->ve(Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    const-string p0, "handle installed failed"

    .line 115
    invoke-static {v3, p0}, Lcom/byazt/bog/a;->tt(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x3eb

    .line 116
    invoke-static {p1, p0}, Lcom/byazt/nys/i;->ve(Ljava/lang/String;I)V

    .line 117
    :cond_8
    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic c(Lcom/byazt/nys/i$c;)Z
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/byazt/nys/i;->tt(Lcom/byazt/nys/i$c;)Z

    move-result p0

    return p0
.end method

.method private static c(Lcom/bytedance/sdk/openadsdk/TTPluginListener;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 98
    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/TTPluginListener;->packageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/TTPluginListener;->packageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/nys/i;)Lcom/bykv/vk/openvk/api/proto/EventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nys/i;->sl:Lcom/bykv/vk/openvk/api/proto/EventListener;

    return-object p0
.end method

.method public static tt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 39
    :try_start_0
    invoke-static {p0, v0}, Lcom/bytedance/pangle/Zeus;->getPlugin(Ljava/lang/String;Z)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/bytedance/pangle/plugin/Plugin;->getInstalledMaxVer()I

    move-result p0

    if-lez p0, :cond_0

    .line 41
    invoke-static {p0}, Lcom/byazt/nys/i;->c(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, "TTPluginManager"

    const-string v0, "Get local version failed"

    .line 42
    invoke-static {p0, v0}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private tt(Landroid/content/Context;)V
    .locals 9

    const-string v0, "com.byted.mixed"

    const-string v1, "com.byted.pangle"

    const-string v2, "TTPluginManager"

    const-string v3, ""

    .line 2
    :try_start_0
    invoke-static {}, Lcom/byazt/uq/u;->c()Lcom/byazt/uq/u;

    move-result-object v4

    new-instance v5, Lcom/byazt/nys/sl;

    invoke-direct {v5}, Lcom/byazt/nys/sl;-><init>()V

    invoke-virtual {v4, v5}, Lcom/byazt/uq/u;->c(Lcom/byazt/uk/da;)V

    .line 3
    new-instance v4, Lcom/byazt/nys/i$1;

    invoke-direct {v4, p0}, Lcom/byazt/nys/i$1;-><init>(Lcom/byazt/nys/i;)V

    invoke-static {v4}, Lcom/byazt/th/n;->c(Lcom/byazt/uk/a;)V

    .line 4
    new-instance v4, Lcom/byazt/nys/i$2;

    invoke-direct {v4, p0}, Lcom/byazt/nys/i$2;-><init>(Lcom/byazt/nys/i;)V

    .line 5
    new-instance v5, Lcom/byazt/nys/i$3;

    invoke-direct {v5, p0}, Lcom/byazt/nys/i$3;-><init>(Lcom/byazt/nys/i;)V

    invoke-static {v5}, Lcom/byazt/th/n;->c(Lcom/byazt/uk/a;)V

    .line 6
    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    move-result-object v5

    .line 7
    invoke-virtual {v5, v4}, Lcom/bytedance/pangle/GlobalParam;->setReporter(Lcom/byazt/blh/c;)V

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v5, v4}, Lcom/bytedance/pangle/GlobalParam;->setCheckPermission(Z)V

    .line 9
    invoke-static {p1}, Lcom/byazt/nys/i;->ve(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/bytedance/pangle/GlobalParam;->setDownloadDir(Ljava/io/File;)V

    .line 10
    new-instance v4, Lcom/byazt/nys/i$tt;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/byazt/nys/i$tt;-><init>(Lcom/byazt/nys/i$1;)V

    invoke-virtual {v5, v4}, Lcom/bytedance/pangle/GlobalParam;->setLogger(Lcom/bytedance/pangle/log/IZeusLogger;)V

    const-string v4, "MIIDfTCCAmWgAwIBAgIEfRwYPjANBgkqhkiG9w0BAQsFADBvMQswCQYDVQQGEwJDTjEQMA4GA1UECBMHQmVpamluZzEQMA4GA1UEBxMHQmVpamluZzESMBAGA1UEChMJQnl0ZURhbmNlMQ8wDQYDVQQLEwZQYW5nbGUxFzAVBgNVBAMTDkNodWFuIFNoYW4gSmlhMB4XDTIxMTEwODA2MjQzOVoXDTQ2MTEwMjA2MjQzOVowbzELMAkGA1UEBhMCQ04xEDAOBgNVBAgTB0JlaWppbmcxEDAOBgNVBAcTB0JlaWppbmcxEjAQBgNVBAoTCUJ5dGVEYW5jZTEPMA0GA1UECxMGUGFuZ2xlMRcwFQYDVQQDEw5DaHVhbiBTaGFuIEppYTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAIBKeRL+4mfCn1SLYv6OemfwwItkjlLPyqOEugkV6lanFTcZgLwEl5LIkL0y28UncPtMX1Mii6DzCdJ/plw7S9+RT/hYDneu339IKWojaU2qai/5FokHlQ0MMnYl5yry00ghVPsl1u+03cQA2ZnjIMiFhrBJpQzHt7IYvq2aEEMBcY8uT7iFoBI848e1mL1joVS2z02C3NliP7ZNARkXH+rTQAlCJulT5IZk+V/PTaKqzgNrkhsKh0/tBmU7m8u79x/xpgGsE19H18AgS4P/9/MDCRe2Z35boZeccaUy2MXCwv3djzUcDk3rRzQPYzdpyyRnrFMuhiKesc5VHgUMs9kCAwEAAaMhMB8wHQYDVR0OBBYEFENENrNWGzc2WhxdvhoMDs57U70zMA0GCSqGSIb3DQEBCwUAA4IBAQAHqDCrmvyBBmIGXwuL1rwS/Qv9ZJIZykBIaNMm+H1IfitCl4yXd9N2n+PjE0UZtxZ21UZOt9wAr+RFiSl5YRXqpt7WLARTy4YW3RiQ+wiL7bshzeSYBoSiC427Bfeq0WjwY0/jHlr8uouppyJOz++6U9hrYX2EW/6UjH5XlWiKQJ6b2ZzPcP8Xpg/TJn4tWvXJP6jw9kRRP2GmMttY78leWQst2QEZILmWJubXRLPj9O+qx2uP9oGTD4sc1vb9hzkOHBIHzGaalqLFbbGaeFpLFHoGTsnOfPTwUVKDZYmxbkcmR1bp7eYOW+nSQNMLn0FjDewZl5l37Sa/gz0WVHon"

    .line 11
    invoke-virtual {v5, v1, v4}, Lcom/bytedance/pangle/GlobalParam;->setSignature(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "com.byted.csj.ext"

    const-string v6, "MIIDezCCAmOgAwIBAgIENkE1KDANBgkqhkiG9w0BAQsFADBtMQswCQYDVQQGEwI4NjEQMA4GA1UECBMHYmVpamluZzEQMA4GA1UEBxMHYmVpamluZzESMBAGA1UEChMJYnl0ZWRhbmNlMRIwEAYDVQQLEwlieXRlZGFuY2UxEjAQBgNVBAMTCWJ5dGVkYW5jZTAgFw0yMjExMDIwODI3MzlaGA8yMDUwMDMyMDA4MjczOVowbTELMAkGA1UEBhMCODYxEDAOBgNVBAgTB2JlaWppbmcxEDAOBgNVBAcTB2JlaWppbmcxEjAQBgNVBAoTCWJ5dGVkYW5jZTESMBAGA1UECxMJYnl0ZWRhbmNlMRIwEAYDVQQDEwlieXRlZGFuY2UwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCc9Z2F3xxOMX1qTXMy2aPmS9OSkqrp8C8bHwS1hkNVR4umKREuqOn73INNo+R706jaCVnlPwxDwWjtX6H74DE4CveivyM9f2wNC3yIyDW+5j7lW/keTQcOlGLDEJQv4O/6FbB/jNU6epjyNaNIZhgZcvTpgaSixbdyHzRTFmvMh+WovdVK/J9LnHOQ+pmPZj7NB6MQRGMUrPEotLHQca3cmnLrnPAaZQaVoaFE9lOt9syyqEuf361SprNIGDtbkJuX3EqV/QOKWFwZX94IS7ZGSvfyCojcD4kaUSbaSoZC7zEuBb7l69g+ZMrJ/v6wkm01wxsNNssUwF7k6Sp0zubbAgMBAAGjITAfMB0GA1UdDgQWBBSxk+gVdDco1dP65hP67qoKNlMEYDANBgkqhkiG9w0BAQsFAAOCAQEAfosExl/AYEbS2xqHBTHa28cvnp/SElUQuzW6aWLqkfk9cxmFSI/euUV3/eB8RN+U2X47Y05u6+XUxTv0tSSEtyXNawm0qWH8jkR4gZY38YqBChKjhea668oT5X3Uocrw7SYXO/BfI8SKPa0uI/U8Cyl3uctbmmq/pPUkd3mKAy+HgyJoThD6K0oyiADlygngUMVTv6Uvid4qPj/bBnxI+LvVeX4l1dxGqWkiafQW9sz+RbFdge3X2XsSH4eo01BsCwOYEv1lHO2FrbAtFNpnIsSqrERdFaAJZ3tlJmg9bA03png8A2AajEjkhaOhduJB8zkSlvHNpoQMIAS9WtkG/w=="

    .line 12
    invoke-virtual {v5, v4, v6}, Lcom/bytedance/pangle/GlobalParam;->setSignature(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "com.byted.live.lite"

    const-string v6, "MIIDSTCCAjGgAwIBAgIEaLy5tzANBgkqhkiG9w0BAQsFADBVMQswCQYDVQQGEwIxMTEMMAoGA1UECBMDMTExMQ4wDAYDVQQHEwUxMTExMTEMMAoGA1UEChMDMTExMQwwCgYDVQQLEwMxMTExDDAKBgNVBAMTAzExMTAeFw0yMDEyMDMxMjQyMTJaFw00NTExMjcxMjQyMTJaMFUxCzAJBgNVBAYTAjExMQwwCgYDVQQIEwMxMTExDjAMBgNVBAcTBTExMTExMQwwCgYDVQQKEwMxMTExDDAKBgNVBAsTAzExMTEMMAoGA1UEAxMDMTExMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA45E52YdkJm4gPCXZq7KDoM1h6pgSswllC/CwDOmh8pDGvX4ROaYP1vr2biRlXMHg7G0iXpxWVdlTtx+4QFd3dC+cGJQk0f6apGo2n2RpMA0zIsSf0VO1a3GjWLei5INo+4RDdciqJ4jfsoqBIjZETRkky+UU4eO/oyrAwOu4KdMln3Bg3u7eHWU4kMFrXxrRruT3Q/9gzlO90yQa0CZPWVDrk6cGJtJwJGhWm+62S3U8D26HE++eGP7ve83QBDGtKqx7HpCAFWUiYBgXGq12H0amQDkKcPcr/EFCaBlombSgkN0t6zBX80m+wcUPC75IBTmMV/DT2dXcgjZ2I1JSCQIDAQABoyEwHzAdBgNVHQ4EFgQUPDyIeKI0KhZFPHyn36gMMIYrpukwDQYJKoZIhvcNAQELBQADggEBAHkl0DoCRwn+XKsDJE+wGMpBBqUDzL6DSOnJx4SNqb7YZZU0ThcDK7jY4If3QRkvMio6ODrVZc2U/m/Tc3VeMk5h2W2UZRUWHNH3k9Xe0720uL20ZeH2Y6IG4L5HG8kIbTbFtX3gJpPG/xAcez+CzyCFLWQAZt1N+csG0syWkXJ0Nryq8VrgSCyCXD1KzFxrOe+65wtu50Vi68Vlbk7BZe/G8Qm0RhKmxq5BPMBJ4uY3be+03Ba5qC//o1XQHOEAjrJKXcN5wqHdFZTkmuxVyIPogZOzx4JlNl0zOrYGDJxp7aZfKF9FkXQyF7x0Ns3mZEtjx/+flXRzAAU9MDhPr/0="

    .line 13
    invoke-virtual {v5, v4, v6}, Lcom/bytedance/pangle/GlobalParam;->setSignature(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v4, Lcom/byazt/nys/i$4;

    invoke-direct {v4, p0}, Lcom/byazt/nys/i$4;-><init>(Lcom/byazt/nys/i;)V

    invoke-static {v4}, Lcom/bytedance/pangle/Zeus;->setDecodeCallback(Lcom/byazt/uk/t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x1

    .line 15
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "isDexPlugin"

    .line 16
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "apiVersionCode"

    const/16 v8, 0x3e8

    .line 17
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "packageName"

    .line 18
    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "hostPackageName"

    .line 19
    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "minPluginVersion"

    .line 20
    invoke-virtual {v6, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "maxPluginVersion"

    const v7, 0x3b9ac9ff

    .line 21
    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "internalPath"

    .line 22
    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "internalVersionCode"

    const/4 v7, -0x1

    .line 23
    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "appKey"

    .line 24
    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appSecretKey"

    .line 25
    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    invoke-static {v0, v6}, Lcom/bytedance/pangle/Zeus;->addPackageDexManager(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 27
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "init dex plugin config throw error "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/byazt/bog/a;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :goto_0
    invoke-virtual {v5, v4}, Lcom/bytedance/pangle/GlobalParam;->closeBgDex2oat(Z)V

    .line 29
    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/bytedance/pangle/Zeus;->init(Landroid/app/Application;)V

    .line 30
    new-instance p1, Lcom/byazt/nys/i$5;

    invoke-direct {p1, p0}, Lcom/byazt/nys/i$5;-><init>(Lcom/byazt/nys/i;)V

    invoke-static {p1}, Lcom/bytedance/pangle/Zeus;->registerPluginInstallListener(Lcom/byazt/uk/yp;)V

    .line 31
    iput-boolean v4, p0, Lcom/byazt/nys/i;->sp:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    const-string v0, "Unexpected error for init zeus."

    .line 32
    invoke-static {v2, v0, p1}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/nys/i;->x:Ljava/lang/String;

    .line 34
    :goto_1
    invoke-static {}, Lcom/bytedance/pangle/plugin/PluginManager;->getInstance()Lcom/bytedance/pangle/plugin/PluginManager;

    move-result-object p1

    const-string v0, "{apiVersionCode:7611,packageName:com.byted.pangle,minPluginVersion:7611,internalPath:\'\',internalVersionCode:7611}"

    invoke-virtual {p1, v0}, Lcom/bytedance/pangle/plugin/PluginManager;->registerPlugin(Ljava/lang/String;)V

    const-string v0, "{apiVersionCode:1000,packageName:com.byted.csj.ext,minPluginVersion:1000,maxPluginVersion:999999999,internalPath:\'\',internalVersionCode:-1,appKey:\'\',appSecretKey:\'\'}"

    invoke-virtual {p1, v0}, Lcom/bytedance/pangle/plugin/PluginManager;->registerPlugin(Ljava/lang/String;)V

    const-string v0, "{apiVersionCode:2114,packageName:com.byted.live.lite,minPluginVersion:211400,maxPluginVersion:999999,isSupportLibIsolate:true}"

    invoke-virtual {p1, v0}, Lcom/bytedance/pangle/plugin/PluginManager;->registerPlugin(Ljava/lang/String;)V

    return-void
.end method

.method private tt(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "com.byted.pangle"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    const-string v0, "TTPluginManager"

    const-string v2, "notify to end wait"

    .line 36
    invoke-static {v0, v2}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/byazt/nys/i;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 38
    :goto_0
    invoke-static {p2, p1}, Lcom/byazt/nys/i;->c(ZLjava/lang/String;)V

    return-void
.end method

.method private static tt(Lcom/byazt/nys/i$c;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/byazt/nys/i$c;->tt:Ljava/io/File;

    if-nez v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/byazt/nys/i$c;->ve:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/pangle/Zeus;->syncInstallPlugin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 53
    iget-object p0, p0, Lcom/byazt/nys/i$c;->ve:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/byazt/nys/i;->c(ZLjava/lang/String;)V

    return v0

    :cond_1
    :goto_0
    const-string p0, "TTPluginManager"

    const-string v0, "plugin config is null"

    .line 54
    invoke-static {p0, v0}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static uj(Ljava/lang/String;)Lcom/byazt/nys/i$c;
    .locals 3

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/byazt/nys/i;->c(Lorg/json/JSONObject;)Lcom/byazt/nys/i$c;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 4
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid plugin info:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TTPluginManager"

    invoke-static {v1, p0}, Lcom/byazt/bog/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static uj(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/byazt/nys/i;->ve(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic ve(Ljava/lang/String;)Lcom/byazt/nys/i$c;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/nys/i;->uj(Ljava/lang/String;)Lcom/byazt/nys/i$c;

    move-result-object p0

    return-object p0
.end method

.method private static ve(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const-string v0, "tt_pangle_bykv_file"

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1}, Lcom/byazt/nys/tt;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/byazt/nys/i;->c:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static ve(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "TTPluginManager"

    const-string v1, "plugin update failed"

    .line 4
    invoke-static {v0, v1}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "code"

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 7
    sget-object p1, Lcom/byazt/nys/i;->tt:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/TTPluginListener;

    if-eqz p0, :cond_0

    const/16 p1, 0x3e9

    const/4 v1, 0x0

    .line 8
    invoke-interface {p0, p1, v1, v1, v0}, Lcom/bytedance/sdk/openadsdk/TTPluginListener;->onPluginListener(ILjava/lang/ClassLoader;Landroid/content/res/Resources;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 39
    invoke-static {p1}, Lcom/byazt/nys/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "plugin_version"

    .line 41
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 44
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "_pl_config_info_"

    .line 45
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public c(Lcom/byazt/nys/sp;I)Ldalvik/system/BaseDexClassLoader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    iget-boolean v0, p0, Lcom/byazt/nys/i;->sp:Z

    const-string v1, "TTPluginManager"

    if-eqz v0, :cond_a

    .line 13
    invoke-static {}, Lcom/byazt/zyp/ve;->tt()Z

    move-result v0

    const-string v2, "com.byted.pangle"

    .line 14
    invoke-static {v2}, Lcom/bytedance/pangle/Zeus;->isPluginInstalled(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "Install wait time out"

    const/16 v5, 0x8

    if-nez v3, :cond_3

    if-eqz v0, :cond_0

    .line 15
    new-instance v3, Lcom/byazt/nys/x;

    iget-object v6, p0, Lcom/byazt/nys/i;->i:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/byazt/nys/x;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/byazt/nys/x;->c()V

    .line 16
    :cond_0
    iget-object v3, p0, Lcom/byazt/nys/i;->i:Landroid/content/Context;

    invoke-static {v3}, Lcom/byazt/nys/i;->uj(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->installFromDownloadDir()V

    :cond_1
    if-nez v0, :cond_2

    :try_start_0
    const-string p2, "dont wait pl"

    .line 18
    invoke-static {v1, p2}, Lcom/byazt/bog/a;->tt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "wait start"

    .line 19
    invoke-static {v1, v3}, Lcom/byazt/bog/a;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v3, p0, Lcom/byazt/nys/i;->a:Ljava/util/concurrent/CountDownLatch;

    int-to-long v6, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string p2, "wait done"

    .line 21
    invoke-static {v1, p2}, Lcom/byazt/bog/a;->tt(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "wait_install_cost"

    .line 22
    invoke-virtual {p1, p2}, Lcom/byazt/nys/sp;->tt(Ljava/lang/String;)J

    goto :goto_1

    .line 23
    :catch_0
    invoke-static {v1, v4}, Lcom/byazt/bog/a;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance p1, Lcom/byazt/nys/uj;

    const-string p2, "install wait timeout"

    invoke-direct {p1, v5, p2}, Lcom/byazt/nys/uj;-><init>(ILjava/lang/String;)V

    throw p1

    .line 25
    :cond_3
    :goto_1
    invoke-static {v2}, Lcom/bytedance/pangle/Zeus;->isPluginLoaded(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {v2}, Lcom/bytedance/pangle/Zeus;->loadPlugin(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    goto :goto_3

    .line 26
    :cond_5
    :goto_2
    invoke-static {v2}, Lcom/bytedance/pangle/Zeus;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object p2

    iget-object p2, p2, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

    sput-object p2, Lcom/byazt/nys/i;->uj:Ldalvik/system/BaseDexClassLoader;

    const/4 p2, 0x1

    :goto_3
    const-string v2, "get_classloader_cost"

    .line 27
    invoke-virtual {p1, v2}, Lcom/byazt/nys/sp;->tt(Ljava/lang/String;)J

    .line 28
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->installFromDownloadDir()V

    .line 29
    sget-object v2, Lcom/byazt/nys/i;->uj:Ldalvik/system/BaseDexClassLoader;

    if-nez v2, :cond_9

    .line 30
    iget-object v2, p0, Lcom/byazt/nys/i;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-eqz v8, :cond_7

    if-eqz v0, :cond_6

    const/16 v5, 0xa

    const-string p1, "this device does not support arm64-v8a, and install wait time out"

    goto :goto_4

    :cond_6
    const-string p1, "install wait time out"

    .line 31
    :goto_4
    invoke-static {v1, v4}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance p2, Lcom/byazt/nys/uj;

    invoke-direct {p2, v5, p1}, Lcom/byazt/nys/uj;-><init>(ILjava/lang/String;)V

    throw p2

    :cond_7
    if-nez p2, :cond_8

    goto :goto_5

    :cond_8
    const-string p1, "Get null after load"

    .line 33
    invoke-static {v1, p1}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance p2, Lcom/byazt/nys/uj;

    const/16 v0, 0x9

    invoke-direct {p2, v0, p1}, Lcom/byazt/nys/uj;-><init>(ILjava/lang/String;)V

    throw p2

    :cond_9
    :goto_5
    const-string p2, "get_classloader_done"

    .line 35
    invoke-virtual {p1, p2}, Lcom/byazt/nys/sp;->tt(Ljava/lang/String;)J

    .line 36
    sget-object p1, Lcom/byazt/nys/i;->uj:Ldalvik/system/BaseDexClassLoader;

    return-object p1

    :cond_a
    const-string p1, "Zeus init failed."

    .line 37
    invoke-static {v1, p1}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance p1, Lcom/byazt/nys/uj;

    const/4 p2, 0x4

    iget-object v0, p0, Lcom/byazt/nys/i;->x:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/byazt/nys/uj;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public c()Lorg/json/JSONObject;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/byazt/nys/i;->da:Lorg/json/JSONObject;

    return-object v0
.end method

.method public c(Lcom/bykv/vk/openvk/api/proto/EventListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/byazt/nys/i;->sl:Lcom/bykv/vk/openvk/api/proto/EventListener;

    return-void
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/TTPluginListener;)V
    .locals 8

    .line 56
    iget-boolean v0, p0, Lcom/byazt/nys/i;->sp:Z

    const-string v1, "TTPluginManager"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "Zeus init failed."

    .line 57
    invoke-static {v1, v0}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 v0, 0x3ea

    .line 58
    invoke-interface {p1, v0, v2, v2, v2}, Lcom/bytedance/sdk/openadsdk/TTPluginListener;->onPluginListener(ILjava/lang/ClassLoader;Landroid/content/res/Resources;Landroid/os/Bundle;)V

    :cond_0
    return-void

    .line 59
    :cond_1
    invoke-static {}, Lcom/byazt/qy/c;->c()Lcom/byazt/qy/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qy/c;->tt()Landroid/os/Handler;

    move-result-object v0

    .line 60
    new-instance v3, Lcom/byazt/nys/i$6;

    invoke-direct {v3, p0, p1}, Lcom/byazt/nys/i$6;-><init>(Lcom/byazt/nys/i;Lcom/bytedance/sdk/openadsdk/TTPluginListener;)V

    const-wide/32 v4, 0x2bf20

    .line 61
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTPluginListener;->packageName()Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-static {v4}, Lcom/bytedance/pangle/Zeus;->isPluginInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 64
    invoke-static {v4}, Lcom/bytedance/pangle/Zeus;->isPluginLoaded(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lcom/bytedance/pangle/Zeus;->loadPlugin(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 65
    :cond_2
    invoke-static {v4}, Lcom/bytedance/pangle/Zeus;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object v5

    goto :goto_0

    :cond_3
    move-object v5, v2

    .line 66
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Find plugin:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/byazt/bog/a;->tt(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_5

    .line 67
    invoke-static {v5}, Lcom/byazt/nys/i;->c(Lcom/bytedance/pangle/plugin/Plugin;)V

    .line 68
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    iget-object v0, v5, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

    iget-object v1, v5, Lcom/bytedance/pangle/plugin/Plugin;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x3e8

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTPluginListener;->onPluginListener(ILjava/lang/ClassLoader;Landroid/content/res/Resources;Landroid/os/Bundle;)V

    return-void

    .line 70
    :cond_5
    sget-object v1, Lcom/byazt/nys/i;->tt:Ljava/util/HashMap;

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object p1, Lcom/byazt/nys/i;->ve:Ljava/util/HashMap;

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public tt()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/byazt/nys/i;->sl:Lcom/bykv/vk/openvk/api/proto/EventListener;

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/byazt/rl/tt;->c()Lcom/byazt/rl/tt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/byazt/rl/tt;->c(Z)Lcom/byazt/rl/tt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/rl/tt;->tt()Lcom/bykv/vk/openvk/api/proto/Result;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/bykv/vk/openvk/api/proto/EventListener;->onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    :cond_0
    return-void
.end method

.method public tt(Lcom/bytedance/sdk/openadsdk/TTPluginListener;)V
    .locals 4

    .line 43
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTPluginListener;->packageName()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/bytedance/pangle/Zeus;->isPluginInstalled(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 45
    invoke-static {v0}, Lcom/bytedance/pangle/Zeus;->isPluginLoaded(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/pangle/Zeus;->loadPlugin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    :cond_0
    invoke-static {v0}, Lcom/bytedance/pangle/Zeus;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 47
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Find plugin:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TTPluginManager"

    invoke-static {v3, v1}, Lcom/byazt/bog/a;->tt(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 48
    invoke-static {v0}, Lcom/byazt/nys/i;->c(Lcom/bytedance/pangle/plugin/Plugin;)V

    .line 49
    iget-object v1, v0, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

    iget-object v0, v0, Lcom/bytedance/pangle/plugin/Plugin;->mResources:Landroid/content/res/Resources;

    const/16 v3, 0x3e8

    invoke-interface {p1, v3, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTPluginListener;->onPluginListener(ILjava/lang/ClassLoader;Landroid/content/res/Resources;Landroid/os/Bundle;)V

    return-void

    .line 50
    :cond_3
    sput-object p1, Lcom/byazt/nys/i;->t:Lcom/bytedance/sdk/openadsdk/TTPluginListener;

    return-void
.end method
