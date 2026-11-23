.class public Lcom/kwad/sdk/core/report/n;
.super Lcom/kwad/sdk/core/report/e;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/report/n$b;,
        Lcom/kwad/sdk/core/report/n$a;
    }
.end annotation


# instance fields
.field public OQ:Ljava/lang/String;

.field public OR:Ljava/lang/String;

.field public OT:J

.field public QY:Ljava/lang/String;

.field public aMA:I

.field public aRP:J

.field public aVA:J

.field public aVB:J

.field public aVC:Lcom/kwad/sdk/core/scene/URLPackage;

.field public aVD:Ljava/lang/String;

.field public aVE:Lorg/json/JSONArray;

.field public aVF:Lorg/json/JSONArray;

.field public aVG:Lcom/kwad/sdk/core/report/n$a;

.field public aVH:I

.field public aVI:I

.field public aVJ:I

.field public aVK:I

.field public aVL:Ljava/lang/String;

.field public aVM:I

.field public aVN:I

.field public aVO:Ljava/lang/String;

.field public aVP:Lorg/json/JSONObject;

.field public aVQ:Lorg/json/JSONArray;

.field public aVR:I

.field public aVS:I

.field public aVT:I

.field public aVU:J

.field public aVV:Lorg/json/JSONArray;

.field public aVW:Z

.field public aVX:Ljava/lang/String;

.field public aVY:I

.field public aVZ:I

.field public aVs:J

.field public aVt:Lorg/json/JSONObject;

.field public aVu:Lorg/json/JSONObject;

.field public aVv:J

.field public aVw:J

.field public aVx:J

.field public aVy:J

.field public aVz:J

.field public aWA:Ljava/lang/String;

.field public aWa:J

.field public aWb:I

.field public aWc:Ljava/lang/String;

.field public aWd:J

.field public aWe:J

.field public aWf:J

.field public aWg:J

.field public aWh:Ljava/lang/String;

.field public aWi:I

.field public aWj:Lorg/json/JSONArray;

.field public aWk:J

.field public aWl:J

.field public aWm:Lorg/json/JSONArray;

.field public aWn:Ljava/lang/String;

.field public aWo:Ljava/lang/String;

.field public aWp:Ljava/lang/String;

.field public aWq:Ljava/lang/String;

.field public aWr:Ljava/lang/String;

.field public aWs:I

.field public aWt:Ljava/lang/String;

.field public aWu:Ljava/lang/String;

.field public aWv:I

.field public aWw:I

.field public aWx:Ljava/lang/String;

.field public aWy:J

.field public aWz:J

.field public actionType:J

.field public transient adScene:Lcom/kwad/sdk/internal/api/SceneImpl;

.field public adStyle:I

.field public ajo:Ljava/lang/String;

.field public ajv:J

.field public ajw:J

.field public ajx:J

.field public apv:J

.field public aqR:I

.field public authorId:J

.field public blockDuration:J

.field public clickTime:J

.field public contentSourceType:I

.field public contentType:I

.field public creativeId:J

.field public downloadDuration:J

.field public entryPageSource:Ljava/lang/String;

.field public errorCode:I

.field public errorMsg:Ljava/lang/String;

.field public llsid:J

.field public transient mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public pageType:I

.field public photoId:J

.field public posId:J

.field public position:J

.field public realShowType:I

.field public sdkApiVersion:Ljava/lang/String;

.field public sdkType:I

.field public sdkVersion:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public timestamp:J

.field public trace:Ljava/lang/String;

.field public urlPackage:Lcom/kwad/sdk/core/scene/URLPackage;


