.class public Lcom/windmill/sdk/strategy/f;
.super Lcom/czhj/sdk/common/network/SigmobRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/strategy/f$a;
    }
.end annotation

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
.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:Lcom/czhj/sdk/common/models/Network$Builder;

.field private i:Lcom/czhj/sdk/common/models/AdSlot$Builder;

.field private j:Lcom/czhj/sdk/common/models/Device$Builder;

.field private k:Lcom/windmill/sdk/WindMillAdRequest;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Lcom/windmill/sdk/strategy/f$a;

.field private o:[B

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;ILcom/windmill/sdk/strategy/f$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "sign",
            "request",
            "request_type",
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
    iput-object p2, p0, Lcom/windmill/sdk/strategy/f;->l:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/windmill/sdk/strategy/f;->f:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lcom/windmill/sdk/strategy/f;->e:I

    .line 19
    .line 20
    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillAdRequest;->getUserId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/windmill/sdk/strategy/f;->g:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p3, p0, Lcom/windmill/sdk/strategy/f;->k:Lcom/windmill/sdk/WindMillAdRequest;

    .line 27
    .line 28
    iput p4, p0, Lcom/windmill/sdk/strategy/f;->m:I

    .line 29
    .line 30
    iput-object p5, p0, Lcom/windmill/sdk/strategy/f;->n:Lcom/windmill/sdk/strategy/f$a;

    .line 31
    .line 32
    new-instance p1, Lcom/czhj/volley/DefaultRetryPolicy;

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    const/16 p3, 0x1388

    .line 36
    .line 37
    const/4 p4, 0x0

    .line 38
    invoke-direct {p1, p3, p4, p2}, Lcom/czhj/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/czhj/volley/Request;->setRetryPolicy(Lcom/czhj/volley/RetryPolicy;)Lcom/czhj/volley/Request;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p4}, Lcom/czhj/volley/Request;->setShouldCache(Z)Lcom/czhj/volley/Request;

    .line 45
    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public a()Lcom/czhj/sdk/common/models/BidRequest$Builder;
    .locals 5

    .line 1
    new-instance v0, Lcom/czhj/sdk/common/models/BidRequest$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/BidRequest$Builder;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createApp()Lcom/czhj/sdk/common/models/App$Builder;

    move-result-object v1

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillAd;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/models/App$Builder;->app_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/App$Builder;->build()Lcom/czhj/sdk/common/models/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->app(Lcom/czhj/sdk/common/models/App;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    .line 3
    invoke-static {}, Lcom/windmill/sdk/utils/d;->a()Lcom/windmill/sdk/utils/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/windmill/sdk/utils/d;->b()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createDevice(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/Device$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/windmill/sdk/strategy/f;->j:Lcom/czhj/sdk/common/models/Device$Builder;

    .line 4
    invoke-static {}, Lcom/windmill/sdk/utils/d;->a()Lcom/windmill/sdk/utils/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/windmill/sdk/utils/d;->b()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createDeviceId(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/DeviceId$Builder;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/windmill/sdk/strategy/f;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/windmill/sdk/strategy/f;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->user_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/DeviceId$Builder;

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/windmill/sdk/strategy/f;->j:Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->build()Lcom/czhj/sdk/common/models/DeviceId;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/czhj/sdk/common/models/Device$Builder;->did(Lcom/czhj/sdk/common/models/DeviceId;)Lcom/czhj/sdk/common/models/Device$Builder;

    .line 8
    iget-object v1, p0, Lcom/windmill/sdk/strategy/f;->j:Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Device$Builder;->build()Lcom/czhj/sdk/common/models/Device;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->device(Lcom/czhj/sdk/common/models/Device;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    .line 9
    invoke-static {}, Lcom/windmill/sdk/utils/d;->a()Lcom/windmill/sdk/utils/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/windmill/sdk/utils/d;->b()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createNetwork(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/Network$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/windmill/sdk/strategy/f;->h:Lcom/czhj/sdk/common/models/Network$Builder;

    .line 10
    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Network$Builder;->build()Lcom/czhj/sdk/common/models/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->network(Lcom/czhj/sdk/common/models/Network;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    .line 11
    invoke-static {}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createAdSlot()Lcom/czhj/sdk/common/models/AdSlot$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/windmill/sdk/strategy/f;->i:Lcom/czhj/sdk/common/models/AdSlot$Builder;

    .line 12
    iget-object v1, v1, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_type:Ljava/util/List;

    iget v2, p0, Lcom/windmill/sdk/strategy/f;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, p0, Lcom/windmill/sdk/strategy/f;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    iget-object v1, p0, Lcom/windmill/sdk/strategy/f;->i:Lcom/czhj/sdk/common/models/AdSlot$Builder;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    .line 15
    :cond_1
    iget-object v1, v0, Lcom/czhj/sdk/common/models/BidRequest$Builder;->slots:Ljava/util/List;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/f;->i:Lcom/czhj/sdk/common/models/AdSlot$Builder;

    invoke-virtual {v2}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->build()Lcom/czhj/sdk/common/models/AdSlot;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, Lcom/czhj/sdk/common/models/Privacy$Builder;

    invoke-direct {v1}, Lcom/czhj/sdk/common/models/Privacy$Builder;-><init>()V

    .line 17
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/windmill/sdk/common/c;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/models/Privacy$Builder;->age(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Privacy$Builder;

    .line 18
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/windmill/sdk/common/c;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/models/Privacy$Builder;->child_protection(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Privacy$Builder;

    .line 19
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    invoke-static {}, Lcom/windmill/sdk/common/c;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/models/Privacy$Builder;->gdpr_consent(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Privacy$Builder;

    .line 20
    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Privacy$Builder;->build()Lcom/czhj/sdk/common/models/Privacy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->privacy(Lcom/czhj/sdk/common/models/Privacy;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    .line 21
    new-instance v1, Lcom/czhj/sdk/common/models/User$Builder;

    invoke-direct {v1}, Lcom/czhj/sdk/common/models/User$Builder;-><init>()V

    .line 22
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

    .line 23
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

    .line 24
    invoke-static {}, Lcom/windmill/sdk/common/c;->a()Lcom/windmill/sdk/common/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/windmill/sdk/common/c;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/czhj/sdk/common/models/User$Builder;->change_recommendation_state:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/User$Builder;->build()Lcom/czhj/sdk/common/models/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->user(Lcom/czhj/sdk/common/models/User;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    .line 26
    new-instance v1, Lcom/czhj/sdk/common/models/StrategyReq$Builder;

    invoke-direct {v1}, Lcom/czhj/sdk/common/models/StrategyReq$Builder;-><init>()V

    .line 27
    sget-boolean v2, Lcom/windmill/sdk/strategy/s;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/czhj/sdk/common/models/StrategyReq$Builder;->strategy_init:Ljava/lang/Boolean;

    .line 28
    sget-object v2, Lcom/windmill/sdk/strategy/s;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/windmill/sdk/strategy/f;->f:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 30
    iput-object v2, v1, Lcom/czhj/sdk/common/models/StrategyReq$Builder;->last_strategy_id:Ljava/lang/String;

    .line 31
    :cond_4
    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/StrategyReq$Builder;->build()Lcom/czhj/sdk/common/models/StrategyReq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->strategy_req(Lcom/czhj/sdk/common/models/StrategyReq;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    .line 32
    invoke-static {}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createWXProgramReq()Lcom/czhj/sdk/common/models/WXProgramReq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->wx_program_req(Lcom/czhj/sdk/common/models/WXProgramReq;)Lcom/czhj/sdk/common/models/BidRequest$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public a(Lcom/windmill/sdk/models/WaterfallResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "waterfallResponse"
        }
    .end annotation

    .line 34
    :try_start_0
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------deliverResponse---------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p1, Lcom/windmill/sdk/models/WaterfallResponse;->code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 36
    iget-object v0, p1, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/windmill/sdk/strategy/b;->a()Lcom/windmill/sdk/strategy/b;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/sdk/strategy/f;->k:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/windmill/sdk/strategy/b;->a(Lcom/windmill/sdk/models/WaterfallResponse;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lcom/windmill/sdk/strategy/b;->a()Lcom/windmill/sdk/strategy/b;

    move-result-object v0

    iget-object v1, p1, Lcom/windmill/sdk/models/WaterfallResponse;->sign:Ljava/lang/String;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/f;->k:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/strategy/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallResponse;

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/strategy/f;->n:Lcom/windmill/sdk/strategy/f$a;

    if-eqz v0, :cond_2

    .line 40
    iget-object p1, p1, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    invoke-interface {v0, p1}, Lcom/windmill/sdk/strategy/f$a;->a(Lcom/windmill/sdk/models/Waterfall;)V

    goto :goto_1

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/f;->n:Lcom/windmill/sdk/strategy/f$a;

    if-eqz v0, :cond_2

    .line 42
    iget-object v1, p1, Lcom/windmill/sdk/models/WaterfallResponse;->code:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Lcom/windmill/sdk/models/WaterfallResponse;->error_message:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/windmill/sdk/strategy/f$a;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deliver strategy exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/windmill/sdk/strategy/f;->n:Lcom/windmill/sdk/strategy/f$a;

    if-eqz v0, :cond_2

    .line 45
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_STRATEGY_REQUEST:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/windmill/sdk/strategy/f$a;->a(ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "slotCustomGrop"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/windmill/sdk/strategy/f;->p:Ljava/util/HashMap;

    return-void
.end method

.method public deliverError(Lcom/czhj/volley/VolleyError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/f;->n:Lcom/windmill/sdk/strategy/f$a;

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
    invoke-interface {v0, v1, p1}, Lcom/windmill/sdk/strategy/f$a;->a(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "waterfallResponse"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/windmill/sdk/models/WaterfallResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/strategy/f;->a(Lcom/windmill/sdk/models/WaterfallResponse;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getBody()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/f;->o:[B

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
    const-string v0, "agn"

    .line 2
    .line 3
    const-string v1, "cp"

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
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/f;->a()Lcom/czhj/sdk/common/models/BidRequest$Builder;

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
    iget-object v4, p0, Lcom/windmill/sdk/strategy/f;->k:Lcom/windmill/sdk/WindMillAdRequest;

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
    iget-object v6, p0, Lcom/windmill/sdk/strategy/f;->k:Lcom/windmill/sdk/WindMillAdRequest;

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
    iget-object v4, p0, Lcom/windmill/sdk/strategy/f;->k:Lcom/windmill/sdk/WindMillAdRequest;

    .line 71
    .line 72
    if-eqz v4, :cond_5

    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    if-eqz v4, :cond_5

    .line 79
    .line 80
    new-instance v4, Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v5, p0, Lcom/windmill/sdk/strategy/f;->k:Lcom/windmill/sdk/WindMillAdRequest;

    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_4

    .line 104
    .line 105
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    check-cast v6, Ljava/lang/String;

    .line 110
    .line 111
    iget-object v7, p0, Lcom/windmill/sdk/strategy/f;->k:Lcom/windmill/sdk/WindMillAdRequest;

    .line 112
    .line 113
    invoke-virtual {v7}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    if-eqz v7, :cond_3

    .line 122
    .line 123
    iget-object v7, p0, Lcom/windmill/sdk/strategy/f;->k:Lcom/windmill/sdk/WindMillAdRequest;

    .line 124
    .line 125
    invoke-virtual {v7}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_4
    invoke-virtual {v3, v4}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->options(Ljava/util/Map;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    .line 142
    .line 143
    .line 144
    :cond_5
    iget-object v4, v3, Lcom/czhj/sdk/common/models/BidRequest$Builder;->ext_options:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    .line 146
    const-string v5, "1"

    .line 147
    .line 148
    if-eqz v4, :cond_6

    .line 149
    .line 150
    :try_start_1
    const-string v6, "support_saas_adx"

    .line 151
    .line 152
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    :cond_6
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 156
    .line 157
    iput-object v4, v3, Lcom/czhj/sdk/common/models/BidRequest$Builder;->disable_mediation:Ljava/lang/Boolean;

    .line 158
    .line 159
    invoke-virtual {v3}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->build()Lcom/czhj/sdk/common/models/BidRequest;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    new-instance v4, Lcom/windmill/sdk/models/StrategyRequest$Builder;

    .line 164
    .line 165
    invoke-direct {v4}, Lcom/windmill/sdk/models/StrategyRequest$Builder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v3}, Lcom/windmill/sdk/models/StrategyRequest$Builder;->bidRequest(Lcom/czhj/sdk/common/models/BidRequest;)Lcom/windmill/sdk/models/StrategyRequest$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    iget-object v4, p0, Lcom/windmill/sdk/strategy/f;->l:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/models/StrategyRequest$Builder;->sign(Ljava/lang/String;)Lcom/windmill/sdk/models/StrategyRequest$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    iget v4, p0, Lcom/windmill/sdk/strategy/f;->m:I

    .line 179
    .line 180
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/models/StrategyRequest$Builder;->request_type(Ljava/lang/Integer;)Lcom/windmill/sdk/models/StrategyRequest$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    iget-object v4, p0, Lcom/windmill/sdk/strategy/f;->p:Ljava/util/HashMap;

    .line 189
    .line 190
    if-eqz v4, :cond_7

    .line 191
    .line 192
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    if-eqz v6, :cond_8

    .line 197
    .line 198
    :cond_7
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    iget-object v6, p0, Lcom/windmill/sdk/strategy/f;->k:Lcom/windmill/sdk/WindMillAdRequest;

    .line 203
    .line 204
    invoke-virtual {v6}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {v4, v6}, Lcom/windmill/sdk/strategy/d;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    :cond_8
    if-eqz v4, :cond_9

    .line 213
    .line 214
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/models/StrategyRequest$Builder;->slot_group(Ljava/util/Map;)Lcom/windmill/sdk/models/StrategyRequest$Builder;

    .line 215
    .line 216
    .line 217
    :cond_9
    invoke-static {}, Lcom/windmill/sdk/strategy/c;->a()Lcom/windmill/sdk/strategy/c;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    iget-object v6, p0, Lcom/windmill/sdk/strategy/f;->k:Lcom/windmill/sdk/WindMillAdRequest;

    .line 222
    .line 223
    invoke-virtual {v4, v6}, Lcom/windmill/sdk/strategy/c;->b(Lcom/windmill/sdk/WindMillAdRequest;)I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-virtual {v3, v4}, Lcom/windmill/sdk/models/StrategyRequest$Builder;->request_n(Ljava/lang/Integer;)Lcom/windmill/sdk/models/StrategyRequest$Builder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3}, Lcom/windmill/sdk/models/StrategyRequest$Builder;->build()Lcom/windmill/sdk/models/StrategyRequest;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    sget-object v4, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 239
    .line 240
    new-instance v6, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0}, Lcom/czhj/sdk/common/network/SigmobRequest;->getUrl()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v7, " send strategy request:"

    .line 253
    .line 254
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    invoke-static {v4, v6}, Lcom/windmill/sdk/base/WMLogUtil;->dd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 265
    .line 266
    .line 267
    :try_start_2
    invoke-virtual {v3}, Lcom/czhj/wire/Message;->encode()[B

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    iput-object v4, p0, Lcom/windmill/sdk/strategy/f;->o:[B

    .line 272
    .line 273
    invoke-static {v4}, Lcom/windmill/sdk/utils/c;->b([B)[B

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    iput-object v4, p0, Lcom/windmill/sdk/strategy/f;->o:[B

    .line 278
    .line 279
    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    .line 281
    .line 282
    goto :goto_1

    .line 283
    :catchall_0
    :try_start_3
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    iget-object v1, p0, Lcom/windmill/sdk/strategy/f;->o:[B

    .line 287
    .line 288
    if-eqz v1, :cond_a

    .line 289
    .line 290
    invoke-virtual {v3}, Lcom/czhj/wire/Message;->encode()[B

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    iput-object v1, p0, Lcom/windmill/sdk/strategy/f;->o:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 295
    .line 296
    :cond_a
    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/windmill/sdk/strategy/f;->o:[B

    .line 297
    .line 298
    const-string v3, "KGpfzbYsn4T9Jyuq"

    .line 299
    .line 300
    invoke-static {v1, v3}, Lcom/czhj/sdk/common/utils/AESUtil;->Encrypt([BLjava/lang/String;)[B

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    iput-object v1, p0, Lcom/windmill/sdk/strategy/f;->o:[B

    .line 305
    .line 306
    invoke-static {}, Lcom/czhj/sdk/common/utils/AESUtil;->generateNonce()[B

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    const/4 v3, 0x2

    .line 311
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 316
    .line 317
    .line 318
    goto :goto_2

    .line 319
    :catch_0
    move-exception v1

    .line 320
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 321
    .line 322
    .line 323
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 324
    .line 325
    .line 326
    goto :goto_2

    .line 327
    :catchall_1
    move-exception v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 329
    .line 330
    .line 331
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
    sget-object v1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "-----------parseNetworkResponse--------"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v1, v2}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p1, Lcom/czhj/volley/NetworkResponse;->data:[B

    .line 34
    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    new-instance v0, Lcom/czhj/volley/ParseError;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Lcom/czhj/volley/ParseError;-><init>(Lcom/czhj/volley/NetworkResponse;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/czhj/volley/Response;->error(Lcom/czhj/volley/VolleyError;)Lcom/czhj/volley/Response;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_0
    iget-object v1, p1, Lcom/czhj/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 48
    .line 49
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    const-string v1, "1"

    .line 56
    .line 57
    iget-object v2, p1, Lcom/czhj/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 58
    .line 59
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    iget-object v0, p1, Lcom/czhj/volley/NetworkResponse;->data:[B

    .line 70
    .line 71
    invoke-static {v0}, Lcom/windmill/sdk/utils/c;->a([B)[B

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p1, Lcom/czhj/volley/NetworkResponse;->data:[B

    .line 77
    .line 78
    :goto_0
    sget-object v1, Lcom/windmill/sdk/models/WaterfallResponse;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lcom/windmill/sdk/models/WaterfallResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    :try_start_1
    iget-object v1, v0, Lcom/windmill/sdk/models/WaterfallResponse;->uid:Ljava/lang/String;

    .line 87
    .line 88
    const-string v2, "KGpfzbYsn4T9Jyuq"

    .line 89
    .line 90
    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/AESUtil;->DecryptStringServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2, v1}, Lcom/czhj/sdk/common/ClientMetadata;->setUid(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catch_0
    move-exception v1

    .line 103
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    :goto_1
    invoke-static {p1}, Lcom/czhj/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/czhj/volley/NetworkResponse;)Lcom/czhj/volley/Cache$Entry;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {v0, p1}, Lcom/czhj/volley/Response;->success(Ljava/lang/Object;Lcom/czhj/volley/Cache$Entry;)Lcom/czhj/volley/Response;

    .line 111
    .line 112
    .line 113
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    return-object p1

    .line 115
    :catchall_0
    move-exception p1

    .line 116
    new-instance v0, Lcom/czhj/volley/ParseError;

    .line 117
    .line 118
    invoke-direct {v0, p1}, Lcom/czhj/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v0}, Lcom/czhj/volley/Response;->error(Lcom/czhj/volley/VolleyError;)Lcom/czhj/volley/Response;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    return-object p1
.end method
