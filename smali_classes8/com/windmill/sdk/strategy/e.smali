.class public Lcom/windmill/sdk/strategy/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/strategy/e$a;
    }
.end annotation


# static fields
.field private static a:Lcom/windmill/sdk/strategy/e;

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/windmill/sdk/strategy/e$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcom/windmill/sdk/strategy/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/windmill/sdk/strategy/e;->b:Ljava/util/HashMap;

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

.method public static a()Lcom/windmill/sdk/strategy/e;
    .locals 2

    .line 1
    sget-object v0, Lcom/windmill/sdk/strategy/e;->a:Lcom/windmill/sdk/strategy/e;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/windmill/sdk/strategy/e;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/windmill/sdk/strategy/e;->a:Lcom/windmill/sdk/strategy/e;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/windmill/sdk/strategy/e;

    invoke-direct {v1}, Lcom/windmill/sdk/strategy/e;-><init>()V

    sput-object v1, Lcom/windmill/sdk/strategy/e;->a:Lcom/windmill/sdk/strategy/e;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/windmill/sdk/strategy/e;->a:Lcom/windmill/sdk/strategy/e;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/common/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sign",
            "request",
            "baseAdController"
        }
    .end annotation

    .line 29
    :try_start_0
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----------loadWaterfall----sendBackStrategyRequest---------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    move-result-object v1

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/strategy/d;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 34
    invoke-virtual {p3}, Lcom/windmill/sdk/common/l;->l()Lcom/windmill/sdk/common/m;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 35
    invoke-interface {p3}, Lcom/windmill/sdk/common/m;->a()Ljava/util/HashMap;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 36
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 37
    :cond_2
    new-instance p3, Lcom/windmill/sdk/strategy/f;

    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getStrategyUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-instance v6, Lcom/windmill/sdk/strategy/e$1;

    invoke-direct {v6, p0, p2, v0}, Lcom/windmill/sdk/strategy/e$1;-><init>(Lcom/windmill/sdk/strategy/e;Lcom/windmill/sdk/WindMillAdRequest;Ljava/util/HashMap;)V

    move-object v1, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/windmill/sdk/strategy/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;ILcom/windmill/sdk/strategy/f$a;)V

    .line 38
    invoke-virtual {p3, v0}, Lcom/windmill/sdk/strategy/f;->a(Ljava/util/HashMap;)V

    .line 39
    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/czhj/volley/RequestQueue;->add(Lcom/czhj/volley/Request;)Lcom/czhj/volley/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/e;->c:Lcom/windmill/sdk/strategy/e$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/e$a;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/windmill/sdk/splash/WMSplashAdRequest;Lcom/windmill/sdk/common/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "wmBaseAdController"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->isInit()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "---------loadWaterfall------init---filter---"

    .line 9
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    invoke-static {}, Lcom/windmill/sdk/common/c;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "---------loadWaterfall------gdpr---filter---"

    .line 11
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_2
    sget-object v0, Lcom/windmill/sdk/strategy/e;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/strategy/e$a;

    iput-object v0, p0, Lcom/windmill/sdk/strategy/e;->c:Lcom/windmill/sdk/strategy/e$a;

    if-nez v0, :cond_3

    .line 13
    new-instance v0, Lcom/windmill/sdk/strategy/e$a;

    invoke-direct {v0}, Lcom/windmill/sdk/strategy/e$a;-><init>()V

    iput-object v0, p0, Lcom/windmill/sdk/strategy/e;->c:Lcom/windmill/sdk/strategy/e$a;

    .line 14
    sget-object v0, Lcom/windmill/sdk/strategy/e;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/windmill/sdk/strategy/e;->c:Lcom/windmill/sdk/strategy/e$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_3
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getLoadPeriodTime()J

    move-result-wide v0

    .line 16
    iget-object v2, p0, Lcom/windmill/sdk/strategy/e;->c:Lcom/windmill/sdk/strategy/e$a;

    iget-wide v2, v2, Lcom/windmill/sdk/strategy/e$a;->a:J

    add-long/2addr v0, v2

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    const-string p1, "---------loadWaterfall------interval---filter---"

    .line 18
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_4
    invoke-static {}, Lcom/windmill/sdk/strategy/b;->a()Lcom/windmill/sdk/strategy/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/strategy/b;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 20
    sget-object v1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---------------loadWaterfall----catchResponseMap---------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_6

    :try_start_1
    const-string v2, "value"

    .line 21
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/models/WaterfallResponse;

    if-eqz v0, :cond_5

    .line 22
    iget-object v0, v0, Lcom/windmill/sdk/models/WaterfallResponse;->sign:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/windmill/sdk/strategy/e;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/common/l;)V

    goto :goto_0

    .line 23
    :cond_5
    invoke-direct {p0, v1, p1, p2}, Lcom/windmill/sdk/strategy/e;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/common/l;)V

    goto :goto_0

    .line 24
    :cond_6
    invoke-direct {p0, v1, p1, p2}, Lcom/windmill/sdk/strategy/e;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/common/l;)V

    :goto_0
    const-string p2, "pull_waterfall"

    const/4 v0, 0x0

    .line 25
    invoke-static {p2, p1, v0, v0, v0}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    .line 26
    invoke-direct {p0}, Lcom/windmill/sdk/strategy/e;->b()V

    goto :goto_2

    :cond_7
    :goto_1
    const-string p1, "---------loadWaterfall------placementId---filter---"

    .line 27
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