# direct methods
.method public constructor <init>(J)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/report/e;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->adStyle:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/kwad/sdk/core/report/n;->contentType:I

    .line 4
    iput v1, p0, Lcom/kwad/sdk/core/report/n;->realShowType:I

    const-wide/16 v2, -0x1

    .line 5
    iput-wide v2, p0, Lcom/kwad/sdk/core/report/n;->aVA:J

    .line 6
    iput v1, p0, Lcom/kwad/sdk/core/report/n;->aMA:I

    const-wide/16 v2, 0x0

    .line 7
    iput-wide v2, p0, Lcom/kwad/sdk/core/report/n;->aVU:J

    .line 8
    iput v1, p0, Lcom/kwad/sdk/core/report/n;->aVY:I

    .line 9
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->aVZ:I

    .line 10
    iput v1, p0, Lcom/kwad/sdk/core/report/n;->aWs:I

    const v0, 0x4ceb69

    .line 11
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->aWw:I

    const-string v0, "5.4.10.1"

    .line 12
    iput-object v0, p0, Lcom/kwad/sdk/core/report/n;->sdkVersion:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/kwad/sdk/core/report/n;->aWx:Ljava/lang/String;

    .line 14
    const-class v0, Lcom/kwad/sdk/service/a/f;

    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/service/a/f;

    invoke-interface {v0}, Lcom/kwad/sdk/service/a/f;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/kwad/sdk/core/report/n;->sdkApiVersion:Ljava/lang/String;

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->sdkType:I

    .line 17
    iput-object v2, p0, Lcom/kwad/sdk/core/report/n;->aWA:Ljava/lang/String;

    .line 18
    iput-wide p1, p0, Lcom/kwad/sdk/core/report/n;->actionType:J

    return-void
.end method

.method public constructor <init>(JLcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 4
    .param p3    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0}, Lcom/kwad/sdk/core/report/e;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->adStyle:I

    const/4 v1, 0x0

    .line 21
    iput v1, p0, Lcom/kwad/sdk/core/report/n;->contentType:I

    .line 22
    iput v1, p0, Lcom/kwad/sdk/core/report/n;->realShowType:I

    const-wide/16 v2, -0x1

    .line 23
    iput-wide v2, p0, Lcom/kwad/sdk/core/report/n;->aVA:J

    .line 24
    iput v1, p0, Lcom/kwad/sdk/core/report/n;->aMA:I

    const-wide/16 v2, 0x0

    .line 25
    iput-wide v2, p0, Lcom/kwad/sdk/core/report/n;->aVU:J

    .line 26
    iput v1, p0, Lcom/kwad/sdk/core/report/n;->aVY:I

    .line 27
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->aVZ:I

    .line 28
    iput v1, p0, Lcom/kwad/sdk/core/report/n;->aWs:I

    const v0, 0x4ceb69

    .line 29
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->aWw:I

    const-string v0, "5.4.10.1"

    .line 30
    iput-object v0, p0, Lcom/kwad/sdk/core/report/n;->sdkVersion:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/kwad/sdk/core/report/n;->aWx:Ljava/lang/String;

    .line 32
    const-class v0, Lcom/kwad/sdk/service/a/f;

    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/service/a/f;

    invoke-interface {v0}, Lcom/kwad/sdk/service/a/f;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/kwad/sdk/core/report/n;->sdkApiVersion:Ljava/lang/String;

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->sdkType:I

    .line 35
    iput-object v2, p0, Lcom/kwad/sdk/core/report/n;->aWA:Ljava/lang/String;

    .line 36
    iput-wide p1, p0, Lcom/kwad/sdk/core/report/n;->actionType:J

    .line 37
    iput-object p3, p0, Lcom/kwad/sdk/core/report/n;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-void
.end method

