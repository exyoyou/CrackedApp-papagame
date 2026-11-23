.class public abstract Lcom/windmill/sdk/custom/WMAdBaseAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/a$a;


# static fields
.field private static final h:Ljava/lang/String; = "WMAdBaseAdapter"


# instance fields
.field a:Lcom/windmill/sdk/strategy/a;

.field b:Lcom/windmill/sdk/WindMillAdRequest;

.field c:Z

.field d:Z

.field e:Z

.field f:J

.field g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

.field public isGdtLoadSuc:Z

.field private j:Lcom/windmill/sdk/base/WMAdBaseConnector;

.field private k:Landroid/content/Context;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->c:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->d:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->e:Z

    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    iput-wide v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->f:J

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isGdtLoadSuc:Z

    .line 16
    .line 17
    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Lcom/windmill/sdk/base/WMAdBaseConnector;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->j:Lcom/windmill/sdk/base/WMAdBaseConnector;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/windmill/sdk/WindMillAdRequest;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "viewGroup",
            "adRequest",
            "isLoadAdPrice"
        }
    .end annotation

    if-nez p4, :cond_3

    .line 24
    iget-object p4, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->F()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 25
    iget-boolean p4, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->c:Z

    if-eqz p4, :cond_2

    .line 26
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    move-result-object p1

    .line 27
    iget-boolean p2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->d:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    .line 28
    iget-object p2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-interface {p1, p0, p2}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidLoadAdSuccessAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 29
    iput-boolean p2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->c:Z

    .line 30
    iget-boolean p2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->e:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 31
    iget-object p2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    new-instance p3, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p4, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p4}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p4

    const-string v0, "bid after load fail immediately"

    invoke-direct {p3, p4, v0}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p0, p2, p3}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_1
    :goto_0
    return-void

    .line 32
    :cond_2
    iget-object p4, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    iget-boolean p4, p4, Lcom/windmill/sdk/strategy/a;->k:Z

    if-eqz p4, :cond_3

    return-void

    .line 33
    :cond_3
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->f()V

    .line 34
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->e()V

    .line 35
    iget-object p4, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->loadCustomAd(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;)V

    return-void
.end method

