.class public final Lcom/kwad/sdk/core/b/a/hl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static aSG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kwad/sdk/core/response/a/a;",
            ">;",
            "Lcom/kwad/sdk/core/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sput-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/aq;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/aq;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdRewardInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/dx;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/dx;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailWebCardInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/gb;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/gb;-><init>()V

    const-class v2, Lcom/kwad/sdk/commercial/f/b;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/be;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/be;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$AggregationCardInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/cx;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/cx;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$ComponentTemplateInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/la;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/la;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RewardVideoInteractInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ev;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ev;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdStyleInfo$ExtraDisplayInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/y;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/y;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/no;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/no;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$UnDownloadConf;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/iz;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/iz;-><init>()V

    const-class v2, Lcom/kwad/sdk/internal/api/NativeAdExtraDataImpl;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/my;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/my;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/TKAdLiveShopItemInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ln;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ln;-><init>()V

    const-class v2, Lcom/kwad/sdk/internal/api/SceneImpl;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ku;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ku;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$RewardFraudVerifyInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ej;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ej;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DrawAdInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ep;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ep;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/report/j;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/lw;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/lw;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$SlideConvertInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/am;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/am;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/lo;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/lo;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$ShakeInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ka;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ka;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchEcInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/jn;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/jn;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/network/j;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/hb;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/hb;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$InterstitialCardInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ji;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ji;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo$NeoScanAggregationSceneInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/mc;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/mc;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/request/model/StatusInfo$SplashAdInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/il;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/il;-><init>()V

    const-class v2, Lcom/kwad/sdk/commercial/h/a;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/oi;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/oi;-><init>()V

    const-class v2, Lcom/kwad/sdk/commercial/model/WebCloseStatus;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/jt;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/jt;-><init>()V

    const-class v2, Lcom/kwad/sdk/h/a/b;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/jk;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/jk;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$NeoVideoInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/al;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/al;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/bk;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/bk;-><init>()V

    const-class v2, Lcom/kwad/sdk/commercial/a/b;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/j;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/j;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ng;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ng;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$TemplateData;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/du;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/du;-><init>()V

    const-class v2, Lcom/kwad/sdk/commercial/e/b;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/js;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/js;-><init>()V

    const-class v2, Lcom/kwad/sdk/h/a/a;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ao;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ao;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/n;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/n;-><init>()V

    const-class v2, Lcom/kwad/sdk/commercial/convert/b;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/kp;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/kp;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo$RefreshToken;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ab;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ab;-><init>()V

    const-class v2, Lcom/kwad/sdk/internal/api/AdLabelImpl;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ay;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ay;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/bb;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/bb;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ii;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ii;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/LiveInfo$LiveStreamPlayCDNNode;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/fo;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/fo;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$FullScreenVideoInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/nh;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/nh;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/threads/b;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ef;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ef;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/na;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/na;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/h/a$a;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/p;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/p;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdCouponReceiveParam;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/fn;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/fn;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$FullScreenInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ni;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ni;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/threads/d;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/dr;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/dr;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo$CycleAggregationInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ez;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ez;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$FeedInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/mt;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/mt;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/request/model/StatusInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/cc;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/cc;-><init>()V

    const-class v2, Lcom/kwad/sdk/commercial/c/a;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/es;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/es;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdStyleInfo$ExposeTagInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/i;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/i;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdBannerInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ip;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ip;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$MaterialSize;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/dy;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/dy;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/request/model/b;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/dv;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/dv;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailCommonInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/jl;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/jl;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/request/model/d;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/av;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/av;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdStyleInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/lx;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/lx;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SlideInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/mv;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/mv;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$StyleComponentInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/gh;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/gh;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/HttpDnsInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/nt;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/nt;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/LiveInfo$User;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/nu;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/nu;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/request/model/g;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ci;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ci;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$BottomBannerInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/em;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/em;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$DynamicAdStyleInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/le;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/le;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateDegreeInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ke;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ke;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/bo;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/bo;-><init>()V

    const-class v2, Lcom/kwad/sdk/commercial/b/b;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/in;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/in;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/jf;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/jf;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$NativeMatrixAdInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/mn;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/mn;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/request/model/StatusInfo$SplashStyleControl;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/mx;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/mx;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$Styles;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/lb;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/lb;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RewardVideoTaskInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/jc;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/jc;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$NativeAdShakeInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ag;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ag;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdLiveTypeInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/hs;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/hs;-><init>()V

    const-class v2, Lcom/kwad/sdk/utils/b/a;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ol;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ol;-><init>()V

    const-class v2, Lcom/kwad/sdk/commercial/model/WebViewLoadMsg;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/kb;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/kb;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/PhotoInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/dp;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/dp;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$CutRuleInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/md;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/md;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashEndCardTKInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/kk;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/kk;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$PreLandingPageTKInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/aa;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/aa;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$AdInteractionInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/mb;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/mb;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashActionBarInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/iq;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/iq;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$MatrixTag;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/jd;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/jd;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/request/model/StatusInfo$NativeAdStyleControl;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/om;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/om;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$WidgetAdInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/lc;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/lc;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RewardWebTaskCloseInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/eo;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/eo;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$EndTopToolBarInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/dw;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/dw;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailTopToolBarInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/cd;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/cd;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$BaseMatrixTemplate;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/d;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/d;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$ActionBarInfoNew;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/bd;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/bd;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdvertiserInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ca;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ca;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/dk;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/dk;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/CouponInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/w;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/w;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/gn;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/gn;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$InnerEcAuthInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ia;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ia;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/LiveInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ck;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ck;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$CallBackStrategyInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/hf;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/hf;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/HttpDnsInfo$IpInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/jz;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/jz;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ju;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ju;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/config/d;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/mi;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/mi;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashPlayCardTKInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/lf;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/lf;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/q;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/q;-><init>()V

    const-class v2, Lcom/kwad/sdk/commercial/d/b;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ok;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ok;-><init>()V

    const-class v2, Lcom/kwad/sdk/commercial/model/WebViewCommercialMsg;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/cv;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/cv;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$ComplianceInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/at;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/at;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdStatusInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/u;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/u;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdFeedInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ap;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ap;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdProductInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ac;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ac;-><init>()V

    const-class v2, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/np;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/np;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$UnDownloadRegionConf;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/t;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/t;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdDrawInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/iv;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/iv;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$MerchantLiveReservationInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/jw;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/jw;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/PageInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/gl;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/gl;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/imageloader/ImageLoaderInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/nc;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/nc;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/request/model/f;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/c;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/c;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$ActionBarInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/r;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/r;-><init>()V

    const-class v2, Lcom/kwad/sdk/commercial/d/c;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/s;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/s;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$AdDataV2;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/hy;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/hy;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/LiveDetailReward;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/nl;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/nl;-><init>()V

    const-class v2, Lcom/kwad/sdk/commercial/i/a$a;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/gx;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/gx;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$InstalledActivateInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/eh;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/eh;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$DownloadTexts;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/bc;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/bc;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ir;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ir;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$MatrixTemplate;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ba;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ba;-><init>()V

    const-class v2, Lcom/kwad/sdk/commercial/i/b;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/gi;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/gi;-><init>()V

    const-class v2, Lcom/kwad/sdk/commercial/model/HybridLoadMsg;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ja;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ja;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$NativeAdInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/mf;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/mf;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/nw;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/nw;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/fy;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/fy;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$H5Config;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/mm;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/mm;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/mw;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/mw;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$StyleInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/as;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/as;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/dt;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/dt;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo$DeeplinkItemInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/if;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/if;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/LiveRewardInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/mp;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/mp;-><init>()V

    const-class v2, Lcom/kwad/sdk/wrapper/l$a$a;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ne;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ne;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/TemplateConfig;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ly;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ly;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$SmallAppJumpInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/g;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/g;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$ActivityMiddlePageInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/dm;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/dm;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/LiveInfo$CoverThumbnailUrl;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ex;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ex;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdStyleInfo$FeedAdInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/m;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/m;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ob;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ob;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/h;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/h;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdAggregateInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/dq;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/dq;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$CycleAggregateInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/jm;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/jm;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/network/i;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ma;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ma;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdProductInfo$SpikeInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/kc;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/kc;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ie;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ie;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$MerchantLiveReservationInfo$LiveReservationPlayEndInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ax;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ax;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/a;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/a;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/ABParams;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/en;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/en;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$EndCardInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/on;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/on;-><init>()V

    const-class v2, Lcom/kwad/sdk/wrapper/l$a;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/lz;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/lz;-><init>()V

    const-class v2, Lcom/kwad/sdk/commercial/smallApp/b;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ki;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ki;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$PlayableStyleInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/dn;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/dn;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/LiveInfo$CoverUrlCdn;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/kz;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/kz;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$RewardRetryTaskInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/z;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/z;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdInsertScreenInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/ar;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/ar;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdShowVideoH5Info;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/l;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/l;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdStyleInfo$AdBrowseInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/lj;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/lj;-><init>()V

    const-class v2, Lcom/kwad/sdk/commercial/model/SDKInitMsg;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/jb;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/jb;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/request/model/StatusInfo$NativeAdRequestInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/cw;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/cw;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$ComponentParam;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/au;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/au;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdStyleConfInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/nm;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/nm;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/scene/URLPackage;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/fc;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/fc;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/FeedSlideConf;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/gd;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/gd;-><init>()V

    const-class v2, Lcom/kwad/sdk/core/response/model/LiveInfo$User$HeadUrl;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    new-instance v1, Lcom/kwad/sdk/core/b/a/me;

    invoke-direct {v1}, Lcom/kwad/sdk/core/b/a/me;-><init>()V

    const-class v2, Lcom/kwad/sdk/internal/api/SplashExtraDataImpl;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {}, Lcom/kwad/sdk/core/b/a/hl;->LS()V

    return-void