.method public constructor <init>(JLcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V
    .locals 4
    .param p3    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0}, Lcom/kwad/sdk/core/report/e;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->adStyle:I

    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lcom/kwad/sdk/core/report/n;->contentType:I

    .line 41
    iput v1, p0, Lcom/kwad/sdk/core/report/n;->realShowType:I

    const-wide/16 v2, -0x1

    .line 42
    iput-wide v2, p0, Lcom/kwad/sdk/core/report/n;->aVA:J

    .line 43
    iput v1, p0, Lcom/kwad/sdk/core/report/n;->aMA:I

    const-wide/16 v2, 0x0

    .line 44
    iput-wide v2, p0, Lcom/kwad/sdk/core/report/n;->aVU:J

    .line 45
    iput v1, p0, Lcom/kwad/sdk/core/report/n;->aVY:I

    .line 46
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->aVZ:I

    .line 47
    iput v1, p0, Lcom/kwad/sdk/core/report/n;->aWs:I

    const v0, 0x4ceb69

    .line 48
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->aWw:I

    const-string v0, "5.4.10.1"

    .line 49
    iput-object v0, p0, Lcom/kwad/sdk/core/report/n;->sdkVersion:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/kwad/sdk/core/report/n;->aWx:Ljava/lang/String;

    .line 51
    const-class v0, Lcom/kwad/sdk/service/a/f;

    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/service/a/f;

    invoke-interface {v0}, Lcom/kwad/sdk/service/a/f;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/kwad/sdk/core/report/n;->sdkApiVersion:Ljava/lang/String;

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->sdkType:I

    .line 54
    iput-object v2, p0, Lcom/kwad/sdk/core/report/n;->aWA:Ljava/lang/String;

    .line 55
    iput-wide p1, p0, Lcom/kwad/sdk/core/report/n;->actionType:J

    .line 56
    iput-object p3, p0, Lcom/kwad/sdk/core/report/n;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 57
    iput-object p4, p0, Lcom/kwad/sdk/core/report/n;->QY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 58
    invoke-direct {p0}, Lcom/kwad/sdk/core/report/e;-><init>()V

    const/4 p3, -0x1

    .line 59
    iput p3, p0, Lcom/kwad/sdk/core/report/n;->adStyle:I

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->contentType:I

    .line 61
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->realShowType:I

    const-wide/16 v1, -0x1

    .line 62
    iput-wide v1, p0, Lcom/kwad/sdk/core/report/n;->aVA:J

    .line 63
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->aMA:I

    const-wide/16 v1, 0x0

    .line 64
    iput-wide v1, p0, Lcom/kwad/sdk/core/report/n;->aVU:J

    .line 65
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->aVY:I

    .line 66
    iput p3, p0, Lcom/kwad/sdk/core/report/n;->aVZ:I

    .line 67
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->aWs:I

    const p3, 0x4ceb69

    .line 68
    iput p3, p0, Lcom/kwad/sdk/core/report/n;->aWw:I

    const-string p3, "5.4.10.1"

    .line 69
    iput-object p3, p0, Lcom/kwad/sdk/core/report/n;->sdkVersion:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/kwad/sdk/core/report/n;->aWx:Ljava/lang/String;

    .line 71
    const-class p3, Lcom/kwad/sdk/service/a/f;

    invoke-static {p3}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p3, ""

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {p3}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/kwad/sdk/service/a/f;

    invoke-interface {p3}, Lcom/kwad/sdk/service/a/f;->getApiVersion()Ljava/lang/String;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lcom/kwad/sdk/core/report/n;->sdkApiVersion:Ljava/lang/String;

    const/4 p3, 0x1

    .line 73
    iput p3, p0, Lcom/kwad/sdk/core/report/n;->sdkType:I

    .line 74
    iput-object p1, p0, Lcom/kwad/sdk/core/report/e;->actionId:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/kwad/sdk/core/report/n;->aWA:Ljava/lang/String;

    return-void
.end method