.method private static a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adRequest",
            "adStrategy",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/WindMillAdRequest;",
            "Lcom/windmill/sdk/strategy/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    .line 7
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->r()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aK()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->s()I

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aK()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->s()I

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    move-result v0

    if-ne v0, v1, :cond_4

    const-string v0, "2"

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x9

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    move-result p0

    if-ne p0, v1, :cond_5

    const-string p0, "1"

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aT()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x7

    goto :goto_2

    :cond_6
    :goto_0
    const/16 v1, 0x8

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v1, 0x3

    :goto_2
    if-eqz p2, :cond_8

    const-string p0, "adtype"

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/windmill/sdk/WindMillAdRequest;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/windmill/sdk/WindMillAdRequest;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/windmill/sdk/models/AdInfo;Landroid/content/Context;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;Ljava/util/Map;)V
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
            "adInfo",
            "context",
            "adStrategy",
            "biddingListener",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/models/AdInfo;",
            "Landroid/content/Context;",
            "Lcom/windmill/sdk/strategy/a;",
            "Lcom/windmill/sdk/strategy/s$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    const-string p5, "adStrategy is null"

    .line 14
    invoke-interface {p4, p1, p3, p2, p5}, Lcom/windmill/sdk/strategy/s$a;->a(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    :cond_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_2

    .line 16
    invoke-direct/range {p0 .. p5}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->b(Lcom/windmill/sdk/models/AdInfo;Landroid/content/Context;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;Ljava/util/Map;)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->getInitStatus()I

    move-result v0

    if-nez v0, :cond_3

    .line 18
    invoke-direct/range {p0 .. p5}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->d(Lcom/windmill/sdk/models/AdInfo;Landroid/content/Context;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 19
    invoke-direct/range {p0 .. p5}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->c(Lcom/windmill/sdk/models/AdInfo;Landroid/content/Context;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;Ljava/util/Map;)V

    goto :goto_0

    .line 20
    :cond_4
    invoke-direct {p0, p1, p3, p4}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "adStrategy",
            "biddingListener"
        }
    .end annotation

    if-eqz p3, :cond_0

    const/4 v0, 0x2

    const-string v1, "init fail"

    .line 21
    invoke-interface {p3, p1, p2, v0, v1}, Lcom/windmill/sdk/strategy/s$a;->a(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->j:Lcom/windmill/sdk/base/WMAdBaseConnector;

    if-eqz p1, :cond_1

    .line 23
    new-instance p3, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    const-string v1, "loadBidding init fail"

    invoke-direct {p3, v0, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p0, p2, p3}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_1
    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 1

    .line 36
    instance-of v0, p3, Lcom/windmill/sdk/point/PointEntityWind;

    if-eqz v0, :cond_1

    .line 37
    check-cast p3, Lcom/windmill/sdk/point/PointEntityWind;

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p3, p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setAc_type(Ljava/lang/String;)V

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->b:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 41
    invoke-virtual {p3}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Lcom/windmill/sdk/custom/WMCustomAdapterProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    return-object p0
.end method

.method private b(Lcom/windmill/sdk/models/AdInfo;Landroid/content/Context;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "context",
            "adStrategy",
            "biddingListener",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/models/AdInfo;",
            "Landroid/content/Context;",
            "Lcom/windmill/sdk/strategy/a;",
            "Lcom/windmill/sdk/strategy/s$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->getInitStatus()I

    move-result v0

    const-string v1, "loadBidding init fail"

    if-nez v0, :cond_2

    if-eqz p4, :cond_5

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    :cond_0
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p2, p5, v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingToken(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_1

    .line 7
    invoke-interface {p4, p1, p3, p2}, Lcom/windmill/sdk/strategy/s$a;->a(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    const-string p5, "bidding token is null"

    .line 8
    invoke-interface {p4, p1, p3, p2, p5}, Lcom/windmill/sdk/strategy/s$a;->a(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->j:Lcom/windmill/sdk/base/WMAdBaseConnector;

    if-eqz p1, :cond_5

    .line 10
    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p4, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p4}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p4

    invoke-direct {p2, p4, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p0, p3, p2}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    new-instance v8, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p4

    move-object v4, p2

    move-object v5, p5

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/windmill/sdk/custom/WMAdBaseAdapter$1;-><init>(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/s$a;Landroid/content/Context;Ljava/util/Map;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/AdInfo;)V

    invoke-virtual {v0, p0, v8}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->addInitListener(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/custom/WMCustomAdapterProxy$a;)V

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    const-string p2, "init fail"

    .line 12
    invoke-interface {p4, p1, p3, v2, p2}, Lcom/windmill/sdk/strategy/s$a;->a(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->j:Lcom/windmill/sdk/base/WMAdBaseConnector;

    if-eqz p1, :cond_5

    .line 14
    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p4, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p4}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p4

    invoke-direct {p2, p4, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p0, p3, p2}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private c(Lcom/windmill/sdk/models/AdInfo;Landroid/content/Context;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "context",
            "adStrategy",
            "biddingListener",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/models/AdInfo;",
            "Landroid/content/Context;",
            "Lcom/windmill/sdk/strategy/a;",
            "Lcom/windmill/sdk/strategy/s$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    new-instance v8, Lcom/windmill/sdk/custom/WMAdBaseAdapter$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p4

    move-object v4, p2

    move-object v5, p5

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/windmill/sdk/custom/WMAdBaseAdapter$2;-><init>(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/s$a;Landroid/content/Context;Ljava/util/Map;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/AdInfo;)V

    invoke-virtual {v0, p0, v8}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->addInitListener(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/custom/WMCustomAdapterProxy$a;)V

    return-void
.end method

.method private d(Lcom/windmill/sdk/models/AdInfo;Landroid/content/Context;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;Ljava/util/Map;)V
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
            "adInfo",
            "context",
            "adStrategy",
            "biddingListener",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/models/AdInfo;",
            "Landroid/content/Context;",
            "Lcom/windmill/sdk/strategy/a;",
            "Lcom/windmill/sdk/strategy/s$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_2

    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    :cond_0
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p2, p5, v1}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->getBiddingToken(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_1

    .line 7
    invoke-interface {p4, p1, p3, p2}, Lcom/windmill/sdk/strategy/s$a;->a(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    const-string p5, "bidding token is null"

    .line 8
    invoke-interface {p4, p1, p3, p2, p5}, Lcom/windmill/sdk/strategy/s$a;->a(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->j:Lcom/windmill/sdk/base/WMAdBaseConnector;

    if-eqz p1, :cond_2

    .line 10
    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p4, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p4}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p4

    invoke-direct {p2, p4, p5}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p0, p3, p2}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private e()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aN()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/windmill/sdk/utils/l;->c(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aY()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "strategyId"

    .line 32
    .line 33
    iget-object v2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/a;->aY()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "experimentId"

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a;->bb()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v3, ""

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "tobidId"

    .line 83
    .line 84
    iget-object v2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->b:Lcom/windmill/sdk/WindMillAdRequest;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v1, "loadId"

    .line 100
    .line 101
    iget-object v2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->b:Lcom/windmill/sdk/WindMillAdRequest;

    .line 102
    .line 103
    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillAdRequest;->getLoadId()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v1, "noAdUrl"

    .line 117
    .line 118
    iget-object v2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 119
    .line 120
    iget-object v2, v2, Lcom/windmill/sdk/strategy/a;->q:Ljava/lang/String;

    .line 121
    .line 122
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    :catch_0
    :cond_1
    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->f:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->c:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->d:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->e:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method final a()Lcom/windmill/sdk/base/WMAdConnector;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->j:Lcom/windmill/sdk/base/WMAdBaseConnector;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/windmill/sdk/base/WMAdConnector;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lcom/windmill/sdk/base/WMAdConnector;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final b()Lcom/windmill/sdk/base/WMAdNativeConnector;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->j:Lcom/windmill/sdk/base/WMAdBaseConnector;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/windmill/sdk/base/WMAdNativeConnector;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/windmill/sdk/base/WMAdNativeConnector;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getMediaExtraOption()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "adid"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/windmill/sdk/strategy/a;->m(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getMediaExtraOption()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "crid"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/windmill/sdk/strategy/a;->l(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->removeInitListener(Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->j:Lcom/windmill/sdk/base/WMAdBaseConnector;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->f()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->destroyAd()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public abstract destroyAd()V
.end method

.method public gdtNoadNotify(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final getAdapterPluginVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->getAdapterPluginVersion()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, "-1"

    .line 11
    .line 12
    return-object v0
.end method

.method public final getAdapterReadyTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getAdapterVersion()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->getAdapterSdkVersion()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getBanPkgNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->y()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseOnToBidCustomVersion()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->baseOnToBidCustomAdapterVersion()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getBidFloor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->ah()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBidFloorCurrency()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->ap()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/windmill/sdk/models/BidPrice;->CNY:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    return-object v0
.end method

.method public getBidTimeout()I
    .locals 1

    const/16 v0, 0xbb8

    return v0
.end method

.method public getBiddingToken(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "localExtra",
            "serverExtra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getBiddingType()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->Y()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->Z()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, -0x1

    .line 20
    return v0
.end method

.method public getChannelConfigByChannel(I)Lcom/windmill/sdk/models/ChannelConfig;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/windmill/sdk/strategy/g;->b()Lcom/windmill/sdk/strategy/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/strategy/g;->a(I)Lcom/windmill/sdk/models/ChannelConfig;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getChannelId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aN()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method public getChannelObject()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getChannelSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->getNetworkSdkVersion()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->k:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->Q()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/windmill/sdk/models/BidPrice;->CNY:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    return-object v0
.end method

.method public final getExtraOption()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->l:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getMediaExtraOption()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->l:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "getExtraOption:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->l:Ljava/util/Map;

    .line 38
    .line 39
    return-object v0
.end method

.method public final getFillType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->P()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getGroEcpm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->f()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public final getHbResponseBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a$a;->e()[B

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public final getHbResponseStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a$a;->c()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, ""

    .line 23
    .line 24
    return-object v0
.end method

.method public getLastBidInfo()Lcom/windmill/sdk/models/BidInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->b:Lcom/windmill/sdk/WindMillAdRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->b:Lcom/windmill/sdk/WindMillAdRequest;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/strategy/d;->c(Ljava/lang/String;)Lcom/windmill/sdk/models/BidInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method public final getLoadId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->b:Lcom/windmill/sdk/WindMillAdRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getLoadId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getMediaExtraOption()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNativeAdDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkOption()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRewardExtraOption()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRewardType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->t()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    return v0
.end method

.method public getS2sResultUrl(ZLjava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isWin",
            "originalUrl",
            "replaceMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p1, ""

    return-object p1
.end method

.method public getSaasChannelInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSaasOptions()Ljava/util/Map;
    .locals 1
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
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->x()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getServerExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->g:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSplashEyeAd()Lcom/windmill/sdk/splash/IWMSplashEyeAd;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTobidId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->b:Lcom/windmill/sdk/WindMillAdRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->b:Lcom/windmill/sdk/WindMillAdRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getUserId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public final initWithAdConnector(Lcom/windmill/sdk/custom/WMCustomAdapterProxy;Lcom/windmill/sdk/base/WMAdBaseConnector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapterProxy",
            "connector"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->j:Lcom/windmill/sdk/base/WMAdBaseConnector;

    .line 4
    .line 5
    return-void
.end method

.method public final declared-synchronized initializeSdk(Landroid/content/Context;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMCustomAdapterProxy$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "adStrategy",
            "initListener"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iput-object p1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->k:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->getInitStatus()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "WMAdBaseAdapter initializeSdk: "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, -0x1

    .line 38
    if-eq v0, v1, :cond_0

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    if-ne v0, v1, :cond_1

    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aU()Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->initializeInnerADN(Landroid/content/Context;Ljava/util/Map;ILcom/windmill/sdk/custom/WMCustomAdapterProxy$a;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->notifyPrivacyStatusChange()V

    .line 59
    .line 60
    .line 61
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    :catchall_1
    move-exception p1

    .line 68
    monitor-exit p0

    .line 69
    throw p1
.end method

.method public final declared-synchronized isInitSuccess()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->getInitStatus()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return v1

    .line 18
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    monitor-exit p0

    .line 20
    return v1

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 24
    :catchall_1
    move-exception v0

    .line 25
    monitor-exit p0

    .line 26
    throw v0
.end method

.method public final declared-synchronized isInitializing()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->getInitStatus()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x2

    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    monitor-exit p0

    .line 18
    return v1

    .line 19
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    return v1

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 25
    :catchall_1
    move-exception v0

    .line 26
    monitor-exit p0

    .line 27
    throw v0
.end method

.method public final isLoadSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isReady()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method protected isNativeRender(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serverExtra"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "nativeRenderType"

    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public abstract isReady()Z
.end method

.method public final isReady(Lcom/windmill/sdk/strategy/a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adStrategy"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isReady()Z

    move-result p1

    return p1
.end method

.method public isSucWithoutLoad()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isGdtLoadSuc:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isSupportRepeatInit(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/windmill/sdk/strategy/g;->b()Lcom/windmill/sdk/strategy/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/strategy/g;->b(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final isUseChannelIsReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    return v0
.end method

.method public final loadBidding(Lcom/windmill/sdk/models/AdInfo;Landroid/content/Context;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "context",
            "adRequest",
            "adStrategy",
            "biddingListener"
        }
    .end annotation

    .line 1
    iput-object p3, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->b:Lcom/windmill/sdk/WindMillAdRequest;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->l:Ljava/util/Map;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->f()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->destroyAd()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    if-eqz p4, :cond_2

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "------loadBidding:  context: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " channel id:"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aN()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    if-eqz v6, :cond_1

    .line 55
    .line 56
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aN()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-static {v0}, Lcom/windmill/sdk/utils/l;->d(I)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_0

    .line 65
    .line 66
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aN()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/16 v1, 0xd

    .line 71
    .line 72
    if-ne v0, v1, :cond_1

    .line 73
    .line 74
    :cond_0
    const-string v0, "TB_UserId"

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getUserId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->e()V

    .line 84
    .line 85
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v1, "------getAdType:  adtype: "

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aK()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, " subType:"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->s()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p3, p4, v6}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V

    .line 123
    .line 124
    .line 125
    move-object v1, p0

    .line 126
    move-object v2, p1

    .line 127
    move-object v3, p2

    .line 128
    move-object v4, p4

    .line 129
    move-object v5, p5

    .line 130
    invoke-direct/range {v1 .. v6}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a(Lcom/windmill/sdk/models/AdInfo;Landroid/content/Context;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-static {p2}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object p2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->j:Lcom/windmill/sdk/base/WMAdBaseConnector;

    .line 143
    .line 144
    if-eqz p2, :cond_2

    .line 145
    .line 146
    new-instance p3, Lcom/windmill/sdk/base/WMAdapterError;

    .line 147
    .line 148
    sget-object p5, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    .line 149
    .line 150
    invoke-virtual {p5}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 151
    .line 152
    .line 153
    move-result p5

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v1, "init fail:"

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-direct {p3, p5, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-interface {p2, p0, p4, p3}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 179
    .line 180
    .line 181
    :cond_2
    :goto_0
    return-void
.end method

.method abstract loadCustomAd(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "viewGroup",
            "adRequest",
            "adStrategy"
        }
    .end annotation
.end method

.method public final loadInnerAd(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "viewGroup",
            "adRequest",
            "adStrategy",
            "isLoadAdPrice"
        }
    .end annotation

    .line 1
    iput-object p4, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->b:Lcom/windmill/sdk/WindMillAdRequest;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->l:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "------loadInnerAd:  context: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " channel id:"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aN()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->Y()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x1

    .line 45
    if-ne v0, v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->ah()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v2, "bidFloor"

    .line 60
    .line 61
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->h()Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_1

    .line 75
    .line 76
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setAdapterServerExtra(Ljava/util/Map;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->getInitStatus()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iget-boolean v3, p3, Lcom/windmill/sdk/WindMillAdRequest;->isLoadToOut:Z

    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v2, "---loadInnerAd:initStatus "

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v2, ":isLoadToOut "

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v2, " "

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v2, "----hashcode: "

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    if-nez v0, :cond_3

    .line 155
    .line 156
    if-nez v3, :cond_5

    .line 157
    .line 158
    if-nez p1, :cond_2

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    :cond_2
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/windmill/sdk/WindMillAdRequest;Z)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_3
    const/4 v1, 0x2

    .line 169
    if-ne v0, v1, :cond_4

    .line 170
    .line 171
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->i:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    .line 172
    .line 173
    new-instance v9, Lcom/windmill/sdk/custom/WMAdBaseAdapter$3;

    .line 174
    .line 175
    move-object v1, v9

    .line 176
    move-object v2, p0

    .line 177
    move-object v4, p1

    .line 178
    move-object v5, p2

    .line 179
    move-object v6, p3

    .line 180
    move v7, p5

    .line 181
    move-object v8, p4

    .line 182
    invoke-direct/range {v1 .. v8}, Lcom/windmill/sdk/custom/WMAdBaseAdapter$3;-><init>(Lcom/windmill/sdk/custom/WMAdBaseAdapter;ZLandroid/content/Context;Landroid/view/ViewGroup;Lcom/windmill/sdk/WindMillAdRequest;ZLcom/windmill/sdk/strategy/a;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, p0, v9}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->addInitListener(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/custom/WMCustomAdapterProxy$a;)V

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_4
    iget-object p1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->j:Lcom/windmill/sdk/base/WMAdBaseConnector;

    .line 190
    .line 191
    if-eqz p1, :cond_5

    .line 192
    .line 193
    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    .line 194
    .line 195
    sget-object p3, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    .line 196
    .line 197
    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 198
    .line 199
    .line 200
    move-result p3

    .line 201
    new-instance p5, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v1, "init fail:initStatus "

    .line 207
    .line 208
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p5

    .line 218
    invoke-direct {p2, p3, p5}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-interface {p1, p0, p4, p2}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .line 223
    .line 224
    :catch_0
    :cond_5
    :goto_0
    return-void
.end method

.method public final notifyAdapterBiddingResult(ZLjava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isWin",
            "price",
            "referBidInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "0"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/a;->as()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const-string v1, "win_notice"

    .line 16
    .line 17
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object v2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/a;->as()Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    const-string v1, "lose_notice"

    .line 39
    .line 40
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/lang/String;

    .line 45
    .line 46
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v1, "noAdUrl"

    .line 64
    .line 65
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_4
    new-instance v0, Lcom/windmill/sdk/models/AdInfo;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 85
    .line 86
    invoke-direct {v0, v1}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 87
    .line 88
    .line 89
    const-string v1, "AdInfo"

    .line 90
    .line 91
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->notifyBiddingResult(ZLjava/lang/String;Ljava/util/Map;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public notifyBiddingResult(ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isWin",
            "price"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public notifyBiddingResult(ZLjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isWin",
            "price",
            "referBidInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public setAdapterServerExtra(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serverExtraMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->g:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setGroC2sPriceInfo(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "highestPrice",
            "groVersion",
            "pluginVersion",
            "priceSource",
            "adRootObjectClasspath",
            "groPkgName"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "-----setGroC2sPriceInfo: set placementId = "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v2, v0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " highestPrice = "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-wide v4, p1

    .line 31
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, " groVersion = "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-object v2, p3

    .line 40
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v3, " pluginVersion = "

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-object v7, p4

    .line 49
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v3, " priceSource = "

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-object/from16 v8, p5

    .line 58
    .line 59
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v3, " adRootObjectClasspath = "

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    move-object/from16 v9, p6

    .line 68
    .line 69
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v3, " groPkgName = "

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    move-object/from16 v10, p7

    .line 78
    .line 79
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v3, v0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 90
    .line 91
    move-object v6, p3

    .line 92
    invoke-virtual/range {v3 .. v10}, Lcom/windmill/sdk/strategy/a;->a(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_0
    return-void
.end method

.method public setGroEcpm(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ecpm"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "-----GroEcpm: set "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/strategy/a;->b(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method abstract showCustomAd(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/windmill/sdk/strategy/a;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "viewGroup",
            "adStrategy"
        }
    .end annotation
.end method

.method public final showInnerAd(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/windmill/sdk/strategy/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "viewGroup",
            "adStrategy"
        }
    .end annotation

    .line 1
    iput-object p3, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isGdtLoadSuc:Z

    .line 5
    .line 6
    if-eqz p3, :cond_2

    .line 7
    .line 8
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->Y()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "eCpm"

    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->h()Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v1, "WMAdBaseAdapter---showInnerAd:"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aa()Ljava/util/HashMap;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ":"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->showCustomAd(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/windmill/sdk/strategy/a;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->f()V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointType",
            "category",
            "onPointEntityExtraInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->b:Lcom/windmill/sdk/WindMillAdRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string p1, "WMAdBaseAdapter track: category is empty, cannot track point entity"

    .line 17
    .line 18
    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->b:Lcom/windmill/sdk/WindMillAdRequest;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 25
    .line 26
    new-instance v2, Lcom/windmill/sdk/custom/a;

    .line 27
    .line 28
    invoke-direct {v2, p0, p1, p3}, Lcom/windmill/sdk/custom/a;-><init>(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Ljava/lang/String;Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-static {p2, v0, v1, p1, v2}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    :goto_0
    const-string p1, "WMAdBaseAdapter track: adRequest or adStrategy is null, cannot track point entity"

    .line 37
    .line 38
    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public updateAdStrategy(Lcom/windmill/sdk/strategy/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    return-void
.end method
