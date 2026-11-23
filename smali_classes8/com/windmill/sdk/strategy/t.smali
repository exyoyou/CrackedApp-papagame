.class public Lcom/windmill/sdk/strategy/t;
.super Lcom/czhj/sdk/common/network/SigmobRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/sdk/common/network/SigmobRequest<",
        "Lcom/windmill/sdk/models/WaterfallResponse;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "ad-responses"

.field private static final b:Ljava/lang/String; = "adm"

.field private static final c:Ljava/lang/String; = "body"

.field private static final d:Ljava/lang/String; = "headers"


# instance fields
.field private final e:Lcom/windmill/sdk/strategy/s$c;

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Lcom/czhj/sdk/common/models/Network$Builder;

.field private j:Lcom/czhj/sdk/common/models/AdSlot$Builder;

.field private k:Lcom/czhj/sdk/common/models/Device$Builder;

.field private l:Lcom/windmill/sdk/WindMillAdRequest;

.field private m:Ljava/lang/String;

.field private n:[B

.field private o:Ljava/util/Map;
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/s$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "sign",
            "request",
            "listener"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/czhj/sdk/common/network/SigmobRequest;-><init>(Ljava/lang/String;ILcom/czhj/volley/Response$ErrorListener;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p4}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/windmill/sdk/strategy/t;->m:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/windmill/sdk/strategy/t;->e:Lcom/windmill/sdk/strategy/s$c;

    .line 12
    .line 13
    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/windmill/sdk/strategy/t;->g:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lcom/windmill/sdk/strategy/t;->f:I

    .line 24
    .line 25
    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillAdRequest;->getUserId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/windmill/sdk/strategy/t;->h:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p3, p0, Lcom/windmill/sdk/strategy/t;->l:Lcom/windmill/sdk/WindMillAdRequest;

    .line 32
    .line 33
    new-instance p1, Lcom/czhj/volley/DefaultRetryPolicy;

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    const/16 p3, 0x1388

    .line 37
    .line 38
    const/4 p4, 0x0

    .line 39
    invoke-direct {p1, p3, p4, p2}, Lcom/czhj/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/czhj/volley/Request;->setRetryPolicy(Lcom/czhj/volley/RetryPolicy;)Lcom/czhj/volley/Request;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p4}, Lcom/czhj/volley/Request;->setShouldCache(Z)Lcom/czhj/volley/Request;

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public a()Lcom/czhj/sdk/common/models/BidRequest$Builder;
    .locals 5

    .line 2
    new-instance v0, Lcom/czhj/sdk/common/models/BidRequest$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/BidRequest$Builder;-><init>()V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/windmill/sdk/utils/a/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--------createBidRequest ischeckCheat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/windmill/sdk/strategy/t;->l:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/windmill/sdk/WindMillAdRequest;->ischeckCheat(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createApp()Lcom/czhj/sdk/common/models/App$Builder;

    move-result-object v2

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillAd;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/czhj/sdk/common/models/App$Builder;->app_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/czhj/sdk/common/models/App$Builder;->app_sha256(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/App$Builder;->build()Lcom/czhj/sdk/common/models/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->app(Lcom/czhj/sdk/common/models/App;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    .line 6
    invoke-static {}, Lcom/windmill/sdk/utils/d;->a()Lcom/windmill/sdk/utils/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/windmill/sdk/utils/d;->b()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createDevice(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/Device$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/windmill/sdk/strategy/t;->k:Lcom/czhj/sdk/common/models/Device$Builder;

    .line 7
    invoke-static {}, Lcom/windmill/sdk/utils/d;->a()Lcom/windmill/sdk/utils/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/windmill/sdk/utils/d;->b()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createDeviceId(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/DeviceId$Builder;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/windmill/sdk/strategy/t;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    iget-object v2, p0, Lcom/windmill/sdk/strategy/t;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->user_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/DeviceId$Builder;

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/windmill/sdk/strategy/t;->k:Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->build()Lcom/czhj/sdk/common/models/DeviceId;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/czhj/sdk/common/models/Device$Builder;->did(Lcom/czhj/sdk/common/models/DeviceId;)Lcom/czhj/sdk/common/models/Device$Builder;

    .line 11
    iget-object v1, p0, Lcom/windmill/sdk/strategy/t;->k:Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Device$Builder;->build()Lcom/czhj/sdk/common/models/Device;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->device(Lcom/czhj/sdk/common/models/Device;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    .line 12
    invoke-static {}, Lcom/windmill/sdk/utils/d;->a()Lcom/windmill/sdk/utils/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/windmill/sdk/utils/d;->b()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createNetwork(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/Network$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/windmill/sdk/strategy/t;->i:Lcom/czhj/sdk/common/models/Network$Builder;

    .line 13
    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Network$Builder;->build()Lcom/czhj/sdk/common/models/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->network(Lcom/czhj/sdk/common/models/Network;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    .line 14
    invoke-static {}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createAdSlot()Lcom/czhj/sdk/common/models/AdSlot$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/windmill/sdk/strategy/t;->j:Lcom/czhj/sdk/common/models/AdSlot$Builder;

    .line 15
    iget-object v1, v1, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_type:Ljava/util/List;

    iget v2, p0, Lcom/windmill/sdk/strategy/t;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v1, p0, Lcom/windmill/sdk/strategy/t;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 17
    iget-object v1, p0, Lcom/windmill/sdk/strategy/t;->j:Lcom/czhj/sdk/common/models/AdSlot$Builder;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/t;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    .line 18
    :cond_1
    iget-object v1, v0, Lcom/czhj/sdk/common/models/BidRequest$Builder;->slots:Ljava/util/List;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/t;->j:Lcom/czhj/sdk/common/models/AdSlot$Builder;

    invoke-virtual {v2}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->build()Lcom/czhj/sdk/common/models/AdSlot;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v1, Lcom/czhj/sdk/common/models/Privacy$Builder;

    invoke-direct {v1}, Lcom/czhj/sdk/common/models/Privacy$Builder;-><init>()V

    .line 20
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/windmill/sdk/common/c;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/models/Privacy$Builder;->age(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Privacy$Builder;

    .line 21
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/windmill/sdk/common/c;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/models/Privacy$Builder;->child_protection(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Privacy$Builder;

    .line 22
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    invoke-static {}, Lcom/windmill/sdk/common/c;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/models/Privacy$Builder;->gdpr_consent(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Privacy$Builder;

    .line 23
    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Privacy$Builder;->build()Lcom/czhj/sdk/common/models/Privacy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->privacy(Lcom/czhj/sdk/common/models/Privacy;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    .line 24
    new-instance v1, Lcom/czhj/sdk/common/models/User$Builder;

    invoke-direct {v1}, Lcom/czhj/sdk/common/models/User$Builder;-><init>()V

    .line 25
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/windmill/sdk/common/c;->e()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/czhj/sdk/common/models/User$Builder;->is_minor:Ljava/lang/Boolean;

    .line 26
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/windmill/sdk/common/c;->f()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/czhj/sdk/common/models/User$Builder;->disable_personalized_recommendation:Ljava/lang/Boolean;

    .line 27
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/windmill/sdk/common/c;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/czhj/sdk/common/models/User$Builder;->change_recommendation_state:Ljava/lang/Boolean;

    .line 28
    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/User$Builder;->build()Lcom/czhj/sdk/common/models/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->user(Lcom/czhj/sdk/common/models/User;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    .line 29
    new-instance v1, Lcom/czhj/sdk/common/models/StrategyReq$Builder;

    invoke-direct {v1}, Lcom/czhj/sdk/common/models/StrategyReq$Builder;-><init>()V

    .line 30
    sget-boolean v2, Lcom/windmill/sdk/strategy/s;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/czhj/sdk/common/models/StrategyReq$Builder;->strategy_init:Ljava/lang/Boolean;

    .line 31
    sget-object v2, Lcom/windmill/sdk/strategy/s;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/windmill/sdk/strategy/t;->g:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 33
    iput-object v2, v1, Lcom/czhj/sdk/common/models/StrategyReq$Builder;->last_strategy_id:Ljava/lang/String;

    .line 34
    :cond_4
    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/StrategyReq$Builder;->build()Lcom/czhj/sdk/common/models/StrategyReq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->strategy_req(Lcom/czhj/sdk/common/models/StrategyReq;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    .line 35
    invoke-static {}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createWXProgramReq()Lcom/czhj/sdk/common/models/WXProgramReq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->wx_program_req(Lcom/czhj/sdk/common/models/WXProgramReq;)Lcom/czhj/sdk/common/models/BidRequest$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "strategry error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method public a(Lcom/windmill/sdk/models/WaterfallResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "waterfallResponse"
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    :try_start_0
    iget-object v1, p1, Lcom/windmill/sdk/models/WaterfallResponse;->code:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 38
    iget-object v1, p1, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {}, Lcom/windmill/sdk/strategy/b;->a()Lcom/windmill/sdk/strategy/b;

    move-result-object v1

    iget-object v3, p0, Lcom/windmill/sdk/strategy/t;->l:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/windmill/sdk/strategy/b;->a(Lcom/windmill/sdk/models/WaterfallResponse;Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/windmill/sdk/strategy/t;->l:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v3, p0, Lcom/windmill/sdk/strategy/t;->e:Lcom/windmill/sdk/strategy/s$c;

    invoke-static {v2, p1, v1, v3}, Lcom/windmill/sdk/strategy/k;->a(ILcom/windmill/sdk/models/WaterfallResponse;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/s$c;)Lcom/windmill/sdk/strategy/q;

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lcom/windmill/sdk/strategy/b;->a()Lcom/windmill/sdk/strategy/b;

    move-result-object v1

    iget-object p1, p1, Lcom/windmill/sdk/models/WaterfallResponse;->sign:Ljava/lang/String;

    iget-object v3, p0, Lcom/windmill/sdk/strategy/t;->l:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/windmill/sdk/strategy/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/windmill/sdk/strategy/t;->l:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v3, p0, Lcom/windmill/sdk/strategy/t;->e:Lcom/windmill/sdk/strategy/s$c;

    invoke-static {v2, p1, v1, v3}, Lcom/windmill/sdk/strategy/k;->a(ILcom/windmill/sdk/models/WaterfallResponse;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/s$c;)Lcom/windmill/sdk/strategy/q;

    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/windmill/sdk/strategy/t;->e:Lcom/windmill/sdk/strategy/s$c;

    if-eqz p1, :cond_3

    .line 44
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_STRATEGY_REQUEST:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    const-string v2, "getCacheStrategy is null"

    invoke-interface {p1, v0, v0, v1, v2}, Lcom/windmill/sdk/strategy/s$c;->a(Ljava/util/List;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/windmill/sdk/strategy/t;->e:Lcom/windmill/sdk/strategy/s$c;

    if-eqz v1, :cond_3

    .line 46
    iget-object v2, p1, Lcom/windmill/sdk/models/WaterfallResponse;->code:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object p1, p1, Lcom/windmill/sdk/models/WaterfallResponse;->error_message:Ljava/lang/String;

    invoke-interface {v1, v0, v0, v2, p1}, Lcom/windmill/sdk/strategy/s$c;->a(Ljava/util/List;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deliver strategy exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/windmill/sdk/strategy/t;->e:Lcom/windmill/sdk/strategy/s$c;

    if-eqz v1, :cond_3

    .line 49
    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_STRATEGY_REQUEST:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, v0, v2, p1}, Lcom/windmill/sdk/strategy/s$c;->a(Ljava/util/List;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customGroup"
        }
    .end annotation

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
    iput-object p1, p0, Lcom/windmill/sdk/strategy/t;->o:Ljava/util/Map;

    return-void
.end method

.method public b()Lcom/windmill/sdk/strategy/s$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/t;->e:Lcom/windmill/sdk/strategy/s$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public deliverError(Lcom/czhj/volley/VolleyError;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/t;->e:Lcom/windmill/sdk/strategy/s$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_NETWORK:Lcom/windmill/sdk/WindMillError;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Lcom/czhj/volley/VolleyError;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-interface {v0, v2, v2, v1, p1}, Lcom/windmill/sdk/strategy/s$c;->a(Ljava/util/List;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "waterfallResponse"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/windmill/sdk/models/WaterfallResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/strategy/t;->a(Lcom/windmill/sdk/models/WaterfallResponse;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getBody()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/t;->n:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/octet-stream"

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "cp"

    .line 2
    .line 3
    const-string v1, "1"

    .line 4
    .line 5
    invoke-super {p0}, Lcom/czhj/sdk/common/network/SigmobRequest;->getHeaders()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    new-instance v2, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/t;->a()Lcom/czhj/sdk/common/models/BidRequest$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/d;->b()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-interface {v4}, Ljava/util/Map;->size()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-lez v5, :cond_1

    .line 35
    .line 36
    iget-object v5, v3, Lcom/czhj/sdk/common/models/BidRequest$Builder;->ext_options:Ljava/util/Map;

    .line 37
    .line 38
    invoke-interface {v5, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v4, p0, Lcom/windmill/sdk/strategy/t;->l:Lcom/windmill/sdk/WindMillAdRequest;

    .line 42
    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/windmill/sdk/WindMillAdRequest;->getLoadId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_2

    .line 54
    .line 55
    iget-object v4, v3, Lcom/czhj/sdk/common/models/BidRequest$Builder;->ext_options:Ljava/util/Map;

    .line 56
    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    const-string v5, "load_id"

    .line 60
    .line 61
    iget-object v6, p0, Lcom/windmill/sdk/strategy/t;->l:Lcom/windmill/sdk/WindMillAdRequest;

    .line 62
    .line 63
    invoke-virtual {v6}, Lcom/windmill/sdk/WindMillAdRequest;->getLoadId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v4, v3, Lcom/czhj/sdk/common/models/BidRequest$Builder;->ext_options:Ljava/util/Map;

    .line 71
    .line 72
    const-string v5, "support_saas_adx"

    .line 73
    .line 74
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    iget-object v4, p0, Lcom/windmill/sdk/strategy/t;->l:Lcom/windmill/sdk/WindMillAdRequest;

    .line 78
    .line 79
    if-eqz v4, :cond_5

    .line 80
    .line 81
    invoke-virtual {v4}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    if-eqz v4, :cond_5

    .line 86
    .line 87
    new-instance v4, Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 90
    .line 91
    .line 92
    iget-object v5, p0, Lcom/windmill/sdk/strategy/t;->l:Lcom/windmill/sdk/WindMillAdRequest;

    .line 93
    .line 94
    invoke-virtual {v5}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eqz v6, :cond_4

    .line 111
    .line 112
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    check-cast v6, Ljava/lang/String;

    .line 117
    .line 118
    iget-object v7, p0, Lcom/windmill/sdk/strategy/t;->l:Lcom/windmill/sdk/WindMillAdRequest;

    .line 119
    .line 120
    invoke-virtual {v7}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    if-eqz v7, :cond_3

    .line 129
    .line 130
    iget-object v7, p0, Lcom/windmill/sdk/strategy/t;->l:Lcom/windmill/sdk/WindMillAdRequest;

    .line 131
    .line 132
    invoke-virtual {v7}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_4
    invoke-virtual {v3, v4}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->options(Ljava/util/Map;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    .line 149
    .line 150
    .line 151
    :cond_5
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 152
    .line 153
    iput-object v4, v3, Lcom/czhj/sdk/common/models/BidRequest$Builder;->disable_mediation:Ljava/lang/Boolean;

    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->build()Lcom/czhj/sdk/common/models/BidRequest;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    new-instance v4, Lcom/windmill/sdk/models/StrategyRequest$Builder;

    .line 160
    .line 161
    invoke-direct {v4}, Lcom/windmill/sdk/models/StrategyRequest$Builder;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v3}, Lcom/windmill/sdk/models/StrategyRequest$Builder;->bidRequest(Lcom/czhj/sdk/common/models/BidRequest;)Lcom/windmill/sdk/models/StrategyRequest$Builder;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    iget-object v4, p0, Lcom/windmill/sdk/strategy/t;->m:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/models/StrategyRequest$Builder;->sign(Ljava/lang/String;)Lcom/windmill/sdk/models/StrategyRequest$Builder;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    iget-object v4, p0, Lcom/windmill/sdk/strategy/t;->l:Lcom/windmill/sdk/WindMillAdRequest;

    .line 175
    .line 176
    if-eqz v4, :cond_6

    .line 177
    .line 178
    invoke-virtual {v4}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    const/4 v5, 0x7

    .line 183
    if-eq v4, v5, :cond_6

    .line 184
    .line 185
    iget-object v4, p0, Lcom/windmill/sdk/strategy/t;->l:Lcom/windmill/sdk/WindMillAdRequest;

    .line 186
    .line 187
    invoke-virtual {v4}, Lcom/windmill/sdk/WindMillAdRequest;->isRefreshRequest()Z

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/models/StrategyRequest$Builder;->auto_request(Ljava/lang/Boolean;)Lcom/windmill/sdk/models/StrategyRequest$Builder;

    .line 196
    .line 197
    .line 198
    :cond_6
    iget-object v4, p0, Lcom/windmill/sdk/strategy/t;->o:Ljava/util/Map;

    .line 199
    .line 200
    if-eqz v4, :cond_7

    .line 201
    .line 202
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-eqz v5, :cond_8

    .line 207
    .line 208
    :cond_7
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    iget-object v5, p0, Lcom/windmill/sdk/strategy/t;->l:Lcom/windmill/sdk/WindMillAdRequest;

    .line 213
    .line 214
    invoke-virtual {v5}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-virtual {v4, v5}, Lcom/windmill/sdk/strategy/d;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    :cond_8
    if-eqz v4, :cond_9

    .line 223
    .line 224
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/models/StrategyRequest$Builder;->slot_group(Ljava/util/Map;)Lcom/windmill/sdk/models/StrategyRequest$Builder;

    .line 225
    .line 226
    .line 227
    :cond_9
    invoke-static {}, Lcom/windmill/sdk/strategy/c;->a()Lcom/windmill/sdk/strategy/c;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    iget-object v5, p0, Lcom/windmill/sdk/strategy/t;->l:Lcom/windmill/sdk/WindMillAdRequest;

    .line 232
    .line 233
    invoke-virtual {v4, v5}, Lcom/windmill/sdk/strategy/c;->b(Lcom/windmill/sdk/WindMillAdRequest;)I

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/models/StrategyRequest$Builder;->request_n(Ljava/lang/Integer;)Lcom/windmill/sdk/models/StrategyRequest$Builder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3}, Lcom/windmill/sdk/models/StrategyRequest$Builder;->build()Lcom/windmill/sdk/models/StrategyRequest;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    sget-object v4, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 249
    .line 250
    new-instance v5, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/czhj/sdk/common/network/SigmobRequest;->getUrl()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v6, " send strategy request:"

    .line 263
    .line 264
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    invoke-static {v4, v5}, Lcom/windmill/sdk/base/WMLogUtil;->dd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 275
    .line 276
    .line 277
    :try_start_1
    invoke-virtual {v3}, Lcom/czhj/wire/Message;->encode()[B

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    iput-object v4, p0, Lcom/windmill/sdk/strategy/t;->n:[B

    .line 282
    .line 283
    invoke-static {v4}, Lcom/windmill/sdk/utils/c;->b([B)[B

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    iput-object v4, p0, Lcom/windmill/sdk/strategy/t;->n:[B

    .line 288
    .line 289
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    .line 291
    .line 292
    goto :goto_1

    .line 293
    :catchall_0
    :try_start_2
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    iget-object v0, p0, Lcom/windmill/sdk/strategy/t;->n:[B

    .line 297
    .line 298
    if-eqz v0, :cond_a

    .line 299
    .line 300
    invoke-virtual {v3}, Lcom/czhj/wire/Message;->encode()[B

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    iput-object v0, p0, Lcom/windmill/sdk/strategy/t;->n:[B

    .line 305
    .line 306
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/t;->l:Lcom/windmill/sdk/WindMillAdRequest;

    .line 307
    .line 308
    iget-object v1, p0, Lcom/windmill/sdk/strategy/t;->n:[B

    .line 309
    .line 310
    const-string v4, "KGpfzbYsn4T9Jyuq"

    .line 311
    .line 312
    invoke-static {v0, v1, v3, v2, v4}, Lcom/windmill/sdk/utils/a/c;->a(Lcom/windmill/sdk/WindMillAdRequest;[BLcom/czhj/wire/AndroidMessage;Ljava/util/Map;Ljava/lang/String;)[B

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    iput-object v0, p0, Lcom/windmill/sdk/strategy/t;->n:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 317
    .line 318
    goto :goto_2

    .line 319
    :catchall_1
    move-exception v0

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    const-string v3, "strategry error "

    .line 326
    .line 327
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    :goto_2
    return-object v2
.end method

.method public parseNetworkResponse(Lcom/czhj/volley/NetworkResponse;)Lcom/czhj/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "networkResponse"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/czhj/volley/NetworkResponse;",
            ")",
            "Lcom/czhj/volley/Response<",
            "Lcom/windmill/sdk/models/WaterfallResponse;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "cp"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p1, Lcom/czhj/volley/NetworkResponse;->data:[B

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/czhj/volley/ParseError;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/czhj/volley/ParseError;-><init>(Lcom/czhj/volley/NetworkResponse;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/czhj/volley/Response;->error(Lcom/czhj/volley/VolleyError;)Lcom/czhj/volley/Response;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/windmill/sdk/strategy/t;->l:Lcom/windmill/sdk/WindMillAdRequest;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-static {v1, v2, v3}, Lcom/windmill/sdk/utils/a/c;->a([BLcom/windmill/sdk/WindMillAdRequest;I)[B

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p1, Lcom/czhj/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const-string v2, "1"

    .line 33
    .line 34
    iget-object v3, p1, Lcom/czhj/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-static {v1}, Lcom/windmill/sdk/utils/c;->a([B)[B

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_1
    sget-object v0, Lcom/windmill/sdk/models/WaterfallResponse;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/czhj/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/windmill/sdk/models/WaterfallResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    :try_start_1
    iget-object v1, v0, Lcom/windmill/sdk/models/WaterfallResponse;->uid:Ljava/lang/String;

    .line 59
    .line 60
    const-string v2, "KGpfzbYsn4T9Jyuq"

    .line 61
    .line 62
    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/AESUtil;->DecryptStringServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2, v1}, Lcom/czhj/sdk/common/ClientMetadata;->setUid(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v3, "strategry error "

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    invoke-static {p1}, Lcom/czhj/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/czhj/volley/NetworkResponse;)Lcom/czhj/volley/Cache$Entry;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {v0, p1}, Lcom/czhj/volley/Response;->success(Ljava/lang/Object;Lcom/czhj/volley/Cache$Entry;)Lcom/czhj/volley/Response;

    .line 107
    .line 108
    .line 109
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    return-object p1

    .line 111
    :catchall_0
    move-exception p1

    .line 112
    new-instance v0, Lcom/czhj/volley/ParseError;

    .line 113
    .line 114
    invoke-direct {v0, p1}, Lcom/czhj/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v0}, Lcom/czhj/volley/Response;->error(Lcom/czhj/volley/VolleyError;)Lcom/czhj/volley/Response;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    return-object p1
.end method
