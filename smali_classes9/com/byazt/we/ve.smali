.class public final Lcom/byazt/we/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x394,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/we/ve$tt;,
        Lcom/byazt/we/ve$ve;,
        Lcom/byazt/we/ve$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Landroid/util/SparseArray<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TTLiveSDkBridge"

.field public static final c:Lcom/byazt/we/ve;


# instance fields
.field public volatile n:Lcom/bytedance/android/live/base/api/ILiveInitCallback;

.field public volatile tt:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile uj:Lcom/byazt/we/ve$ve;

.field public ve:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/we/ve;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/we/ve;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/we/ve;->c:Lcom/byazt/we/ve;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1

    .line 8
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 9
    check-cast p1, Landroid/os/Bundle;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/we/ve;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/we/ve;->ve:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/we/ve;Z)Ljava/util/Map;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/we/ve;->c(Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "live_tob_init_extra"

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Ljava/util/Map;

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method private c(Z)Ljava/util/Map;
    .locals 2

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "onlyUpdateState"

    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/we/ve;)Ljava/util/function/Function;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/we/ve;->tt:Ljava/util/function/Function;

    return-object p0
.end method

.method private getContext(Ljava/lang/Object;)Landroid/content/Context;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/content/Context;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method

.method public static instance()Lcom/byazt/we/ve;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/we/ve;->c:Lcom/byazt/we/ve;

    .line 2
    .line 3
    return-object v0
.end method