.method private cJ(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 3
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x3

    .line 2
    :try_start_0
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->aVI:I

    .line 3
    .line 4
    const-class v0, Lcom/kwad/sdk/core/report/s;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/kwad/sdk/core/report/s;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/kwad/sdk/core/report/s;->Af()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->aVY:I

    .line 19
    .line 20
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/kwad/sdk/core/report/e;->actionId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iput-wide v0, p0, Lcom/kwad/sdk/core/report/n;->timestamp:J

    .line 35
    .line 36
    invoke-static {}, Lcom/kwad/sdk/core/report/t;->Nj()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/kwad/sdk/core/report/n;->sessionId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 41
    .line 42
    :try_start_1
    invoke-static {}, Lcom/kwad/sdk/core/report/t;->Nk()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    iput-wide v0, p0, Lcom/kwad/sdk/core/report/n;->OT:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    :try_start_2
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-static {}, Lcom/kwad/sdk/core/report/t;->Nl()J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    iput-wide v0, p0, Lcom/kwad/sdk/core/report/n;->aVs:J

    .line 58
    .line 59
    iget-object v0, p0, Lcom/kwad/sdk/core/report/n;->adScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    iput-wide v0, p0, Lcom/kwad/sdk/core/report/n;->posId:J

    .line 68
    .line 69
    iget-object v0, p0, Lcom/kwad/sdk/core/report/n;->adScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getUrlPackage()Lcom/kwad/sdk/core/scene/URLPackage;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/kwad/sdk/core/report/n;->urlPackage:Lcom/kwad/sdk/core/scene/URLPackage;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/kwad/sdk/core/report/n;->adScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getAdStyle()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->adStyle:I

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    if-eqz p1, :cond_2

    .line 87
    .line 88
    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 89
    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    iput-object v0, p0, Lcom/kwad/sdk/core/report/n;->adScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    iput-wide v0, p0, Lcom/kwad/sdk/core/report/n;->posId:J

    .line 99
    .line 100
    iget-object v0, p0, Lcom/kwad/sdk/core/report/n;->adScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getUrlPackage()Lcom/kwad/sdk/core/scene/URLPackage;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v0, p0, Lcom/kwad/sdk/core/report/n;->urlPackage:Lcom/kwad/sdk/core/scene/URLPackage;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/kwad/sdk/core/report/n;->adScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getAdStyle()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->adStyle:I

    .line 115
    .line 116
    :cond_2
    :goto_1
    if-eqz p1, :cond_7

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdTemplate;->getShowPosition()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 123
    .line 124
    int-to-long v0, v0

    .line 125
    iput-wide v0, p0, Lcom/kwad/sdk/core/report/n;->position:J

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdTemplate;->getServerPosition()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    .line 132
    .line 133
    int-to-long v0, v0

    .line 134
    iput-wide v0, p0, Lcom/kwad/sdk/core/report/n;->aVv:J

    .line 135
    .line 136
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eL(Lcom/kwad/sdk/core/response/model/AdTemplate;)J

    .line 137
    .line 138
    .line 139
    move-result-wide v0

    .line 140
    iput-wide v0, p0, Lcom/kwad/sdk/core/report/n;->llsid:J

    .line 141
    .line 142
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eM(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 150
    if-nez v1, :cond_3

    .line 151
    .line 152
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    .line 153
    .line 154
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iput-object v1, p0, Lcom/kwad/sdk/core/report/n;->aVt:Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :catch_1
    move-exception v0

    .line 161
    :try_start_4
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    :cond_3
    :goto_2
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eN(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 172
    if-nez v1, :cond_4

    .line 173
    .line 174
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    .line 175
    .line 176
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iput-object v1, p0, Lcom/kwad/sdk/core/report/n;->aVu:Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :catch_2
    move-exception v0

    .line 183
    :try_start_6
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 184
    .line 185
    .line 186
    :cond_4
    :goto_3
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eH(Lcom/kwad/sdk/core/response/model/AdTemplate;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v0

    .line 190
    iput-wide v0, p0, Lcom/kwad/sdk/core/report/n;->posId:J

    .line 191
    .line 192
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eK(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->contentType:I

    .line 197
    .line 198
    iget v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->realShowType:I

    .line 199
    .line 200
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->realShowType:I

    .line 201
    .line 202
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eU(Lcom/kwad/sdk/core/response/model/AdTemplate;)J

    .line 203
    .line 204
    .line 205
    move-result-wide v0

    .line 206
    iput-wide v0, p0, Lcom/kwad/sdk/core/report/n;->photoId:J

    .line 207
    .line 208
    iget v0, p0, Lcom/kwad/sdk/core/report/n;->realShowType:I

    .line 209
    .line 210
    const/4 v1, 0x2

    .line 211
    if-ne v0, v1, :cond_5

    .line 212
    .line 213
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    .line 218
    .line 219
    iget-wide v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->creativeId:J

    .line 220
    .line 221
    iput-wide v1, p0, Lcom/kwad/sdk/core/report/n;->creativeId:J

    .line 222
    .line 223
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->N(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    mul-int/lit16 v1, v1, 0x3e8

    .line 228
    .line 229
    int-to-long v1, v1

    .line 230
    iput-wide v1, p0, Lcom/kwad/sdk/core/report/n;->aVw:J

    .line 231
    .line 232
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->advertiserInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdvertiserInfo;

    .line 233
    .line 234
    iget-wide v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdvertiserInfo;->userId:J

    .line 235
    .line 236
    iput-wide v0, p0, Lcom/kwad/sdk/core/report/n;->authorId:J

    .line 237
    .line 238
    :cond_5
    iget v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mMediaPlayerType:I

    .line 239
    .line 240
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->aVH:I

    .line 241
    .line 242
    iget v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mIsLeftSlipStatus:I

    .line 243
    .line 244
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->aVJ:I

    .line 245
    .line 246
    iget v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPhotoResponseType:I

    .line 247
    .line 248
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->aVK:I

    .line 249
    .line 250
    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPageInfo:Lcom/kwad/sdk/core/response/model/PageInfo;

    .line 251
    .line 252
    if-eqz v0, :cond_6

    .line 253
    .line 254
    iget v0, v0, Lcom/kwad/sdk/core/response/model/PageInfo;->pageType:I

    .line 255
    .line 256
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->pageType:I

    .line 257
    .line 258
    :cond_6
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eV(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->contentSourceType:I

    .line 263
    .line 264
    :cond_7
    invoke-static {}, Lcom/kwad/sdk/core/report/n$a;->Ne()Lcom/kwad/sdk/core/report/n$a;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    iput-object v0, p0, Lcom/kwad/sdk/core/report/n;->aVG:Lcom/kwad/sdk/core/report/n$a;

    .line 269
    .line 270
    iget-object v0, p0, Lcom/kwad/sdk/core/report/n;->adScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 271
    .line 272
    if-nez v0, :cond_8

    .line 273
    .line 274
    if-eqz p1, :cond_8

    .line 275
    .line 276
    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 277
    .line 278
    iput-object p1, p0, Lcom/kwad/sdk/core/report/n;->adScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 279
    .line 280
    :cond_8
    iget-object p1, p0, Lcom/kwad/sdk/core/report/n;->adScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 281
    .line 282
    if-eqz p1, :cond_9

    .line 283
    .line 284
    invoke-virtual {p1}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    .line 285
    .line 286
    .line 287
    move-result-wide v0

    .line 288
    iput-wide v0, p0, Lcom/kwad/sdk/core/report/n;->posId:J

    .line 289
    .line 290
    iget-object p1, p0, Lcom/kwad/sdk/core/report/n;->adScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 291
    .line 292
    invoke-virtual {p1}, Lcom/kwad/sdk/internal/api/SceneImpl;->getUrlPackage()Lcom/kwad/sdk/core/scene/URLPackage;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    iput-object p1, p0, Lcom/kwad/sdk/core/report/n;->urlPackage:Lcom/kwad/sdk/core/scene/URLPackage;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 297
    .line 298
    :cond_9
    return-void

    .line 299
    :catch_3
    move-exception p1

    .line 300
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 301
    .line 302
    .line 303
    return-void
.end method


# virtual methods
.method public final Nc()Lcom/kwad/sdk/core/report/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/report/n;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/report/n;->cJ(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final Nd()V
    .locals 2

    .line 1
    const-class v0, Lcom/kwad/sdk/service/a/j;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/sdk/service/a/j;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/kwad/sdk/service/a/j;->wg()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, p0, Lcom/kwad/sdk/core/report/n;->aVR:I

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/kwad/sdk/service/a/j;->wh()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iput v1, p0, Lcom/kwad/sdk/core/report/n;->aVS:I

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/kwad/sdk/service/a/j;->wi()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->aVT:I

    .line 26
    .line 27
    return-void
.end method

.method public afterParseJson(Lorg/json/JSONObject;)V
    .locals 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/kwad/sdk/core/report/e;->afterParseJson(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const/4 v0, 0x3

    .line 8
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->aVI:I

    .line 9
    .line 10
    const-string v0, "adStyle"

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->adStyle:I

    .line 18
    .line 19
    const-string v0, "num"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->aVN:I

    .line 26
    .line 27
    const-string v0, "state"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->aVM:I

    .line 34
    .line 35
    const-string v0, "timeSpend"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    iput-wide v2, p0, Lcom/kwad/sdk/core/report/n;->aVU:J

    .line 42
    .line 43
    const-string v0, "loadingDuration"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    iput-wide v2, p0, Lcom/kwad/sdk/core/report/n;->aWk:J

    .line 50
    .line 51
    const-string v0, "loadingDurationLimt"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    iput-wide v2, p0, Lcom/kwad/sdk/core/report/n;->aWl:J

    .line 58
    .line 59
    const-string v0, "playerTypeInfo"

    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, Lcom/kwad/sdk/core/report/n;->aVZ:I

    .line 66
    .line 67
    const-string v0, "actionId"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lcom/kwad/sdk/core/report/e;->actionId:Ljava/lang/String;

    .line 80
    .line 81
    :cond_1
    return-void
.end method

.method public afterToJson(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/kwad/sdk/core/report/e;->afterToJson(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "actionId"

    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/sdk/core/report/e;->actionId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/kwad/sdk/core/report/n;->adStyle:I

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    const-string v1, "adStyle"

    .line 16
    .line 17
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget v0, p0, Lcom/kwad/sdk/core/report/n;->aVN:I

    .line 21
    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    const-string v1, "num"

    .line 25
    .line 26
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget v0, p0, Lcom/kwad/sdk/core/report/n;->aVM:I

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const-string v1, "state"

    .line 34
    .line 35
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-wide v0, p0, Lcom/kwad/sdk/core/report/n;->aVU:J

    .line 39
    .line 40
    const-wide/16 v2, 0x0

    .line 41
    .line 42
    cmp-long v4, v0, v2

    .line 43
    .line 44
    if-lez v4, :cond_3

    .line 45
    .line 46
    const-string v4, "timeSpend"

    .line 47
    .line 48
    invoke-static {p1, v4, v0, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 49
    .line 50
    .line 51
    :cond_3
    iget-wide v0, p0, Lcom/kwad/sdk/core/report/n;->aWk:J

    .line 52
    .line 53
    cmp-long v4, v0, v2

    .line 54
    .line 55
    if-lez v4, :cond_4

    .line 56
    .line 57
    const-string v4, "loadingDuration"

    .line 58
    .line 59
    invoke-static {p1, v4, v0, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 60
    .line 61
    .line 62
    :cond_4
    iget-wide v0, p0, Lcom/kwad/sdk/core/report/n;->aWl:J

    .line 63
    .line 64
    cmp-long v4, v0, v2

    .line 65
    .line 66
    if-lez v4, :cond_5

    .line 67
    .line 68
    const-string v2, "loadingDurationLimt"

    .line 69
    .line 70
    invoke-static {p1, v2, v0, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 71
    .line 72
    .line 73
    :cond_5
    const-string v0, "playerTypeInfo"

    .line 74
    .line 75
    iget v1, p0, Lcom/kwad/sdk/core/report/n;->aVZ:I

    .line 76
    .line 77
    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/report/n;->aWA:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0}, Lcom/kwad/sdk/core/response/a/a;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "ReportAction{actionJSONString="

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/kwad/sdk/core/report/n;->aWA:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x7d

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