.end method

.method private static LS()V
    .locals 0
    .annotation runtime Lcom/ksad/annotation/invoker/ForInvoker;
        methodId = "registerHolder"
    .end annotation

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/b/a/cy;->LS()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/sdk/core/b/a/cz;->LS()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/kwad/sdk/core/b/a/da;->LS()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/kwad/sdk/core/b/a/db;->LS()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/kwad/sdk/core/b/a/dc;->LS()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/kwad/sdk/core/b/a/dd;->LS()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/kwad/sdk/core/b/a/de;->LS()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/kwad/sdk/core/b/a/df;->LS()V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/kwad/sdk/core/b/a/dg;->LS()V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/kwad/sdk/core/b/a/dh;->LS()V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/kwad/sdk/core/b/a/di;->LS()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/kwad/sdk/core/b/a/fg;->LS()V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/kwad/sdk/core/b/a/fh;->LS()V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/kwad/sdk/core/b/a/fi;->LS()V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/kwad/sdk/core/b/a/fj;->LS()V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/kwad/sdk/core/b/a/fk;->LS()V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/kwad/sdk/core/b/a/fl;->LS()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static LT()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kwad/sdk/core/response/a/a;",
            ">;",
            "Lcom/kwad/sdk/core/d;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getHolder(Ljava/lang/Class;)Lcom/kwad/sdk/core/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kwad/sdk/core/response/a/a;",
            ">;)",
            "Lcom/kwad/sdk/core/d;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/b/a/hl;->aSG:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/kwad/sdk/core/d;

    .line 8
    .line 9
    return-object p0
.end method
