.class public Lcom/kwad/sdk/core/request/model/StatusInfo;
.super Lcom/kwad/sdk/core/response/a/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/request/model/StatusInfo$SplashStyleControl;,
        Lcom/kwad/sdk/core/request/model/StatusInfo$NativeAdStyleControl;,
        Lcom/kwad/sdk/core/request/model/StatusInfo$NativeAdRequestInfo;,
        Lcom/kwad/sdk/core/request/model/StatusInfo$SplashAdInfo;
    }
.end annotation


# instance fields
.field public aXs:I

.field public aXt:I

.field public aXu:Lcom/kwad/sdk/core/request/model/StatusInfo$SplashAdInfo;

.field public aXv:Lcom/kwad/sdk/core/request/model/StatusInfo$NativeAdRequestInfo;

.field public aXw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/request/model/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/kwad/sdk/internal/api/SceneImpl;)V
    .locals 4

    .line 1
    const-class v0, Lcom/kwad/sdk/service/a/f;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/kwad/sdk/service/a/f;

    .line 11
    .line 12
    invoke-interface {v1}, Lcom/kwad/sdk/service/a/f;->Fv()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    iput v1, p0, Lcom/kwad/sdk/core/request/model/StatusInfo;->aXs:I

    .line 24
    .line 25
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/kwad/sdk/service/a/f;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/kwad/sdk/service/a/f;->Fw()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v2, 0x0

    .line 39
    :goto_1
    iput v2, p0, Lcom/kwad/sdk/core/request/model/StatusInfo;->aXt:I

    .line 40
    .line 41
    invoke-static {}, Lcom/kwad/sdk/core/local/a;->Ma()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/kwad/sdk/core/request/model/StatusInfo;->aXw:Ljava/util/List;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/kwad/sdk/core/request/model/StatusInfo$NativeAdRequestInfo;->create(Lcom/kwad/sdk/internal/api/SceneImpl;)Lcom/kwad/sdk/core/request/model/StatusInfo$NativeAdRequestInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/kwad/sdk/core/request/model/StatusInfo;->aXv:Lcom/kwad/sdk/core/request/model/StatusInfo$NativeAdRequestInfo;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/kwad/sdk/core/request/model/StatusInfo$SplashAdInfo;->create(Lcom/kwad/sdk/internal/api/SceneImpl;)Lcom/kwad/sdk/core/request/model/StatusInfo$SplashAdInfo;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/kwad/sdk/core/request/model/StatusInfo;->aXu:Lcom/kwad/sdk/core/request/model/StatusInfo$SplashAdInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public static e(Lcom/kwad/sdk/internal/api/SceneImpl;)Lcom/kwad/sdk/core/request/model/StatusInfo;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/request/model/StatusInfo;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/request/model/StatusInfo;-><init>(Lcom/kwad/sdk/internal/api/SceneImpl;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