.method private n(Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "scheme_uri"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    const-string v1, "context"

    .line 19
    .line 20
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Lcom/byazt/we/ve;->getContext(Ljava/lang/Object;)Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {p1, v0}, Lcom/byazt/we/tt;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_2
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    return-object p1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    const-string v0, "handleLiveScheme"

    .line 51
    .line 52
    invoke-static {v0, p1}, Lcom/byazt/we/ve;->reportException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    new-array v0, v0, [Ljava/lang/Object;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    aput-object p1, v0, v1

    .line 60
    .line 61
    const-string p1, "TTLiveSDkBridge"

    .line 62
    .line 63
    invoke-static {p1, v0}, Lcom/byazt/bog/a;->tt(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 67
    .line 68
    return-object p1
.end method

.method public static reportException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-instance v2, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v3, "scene"

    .line 12
    .line 13
    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const-string p0, "msg"

    .line 19
    .line 20
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string p1, "action"

    .line 33
    .line 34
    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    const-string p1, "event_name"

    .line 38
    .line 39
    const-string v3, "exception"

    .line 40
    .line 41
    invoke-virtual {p0, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p1, "event_extra"

    .line 45
    .line 46
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-class p1, Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-interface {v1, p1, p0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getExtra(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catch_0
    move-exception p0

    .line 60
    new-array p1, v0, [Ljava/lang/Object;

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    aput-object p0, p1, v0

    .line 64
    .line 65
    const-string p0, "TTLiveSDkBridge"

    .line 66
    .line 67
    invoke-static {p0, p1}, Lcom/byazt/bog/a;->tt(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public static toBridge(Lcom/bytedance/sdk/openadsdk/ILiveAdCustomConfig;)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/ILiveAdCustomConfig;",
            ")",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/we/ve$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/we/ve$c;-><init>(Lcom/bytedance/sdk/openadsdk/ILiveAdCustomConfig;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic tt(Lcom/byazt/we/ve;)Lcom/byazt/we/ve$ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/we/ve;->uj:Lcom/byazt/we/ve$ve;

    return-object p0
.end method

.method private tt(Ljava/util/Map;)V
    .locals 4

    .line 2
    new-instance v0, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    invoke-direct {v0}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;-><init>()V

    const-string v1, "app_name"

    .line 3
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setAppName(Ljava/lang/String;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v0

    const-string v1, "channel"

    .line 4
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setChannel(Ljava/lang/String;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v0

    const-string v1, "ec_host_appid"

    .line 5
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setECHostAppId(Ljava/lang/String;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v0

    const-string v1, "partner"

    .line 6
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setPartner(Ljava/lang/String;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v0

    new-instance v1, Lcom/byazt/we/ve$1;

    invoke-direct {v1, p0}, Lcom/byazt/we/ve$1;-><init>(Lcom/byazt/we/ve;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->provideMethodChannel(Lcom/bytedance/android/live/base/api/MethodChannelService;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v0

    const-string v1, "p_secret"

    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setPartnerSecret(Ljava/lang/String;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v0

    new-instance v1, Lcom/byazt/jh/c;

    .line 9
    invoke-direct {p0, p1}, Lcom/byazt/we/ve;->ve(Ljava/util/Map;)Ljava/util/function/Function;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/byazt/jh/c;-><init>(Ljava/util/function/Function;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setHostPermission(Lcom/bytedance/android/live/base/api/IHostPermission;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v0

    new-instance v1, Lcom/byazt/jh/tt;

    iget-object v2, p0, Lcom/byazt/we/ve;->tt:Ljava/util/function/Function;

    invoke-direct {v1, v2}, Lcom/byazt/jh/tt;-><init>(Ljava/util/function/Function;)V

    .line 10
    invoke-virtual {v0, v1}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setHostActionParam(Lcom/bytedance/android/live/base/api/ILiveHostActionParam;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v0

    .line 11
    invoke-direct {p0, p1}, Lcom/byazt/we/ve;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->addHostInitExtra(Ljava/util/Map;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/byazt/we/ve;->ve:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v0, v1}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->addHostInitExtra(Ljava/util/Map;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/byazt/we/ve;->n:Lcom/bytedance/android/live/base/api/ILiveInitCallback;

    if-nez v1, :cond_1

    .line 15
    new-instance v1, Lcom/byazt/we/ve$tt;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/byazt/we/ve$tt;-><init>(Lcom/byazt/we/ve;Lcom/byazt/we/ve$1;)V

    iput-object v1, p0, Lcom/byazt/we/ve;->n:Lcom/bytedance/android/live/base/api/ILiveInitCallback;

    .line 16
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_2

    .line 17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;->setContext(Landroid/app/Application;)Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    :cond_2
    const-string v1, "sub_process"

    .line 18
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "g_appid"

    .line 21
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/byazt/we/ve;->n:Lcom/bytedance/android/live/base/api/ILiveInitCallback;

    .line 22
    invoke-static {v2, p1, v0, v3, v1}, Lcom/byazt/we/tt;->c(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;Lcom/bytedance/android/live/base/api/ILiveInitCallback;Z)Z

    move-result p1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "execute live sdk initLive method end, (\u65b9\u6cd5\u987a\u5229\u6267\u884c\u7ed3\u679c)result: "

    aput-object v3, v0, v2

    const/4 v2, 0x1

    .line 23
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v2

    const/4 p1, 0x2

    const-string v2, " subProcess="

    aput-object v2, v0, p1

    const/4 p1, 0x3

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "TTLiveSDkBridge"

    .line 25
    invoke-static {p1, v0}, Lcom/byazt/bog/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private uj(Ljava/util/Map;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    const-string v2, "expand_method_name"

    .line 4
    .line 5
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    .line 11
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    invoke-static {}, Lcom/bytedance/android/openliveplugin/LivePluginHelper;->getLiveRoomService()Lcom/bytedance/android/live/base/api/IOuterLiveService;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string v4, "expand_method_param"

    .line 23
    .line 24
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, [Ljava/lang/Object;

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    :goto_0
    array-length v5, p1

    .line 34
    if-ge v4, v5, :cond_2

    .line 35
    .line 36
    aget-object v5, p1, v4

    .line 37
    .line 38
    invoke-static {v5}, Ln0/b;->a(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    new-instance v5, Lcom/byazt/we/c;

    .line 45
    .line 46
    aget-object v6, p1, v4

    .line 47
    .line 48
    invoke-static {v6}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-direct {v5, v6}, Lcom/byazt/we/c;-><init>(Ljava/util/function/Function;)V

    .line 53
    .line 54
    .line 55
    aput-object v5, p1, v4

    .line 56
    .line 57
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-interface {v3, v2, p1}, Lcom/bytedance/android/live/base/api/IOuterLiveRoomService;->callExpandMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    .line 66
    .line 67
    invoke-interface {v3, v2, p1}, Lcom/bytedance/android/live/base/api/IOuterLiveRoomService;->callExpandMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    return-object p1

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_1

    .line 74
    :catchall_1
    move-exception p1

    .line 75
    move-object v2, v1

    .line 76
    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v3, "invokeLiveExpandMethod-"

    .line 81
    .line 82
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {v2, p1}, Lcom/byazt/we/ve;->reportException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    const/4 v2, 0x1

    .line 90
    new-array v2, v2, [Ljava/lang/Object;

    .line 91
    .line 92
    aput-object p1, v2, v0

    .line 93
    .line 94
    const-string p1, "TTLiveSDkBridge"

    .line 95
    .line 96
    invoke-static {p1, v2}, Lcom/byazt/bog/a;->tt(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    return-object v1
.end method

.method private ve(Ljava/util/Map;)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "c_control"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/byazt/hj/z;->c(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method


# virtual methods
.method public apply(Landroid/util/SparseArray;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/byazt/rl/ve;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/rl/ve;->tt()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    const v0, -0x5f5e0f3

    .line 3
    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v1

    const v2, -0x5f5e0f2

    const/4 v3, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x5

    .line 4
    const-class v4, Ljava/util/Map;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq v1, v2, :cond_5

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    .line 5
    invoke-interface {p1, v6, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, v1, p1}, Lcom/byazt/we/ve;->callMethod(ILjava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    const-class v1, Ljava/lang/Object;

    invoke-interface {p1, v6, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/hj/z;->c(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/we/ve;->tt:Ljava/util/function/Function;

    .line 7
    iget-object p1, p0, Lcom/byazt/we/ve;->uj:Lcom/byazt/we/ve$ve;

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/byazt/we/ve;->uj:Lcom/byazt/we/ve$ve;

    iget p1, p1, Lcom/byazt/we/ve$ve;->c:I

    if-eq p1, v3, :cond_2

    iget-object p1, p0, Lcom/byazt/we/ve;->uj:Lcom/byazt/we/ve$ve;

    iget p1, p1, Lcom/byazt/we/ve$ve;->c:I

    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/byazt/we/ve;->uj:Lcom/byazt/we/ve$ve;

    iget p1, p1, Lcom/byazt/we/ve$ve;->c:I

    if-eqz p1, :cond_4

    .line 10
    iget-object v6, p0, Lcom/byazt/we/ve;->uj:Lcom/byazt/we/ve$ve;

    iget-object p1, p0, Lcom/byazt/we/ve;->uj:Lcom/byazt/we/ve$ve;

    iget v7, p1, Lcom/byazt/we/ve$ve;->c:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static/range {v6 .. v11}, Lcom/byazt/we/ve$ve;->c(Lcom/byazt/we/ve$ve;ILjava/lang/ClassLoader;Landroid/content/res/Resources;Landroid/os/Bundle;Z)V

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/byazt/we/ve;->uj:Lcom/byazt/we/ve$ve;

    iget-object v0, p0, Lcom/byazt/we/ve;->uj:Lcom/byazt/we/ve$ve;

    iget v0, v0, Lcom/byazt/we/ve$ve;->c:I

    iget-object v1, p0, Lcom/byazt/we/ve;->uj:Lcom/byazt/we/ve$ve;

    iget-object v1, v1, Lcom/byazt/we/ve$ve;->tt:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/byazt/we/ve$ve;->c(Lcom/byazt/we/ve$ve;ILjava/lang/String;Z)V

    goto :goto_1

    .line 12
    :cond_3
    new-instance p1, Lcom/byazt/we/ve$ve;

    invoke-direct {p1, p0, v5}, Lcom/byazt/we/ve$ve;-><init>(Lcom/byazt/we/ve;Lcom/byazt/we/ve$1;)V

    iput-object p1, p0, Lcom/byazt/we/ve;->uj:Lcom/byazt/we/ve$ve;

    .line 13
    invoke-static {v3}, Lcom/byazt/rl/ve;->c(I)Lcom/byazt/rl/ve;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v6, v1}, Lcom/byazt/rl/ve;->c(II)Lcom/byazt/rl/ve;

    move-result-object p1

    const/16 v1, 0xa

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/byazt/rl/ve;->c(II)Lcom/byazt/rl/ve;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/byazt/rl/ve;->tt()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    .line 16
    invoke-static {}, Lcom/byazt/lm/uj;->instance()Lcom/byazt/lm/uj;

    move-result-object v1

    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/byazt/lm/uj;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/hj/z;->c(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p1

    .line 17
    invoke-static {v3}, Lcom/byazt/rl/ve;->c(I)Lcom/byazt/rl/ve;

    move-result-object v1

    const/16 v2, 0x6a

    .line 18
    invoke-virtual {v1, v0, v2}, Lcom/byazt/rl/ve;->c(II)Lcom/byazt/rl/ve;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/we/ve;->uj:Lcom/byazt/we/ve$ve;

    .line 19
    invoke-virtual {v0, v6, v1}, Lcom/byazt/rl/ve;->c(ILjava/lang/Object;)Lcom/byazt/rl/ve;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/byazt/rl/ve;->tt()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    if-eqz p1, :cond_4

    .line 21
    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-object v5

    .line 22
    :cond_5
    invoke-interface {p1, v6, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/byazt/we/ve;->tt(Ljava/util/Map;)V

    return-object v5

    .line 23
    :cond_6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    const/16 v0, 0x2710

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/byazt/we/ve;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public callMethod(ILjava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-direct {p0, p2}, Lcom/byazt/we/ve;->n(Ljava/util/Map;)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_1
    invoke-direct {p0, p2}, Lcom/byazt/we/ve;->uj(Ljava/util/Map;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_2
    const-string p1, "context"

    .line 23
    .line 24
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Lcom/byazt/we/ve;->getContext(Ljava/lang/Object;)Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "bundle"

    .line 33
    .line 34
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-direct {p0, p2}, Lcom/byazt/we/ve;->c(Ljava/lang/Object;)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {p1, p2}, Lcom/byazt/we/tt;->c(Landroid/content/Context;Landroid/os/Bundle;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    const/4 p1, 0x2

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_3
    const/4 p1, 0x0

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method public setLiveInitExtra(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/byazt/we/ve;->ve:Ljava/util/Map;

    .line 11
    .line 12
    :cond_1
    :goto_0
    return-void
.end method
