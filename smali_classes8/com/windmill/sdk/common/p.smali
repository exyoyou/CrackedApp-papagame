.class public Lcom/windmill/sdk/common/p;
.super Lcom/windmill/sdk/common/l;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/base/WMAdConnector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/common/p$a;
    }
.end annotation


# static fields
.field private static G:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            ">;"
        }
    .end annotation
.end field

.field private B:I

.field private C:Lcom/windmill/sdk/strategy/a;

.field private D:I

.field private E:Lcom/windmill/sdk/strategy/s$b;

.field private F:Lcom/windmill/sdk/strategy/l$a;

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/lang/String;

.field private v:Lcom/windmill/sdk/common/p$a;

.field private w:Landroid/os/Handler;

.field private x:J

.field private y:Ljava/lang/String;

.field private z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/common/p$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "windAdRequestLoadLister"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/common/l;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x3a98

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/windmill/sdk/common/p;->x:J

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/common/p;->y:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/windmill/sdk/common/p;->B:I

    .line 14
    .line 15
    iput v0, p0, Lcom/windmill/sdk/common/p;->D:I

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/windmill/sdk/common/p;->H:Ljava/util/List;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/windmill/sdk/common/p;->v:Lcom/windmill/sdk/common/p$a;

    .line 25
    .line 26
    new-instance p2, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 32
    .line 33
    new-instance p2, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/windmill/sdk/common/p;->z:Ljava/util/Map;

    .line 39
    .line 40
    new-instance p2, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, Lcom/windmill/sdk/common/p;->A:Ljava/util/List;

    .line 46
    .line 47
    new-instance p2, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Lcom/windmill/sdk/common/l;->n:Ljava/util/Map;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/windmill/sdk/common/p;->u:Ljava/lang/String;

    .line 61
    .line 62
    :try_start_0
    new-instance p1, Lcom/windmill/sdk/common/p$1;

    .line 63
    .line 64
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAd;->getTobidHandlerLooper()Landroid/os/Looper;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-direct {p1, p0, p2}, Lcom/windmill/sdk/common/p$1;-><init>(Lcom/windmill/sdk/common/p;Landroid/os/Looper;)V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/windmill/sdk/common/p;->w:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    :catch_0
    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/common/p;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/windmill/sdk/common/p;->B:I

    return p1
.end method

.method static synthetic a(Lcom/windmill/sdk/common/p;)Landroid/os/Handler;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/windmill/sdk/common/p;->w:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/strategy/l$a;)Lcom/windmill/sdk/strategy/l$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/windmill/sdk/common/p;->F:Lcom/windmill/sdk/strategy/l$a;

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/strategy/s$b;)Lcom/windmill/sdk/strategy/s$b;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/common/p;->E:Lcom/windmill/sdk/strategy/s$b;

    return-object p1
.end method

.method private a(Lcom/windmill/sdk/WindMillError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error"
        }
    .end annotation

    .line 137
    :try_start_0
    iget-boolean v0, p0, Lcom/windmill/sdk/common/l;->k:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/windmill/sdk/common/l;->k:Z

    .line 139
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->w:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/windmill/sdk/common/l;->c:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FAIL_LOADING:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FAIL_INTERVAL:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/windmill/sdk/common/l;->k:Z

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->w:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Lcom/windmill/sdk/common/l;->a(Landroid/os/Handler;)V

    .line 143
    :goto_0
    new-instance v0, Lcom/windmill/sdk/common/p$2;

    invoke-direct {v0, p0, p1}, Lcom/windmill/sdk/common/p$2;-><init>(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/WindMillError;)V

    invoke-virtual {p0, v0}, Lcom/windmill/sdk/common/l;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 144
    :cond_3
    iget-boolean v0, p0, Lcom/windmill/sdk/common/l;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/windmill/sdk/common/l;->m:Lcom/windmill/sdk/base/AutoAdLoadListener;

    if-eqz v0, :cond_4

    .line 145
    iget-object v1, p0, Lcom/windmill/sdk/common/p;->u:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/windmill/sdk/base/AutoAdLoadListener;->onAutoAdLoadFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_1
    return-void
.end method

.method private a(Lcom/windmill/sdk/WindMillError;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "error",
            "strategy",
            "timerStage"
        }
    .end annotation

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/s;->l()Lcom/windmill/sdk/models/Waterfall;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 134
    iget-object v4, p0, Lcom/windmill/sdk/common/p;->y:Ljava/lang/String;

    iget-object v5, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    move-object v1, p0

    move-object v2, p2

    move-object v6, p1

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/Waterfall;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/WindMillError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/common/p;ILcom/windmill/sdk/strategy/a;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/common/p;->b(ILcom/windmill/sdk/strategy/a;)V

    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/WindMillError;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/WindMillError;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/strategy/a;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/p;->g(Lcom/windmill/sdk/strategy/a;)V

    return-void
.end method

.method private a(Lcom/windmill/sdk/strategy/a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
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
            "strategy",
            "event_type",
            "errorCode",
            "externalErrorCode",
            "msg"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------show "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    const-string v1, "error"

    .line 111
    iget-object v3, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v5, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    new-instance v9, Lcom/windmill/sdk/common/p$12;

    invoke-direct {v9, p0, p1}, Lcom/windmill/sdk/common/p$12;-><init>(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/strategy/a;)V

    move-object v2, p2

    move-object v4, p1

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v9}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;ILjava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/utils/m$a;)V

    return-void
.end method

.method private a(ZLcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isLoadAdPrice",
            "adStrategy",
            "error"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/windmill/sdk/common/p;->E:Lcom/windmill/sdk/strategy/s$b;

    if-eqz p1, :cond_1

    .line 65
    invoke-interface {p1, p2, p3}, Lcom/windmill/sdk/strategy/s$b;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/common/p;->F:Lcom/windmill/sdk/strategy/l$a;

    if-eqz p1, :cond_1

    const-string v0, "ready"

    .line 67
    invoke-interface {p1, p2, p3, v0}, Lcom/windmill/sdk/strategy/l$a;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/windmill/sdk/common/p;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/common/p;->y:Ljava/lang/String;

    return-object p0
.end method

.method private b(ILcom/windmill/sdk/strategy/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "strategy"
        }
    .end annotation

    .line 9
    :try_start_0
    sget-object v0, Lcom/windmill/sdk/common/p;->G:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/windmill/sdk/common/p;->G:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    const-string v1, "tobid_native"

    invoke-virtual {p0, v1}, Lcom/windmill/sdk/common/l;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/windmill/sdk/common/p;->G:Ljava/lang/ref/WeakReference;

    .line 11
    :cond_1
    sget-object v0, Lcom/windmill/sdk/common/p;->G:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/windmill/sdk/common/l;->a(Ljava/util/concurrent/ExecutorService;ILcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillAdRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private b(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adStrategy",
            "adAdapter"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->w:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->w:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->ab()I

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/common/p;->w:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->ab()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/common/p;->w:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/windmill/sdk/common/p;->x:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/windmill/sdk/common/l;->g()Lcom/windmill/sdk/WMAdSourceStatusListener;

    move-result-object v0

    const/4 v1, 0x1

    .line 18
    invoke-virtual {p1, v1}, Lcom/windmill/sdk/strategy/a;->l(Z)V

    if-eqz v0, :cond_2

    .line 19
    new-instance v1, Lcom/windmill/sdk/models/AdInfo;

    invoke-direct {v1, p1}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 20
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 21
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->F()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->l:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 23
    invoke-interface {v0, v1}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceBiddingStart(Lcom/windmill/sdk/models/AdInfo;)V

    .line 24
    invoke-interface {v0, v1}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceLoadStart(Lcom/windmill/sdk/models/AdInfo;)V

    goto :goto_1

    .line 25
    :cond_1
    invoke-interface {v0, v1}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceLoadStart(Lcom/windmill/sdk/models/AdInfo;)V

    .line 26
    :cond_2
    :goto_1
    invoke-static {}, Lcom/windmill/sdk/utils/a;->a()Lcom/windmill/sdk/utils/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/windmill/sdk/utils/a;->a(Lcom/windmill/sdk/utils/a$a;)V

    .line 27
    new-instance v0, Lcom/windmill/sdk/common/p$11;

    invoke-direct {v0, p0, p2, p1}, Lcom/windmill/sdk/common/p$11;-><init>(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    invoke-virtual {p0, v0}, Lcom/windmill/sdk/common/l;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/windmill/sdk/common/p;)Lcom/windmill/sdk/strategy/s$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/common/p;->E:Lcom/windmill/sdk/strategy/s$b;

    return-object p0
.end method

.method static synthetic d(Lcom/windmill/sdk/common/p;)Lcom/windmill/sdk/common/p$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/common/p;->v:Lcom/windmill/sdk/common/p$a;

    return-object p0
.end method

.method static synthetic e(Lcom/windmill/sdk/common/p;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/common/p;->u:Ljava/lang/String;

    return-object p0
.end method

.method private g(Lcom/windmill/sdk/strategy/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->v()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/windmill/sdk/common/p;->adapterDidLoadAdSuccessAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    .line 22
    .line 23
    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const-string v3, "sts is not find adapter"

    .line 30
    .line 31
    invoke-direct {v1, v2, v3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0, p1, v1}, Lcom/windmill/sdk/common/p;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->w()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->z()Lcom/windmill/sdk/base/WMAdapterError;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    .line 51
    .line 52
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const-string v2, "getPreloadAdapterError is null"

    .line 59
    .line 60
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p0, v1, p1, v0}, Lcom/windmill/sdk/common/p;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v2, "------------checkLoadStatus------------isLoading------------"

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {v0, p1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void
.end method

.method private h(Lcom/windmill/sdk/strategy/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adStrategy"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 4
    .line 5
    new-instance v2, Lcom/windmill/sdk/common/p$10;

    .line 6
    .line 7
    invoke-direct {v2, p0}, Lcom/windmill/sdk/common/p$10;-><init>(Lcom/windmill/sdk/common/p;)V

    .line 8
    .line 9
    .line 10
    const-string v3, "load"

    .line 11
    .line 12
    invoke-static {v3, v0, p1, v1, v2}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/windmill/sdk/common/p;->y:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/windmill/sdk/WindMillAdRequest;->setLoadId(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/windmill/sdk/common/l;->f:Z

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/windmill/sdk/common/p;->F:Lcom/windmill/sdk/strategy/l$a;

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/windmill/sdk/common/l;->j:Z

    .line 23
    .line 24
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    new-instance v0, Lcom/windmill/sdk/strategy/s;

    .line 29
    .line 30
    new-instance v1, Lcom/windmill/sdk/common/p$7;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/windmill/sdk/common/p$7;-><init>(Lcom/windmill/sdk/common/p;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p0, v1}, Lcom/windmill/sdk/strategy/s;-><init>(Lcom/windmill/sdk/common/l;Lcom/windmill/sdk/strategy/s$d;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/windmill/sdk/common/p;->w:Landroid/os/Handler;

    .line 45
    .line 46
    invoke-virtual {v0, v1, p0, v2}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/common/l;Landroid/os/Handler;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method protected a(ILcom/windmill/sdk/strategy/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "strategy"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p2, p1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/strategy/a;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 62
    invoke-virtual {p0, p2, v0}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/strategy/a;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 63
    invoke-virtual {p0, p2}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/strategy/a;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/windmill/sdk/WindMillAdRequest;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "isAutoLoad"
        }
    .end annotation

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/windmill/sdk/common/p;->D:I

    .line 9
    iput-boolean v0, p0, Lcom/windmill/sdk/common/l;->s:Z

    .line 10
    iput-boolean p2, p0, Lcom/windmill/sdk/common/l;->c:Z

    .line 11
    iput v0, p0, Lcom/windmill/sdk/common/p;->B:I

    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/windmill/sdk/common/l;->a(ZLcom/windmill/sdk/WindMillAdRequest;)Lcom/windmill/sdk/common/l$b;

    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------loadAd:--status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/windmill/sdk/common/p;->B:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 14
    iput-boolean v0, p0, Lcom/windmill/sdk/common/l;->k:Z

    .line 15
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    iput-boolean v0, v2, Lcom/windmill/sdk/WindMillAdRequest;->isLoadToOut:Z

    .line 16
    sget-object v2, Lcom/windmill/sdk/common/p$6;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "WindFilterLoadInterval"

    .line 17
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 18
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FAIL_INTERVAL:Lcom/windmill/sdk/WindMillError;

    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/WindMillError;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "WindFilterLoadingBreak"

    .line 19
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 20
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FAIL_LOADING:Lcom/windmill/sdk/WindMillError;

    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/WindMillError;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "WindFilterGdpr"

    .line 21
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 22
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_GDPR_DENIED:Lcom/windmill/sdk/WindMillError;

    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/WindMillError;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "WindFilterAdCount"

    .line 23
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 24
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_COUNT_IS_EMPTY:Lcom/windmill/sdk/WindMillError;

    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/WindMillError;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "WindFilterParameter"

    .line 25
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 26
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_PLACEMENT_ID_IS_EMPTY:Lcom/windmill/sdk/WindMillError;

    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/WindMillError;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "WindFilterInit"

    .line 27
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 28
    sget-object p1, Lcom/windmill/sdk/WindMillAd;->mAppId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_NOT_INIT:Lcom/windmill/sdk/WindMillError;

    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/WindMillError;)V

    goto :goto_0

    .line 30
    :cond_0
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_INIT_EXCEPTION:Lcom/windmill/sdk/WindMillError;

    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/WindMillError;)V

    goto :goto_0

    :pswitch_6
    const-string v1, "WindFilterKeepGoing"

    .line 31
    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p1, v0, p2}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/WindMillAdRequest;ZZ)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/windmill/sdk/WindMillAdRequest;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "useLastStrategy",
            "isAutoLoad"
        }
    .end annotation

    .line 33
    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    .line 34
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/common/ClientMetadata;->setUserId(Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->n:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 36
    iget-object p1, p0, Lcom/windmill/sdk/common/p;->z:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 37
    iget-object p1, p0, Lcom/windmill/sdk/common/p;->A:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 38
    iput-boolean p3, p0, Lcom/windmill/sdk/common/l;->c:Z

    .line 39
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1, p3}, Lcom/windmill/sdk/WindMillAdRequest;->setRefreshRequest(Z)V

    :cond_0
    if-nez p2, :cond_1

    .line 41
    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "load ad not use lastStrategy loadId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/windmill/sdk/common/p;->y:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 43
    invoke-direct {p0}, Lcom/windmill/sdk/common/p;->q()V

    goto :goto_0

    .line 44
    :cond_1
    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "load ad use lastStrategy loadId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/windmill/sdk/common/p;->y:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/windmill/sdk/common/p;->b()V

    :goto_0
    return-void
.end method

.method public a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "strategy",
            "nativeADDataList"
        }
    .end annotation

    const-string v0, " "

    if-eqz p3, :cond_6

    .line 112
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v2, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/windmill/sdk/common/p;->y:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p2, v3}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Ljava/util/List;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 114
    iput v1, p0, Lcom/windmill/sdk/common/p;->B:I

    .line 115
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    if-eqz v2, :cond_1

    .line 116
    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/s;->j()V

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v3, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusReady:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne v2, v3, :cond_2

    const-string p1, "has send notify nativeAd load success, don\'t do again"

    .line 118
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 119
    :cond_2
    sget-object v4, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    if-eq v2, v4, :cond_3

    const-string p1, "not do nativeAd load ad"

    .line 120
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 121
    :cond_3
    iput-object v3, p0, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    .line 122
    iget-object v2, p0, Lcom/windmill/sdk/common/p;->w:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/windmill/sdk/common/l;->a(Landroid/os/Handler;)V

    .line 123
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 124
    iput-object p2, p0, Lcom/windmill/sdk/common/p;->C:Lcom/windmill/sdk/strategy/a;

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "----onLoadSuccess--mIsAutoLoad: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/windmill/sdk/common/l;->c:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " autoListener:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/windmill/sdk/common/l;->m:Lcom/windmill/sdk/base/AutoAdLoadListener;

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/windmill/sdk/common/p;->u:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/windmill/sdk/common/p;->C:Lcom/windmill/sdk/strategy/a;

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 126
    iget-boolean p1, p0, Lcom/windmill/sdk/common/l;->c:Z

    if-nez p1, :cond_5

    .line 127
    new-instance p1, Lcom/windmill/sdk/common/p$14;

    invoke-direct {p1, p0, p3}, Lcom/windmill/sdk/common/p$14;-><init>(Lcom/windmill/sdk/common/p;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 128
    :cond_5
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->m:Lcom/windmill/sdk/base/AutoAdLoadListener;

    if-eqz p1, :cond_7

    .line 129
    iget-object p2, p0, Lcom/windmill/sdk/common/p;->u:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/windmill/sdk/base/AutoAdLoadListener;->onAutoAdLoadSuccess(Ljava/lang/String;)V

    goto :goto_2

    .line 130
    :cond_6
    :goto_1
    new-instance p3, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    const-string v1, "adapterDidLoadNativeAdSuccessAd but nativeADDataList size is null"

    invoke-direct {p3, v0, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Lcom/windmill/sdk/common/p;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_2
    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strategy",
            "error"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------------notifyPreloadTimeOut------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/windmill/sdk/common/p;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "adStrategy",
            "biddingListener"
        }
    .end annotation

    .line 48
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------adapterLoadBidToken------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Lcom/windmill/sdk/utils/l;->a(Lcom/windmill/sdk/strategy/a;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p0, v1, p1, v0, p0}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;Lcom/windmill/sdk/base/WMAdBaseConnector;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 52
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v1, p0, Lcom/windmill/sdk/common/p;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/WindMillAdRequest;->setLoadId(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/strategy/a;->l(Z)V

    .line 54
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/strategy/a;->n(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/windmill/sdk/common/l;->g()Lcom/windmill/sdk/WMAdSourceStatusListener;

    move-result-object v0

    .line 56
    new-instance v3, Lcom/windmill/sdk/models/AdInfo;

    invoke-direct {v3, p1}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 57
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v3, v1}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    if-eqz v0, :cond_1

    .line 58
    invoke-interface {v0, v3}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceBiddingStart(Lcom/windmill/sdk/models/AdInfo;)V

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/windmill/sdk/common/l;->a(I)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    new-instance v7, Lcom/windmill/sdk/common/p$8;

    invoke-direct {v7, p0, p2, v0}, Lcom/windmill/sdk/common/p$8;-><init>(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/strategy/s$a;Lcom/windmill/sdk/WMAdSourceStatusListener;)V

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->loadBidding(Lcom/windmill/sdk/models/AdInfo;Landroid/content/Context;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adStrategy",
            "isLoadAdPrice"
        }
    .end annotation

    .line 68
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------adapterLoadBiddingPrice--c2c-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Lcom/windmill/sdk/utils/l;->a(Lcom/windmill/sdk/strategy/a;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_NOT_FOUND_ADAPTER:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p2, p1, v0}, Lcom/windmill/sdk/common/p;->a(ZLcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p0, v1, p1, v0, p0}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;Lcom/windmill/sdk/base/WMAdBaseConnector;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 73
    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/p;->h(Lcom/windmill/sdk/strategy/a;)V

    .line 74
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v1, p0, Lcom/windmill/sdk/common/p;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/WindMillAdRequest;->setLoadId(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/strategy/a;->l(Z)V

    .line 76
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/strategy/a;->n(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->l:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p0}, Lcom/windmill/sdk/common/l;->g()Lcom/windmill/sdk/WMAdSourceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 79
    new-instance v1, Lcom/windmill/sdk/models/AdInfo;

    invoke-direct {v1, p1}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 80
    iget-object v3, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v1, v3}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    if-eqz p2, :cond_1

    .line 81
    invoke-interface {v0, v1}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceBiddingStart(Lcom/windmill/sdk/models/AdInfo;)V

    .line 82
    :cond_1
    invoke-interface {v0, v1}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceLoadStart(Lcom/windmill/sdk/models/AdInfo;)V

    .line 83
    :cond_2
    invoke-static {}, Lcom/windmill/sdk/utils/a;->a()Lcom/windmill/sdk/utils/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/windmill/sdk/utils/a;->a(Lcom/windmill/sdk/utils/a$a;)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->d(Lcom/windmill/sdk/strategy/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    new-instance v0, Lcom/windmill/sdk/common/p$9;

    invoke-direct {v0, p0, v2, p1}, Lcom/windmill/sdk/common/p$9;-><init>(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    invoke-virtual {p0, v0}, Lcom/windmill/sdk/common/l;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/windmill/sdk/common/l;->a(I)Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->loadInnerAd(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Z)V

    goto :goto_0

    .line 87
    :cond_4
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_NOT_FOUND_ADAPTER:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p2, p1, v0}, Lcom/windmill/sdk/common/p;->a(ZLcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 88
    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p2, p1, v1}, Lcom/windmill/sdk/common/p;->a(ZLcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOut"
        }
    .end annotation

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->w:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 149
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/windmill/sdk/strategy/a;

    .line 150
    invoke-virtual {p0, v2}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 151
    sget-object v3, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "controller destroy adAdapter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/windmill/sdk/utils/a;->a()Lcom/windmill/sdk/utils/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/windmill/sdk/utils/a;->b(Lcom/windmill/sdk/utils/a$a;)V

    .line 153
    invoke-virtual {v2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->destroy()V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    if-eqz v0, :cond_3

    .line 155
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/s;->m()V

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 157
    iput-object v1, p0, Lcom/windmill/sdk/common/p;->v:Lcom/windmill/sdk/common/p$a;

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/windmill/sdk/common/l;->k:Z

    .line 159
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/windmill/sdk/common/l;->a(ZLjava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;)V

    .line 160
    invoke-virtual {p0}, Lcom/windmill/sdk/common/l;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "adStrategy"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 89
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----adapterInitAndLoad--getName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Lcom/windmill/sdk/utils/l;->a(Lcom/windmill/sdk/strategy/a;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    new-instance v2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v3, Lcom/windmill/sdk/WindMillError;->ERROR_NOT_FOUND_ADAPTER:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v4

    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1, p1, v2}, Lcom/windmill/sdk/common/p;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    return v0

    .line 93
    :cond_0
    iget-object v3, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p0, v3, p1, v2, p0}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;Lcom/windmill/sdk/base/WMAdBaseConnector;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 94
    invoke-virtual {p0, v2, p1}, Lcom/windmill/sdk/common/l;->b(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/base/WMAdapterError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 95
    invoke-virtual {p0, v2, p1, v3}, Lcom/windmill/sdk/common/p;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    return v0

    .line 96
    :cond_1
    iget-object v3, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v4, p0, Lcom/windmill/sdk/common/p;->y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/windmill/sdk/WindMillAdRequest;->setLoadId(Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/windmill/sdk/common/p;->y:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/windmill/sdk/strategy/a;->n(Ljava/lang/String;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/p;->h(Lcom/windmill/sdk/strategy/a;)V

    .line 99
    iget-object v3, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v4, p0, Lcom/windmill/sdk/common/p;->y:Ljava/lang/String;

    invoke-virtual {p0, v3, p1, v4}, Lcom/windmill/sdk/common/l;->b(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->F()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    invoke-virtual {v2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isLoadSuccess()Z

    move-result v3

    if-nez v3, :cond_2

    .line 102
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->b(Lcom/windmill/sdk/strategy/a;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 103
    invoke-direct {p0, p1, v2}, Lcom/windmill/sdk/common/p;->b(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    goto :goto_0

    .line 104
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load\u590d\u7528\u5df2\u7ecfLoad\u6210\u529f\u7684\u7684adapter:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2, p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->updateAdStrategy(Lcom/windmill/sdk/strategy/a;)V

    .line 106
    invoke-virtual {p0, v2, p1}, Lcom/windmill/sdk/common/p;->adapterDidLoadAdSuccessAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    const/4 p1, 0x1

    return p1

    .line 107
    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/windmill/sdk/common/p;->b(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    goto :goto_0

    .line 108
    :cond_4
    new-instance v2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v3, Lcom/windmill/sdk/WindMillError;->ERROR_NOT_FOUND_ADAPTER:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v4

    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1, p1, v2}, Lcom/windmill/sdk/common/p;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 109
    new-instance v3, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v4, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v4}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1, p1, v3}, Lcom/windmill/sdk/common/p;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_5
    :goto_0
    return v0
.end method

.method public adapterDidAdClick(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "strategy",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/custom/WMAdBaseAdapter;",
            "Lcom/windmill/sdk/strategy/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 4
    .line 5
    new-instance v2, Lcom/windmill/sdk/common/p$4;

    .line 6
    .line 7
    invoke-direct {v2, p0, p2, p3, p1}, Lcom/windmill/sdk/common/p$4;-><init>(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "click"

    .line 11
    .line 12
    invoke-static {p1, v0, p2, v1, v2}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public adapterDidAdClickDownload(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapter",
            "adStrategy"
        }
    .end annotation

    return-void
.end method

.method public adapterDidCloseAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapter",
            "adStrategy"
        }
    .end annotation

    return-void
.end method

.method public adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "strategy",
            "error"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "adapterDidFailToLoadAd() called with: strategy = ["

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, "], error = ["

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, "]"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-boolean p1, p0, Lcom/windmill/sdk/common/l;->f:Z

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    if-nez p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->F()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    iget-object p1, p0, Lcom/windmill/sdk/common/p;->E:Lcom/windmill/sdk/strategy/s$b;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-interface {p1, p2, p3}, Lcom/windmill/sdk/strategy/s$b;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->C()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, Lcom/windmill/sdk/common/p;->F:Lcom/windmill/sdk/strategy/l$a;

    .line 64
    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    const-string v1, "ready"

    .line 68
    .line 69
    invoke-interface {p1, p2, p3, v1}, Lcom/windmill/sdk/strategy/l$a;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/windmill/sdk/common/l;->g()Lcom/windmill/sdk/WMAdSourceStatusListener;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->U()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->n()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_2

    .line 89
    .line 90
    invoke-virtual {p3}, Lcom/windmill/sdk/base/WMAdapterError;->getErrorCode()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_CHANNEL_LOAD_AD_TIME_OUT:Lcom/windmill/sdk/WindMillError;

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eq v1, v2, :cond_2

    .line 101
    .line 102
    invoke-virtual {p2, v0}, Lcom/windmill/sdk/strategy/a;->d(Z)V

    .line 103
    .line 104
    .line 105
    new-instance v0, Lcom/windmill/sdk/models/AdInfo;

    .line 106
    .line 107
    invoke-direct {v0, p2}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 108
    .line 109
    .line 110
    iget-object p2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 111
    .line 112
    invoke-virtual {v0, p2}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, v0, p3}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceLoadFailed(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    return-void

    .line 119
    :cond_3
    invoke-virtual {p0}, Lcom/windmill/sdk/common/l;->g()Lcom/windmill/sdk/WMAdSourceStatusListener;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-eqz p1, :cond_4

    .line 124
    .line 125
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->U()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_4

    .line 130
    .line 131
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->n()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_4

    .line 136
    .line 137
    invoke-virtual {p3}, Lcom/windmill/sdk/base/WMAdapterError;->getErrorCode()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_CHANNEL_LOAD_AD_TIME_OUT:Lcom/windmill/sdk/WindMillError;

    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eq v1, v2, :cond_4

    .line 148
    .line 149
    invoke-virtual {p2, v0}, Lcom/windmill/sdk/strategy/a;->d(Z)V

    .line 150
    .line 151
    .line 152
    new-instance v1, Lcom/windmill/sdk/models/AdInfo;

    .line 153
    .line 154
    invoke-direct {v1, p2}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 155
    .line 156
    .line 157
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 158
    .line 159
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {p1, v1, p3}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceLoadFailed(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 163
    .line 164
    .line 165
    :cond_4
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->w()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-nez p1, :cond_5

    .line 170
    .line 171
    const-string v3, "ready"

    .line 172
    .line 173
    invoke-virtual {p3}, Lcom/windmill/sdk/base/WMAdapterError;->getErrorCode()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    invoke-virtual {p3}, Lcom/windmill/sdk/base/WMAdapterError;->getExternalErrorCode()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-virtual {p3}, Lcom/windmill/sdk/base/WMAdapterError;->getMessage()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    move-object v1, p0

    .line 186
    move-object v2, p2

    .line 187
    invoke-direct/range {v1 .. v6}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/strategy/a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_5
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 191
    .line 192
    if-eqz p1, :cond_6

    .line 193
    .line 194
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-nez p1, :cond_6

    .line 199
    .line 200
    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 201
    .line 202
    const-string p2, "adapterDidFailToLoadAd but is not current stage"

    .line 203
    .line 204
    invoke-static {p1, p2}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_6
    iget-object p1, p0, Lcom/windmill/sdk/common/p;->w:Landroid/os/Handler;

    .line 209
    .line 210
    const/16 v1, 0x7d0

    .line 211
    .line 212
    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->n:Ljava/util/Map;

    .line 216
    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v3, "-"

    .line 230
    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-interface {p1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2, v0, p3}, Lcom/windmill/sdk/strategy/a;->a(ZLcom/windmill/sdk/base/WMAdapterError;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->D()Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    const/4 p3, 0x0

    .line 256
    if-eqz p1, :cond_7

    .line 257
    .line 258
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->A()Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-eqz p1, :cond_9

    .line 263
    .line 264
    invoke-virtual {p2, p3}, Lcom/windmill/sdk/strategy/a;->h(Z)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :cond_7
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->C()Z

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    if-eqz p1, :cond_9

    .line 273
    .line 274
    iget-object p1, p0, Lcom/windmill/sdk/common/p;->F:Lcom/windmill/sdk/strategy/l$a;

    .line 275
    .line 276
    if-eqz p1, :cond_8

    .line 277
    .line 278
    invoke-interface {p1, p2}, Lcom/windmill/sdk/strategy/l$a;->a(Lcom/windmill/sdk/strategy/a;)V

    .line 279
    .line 280
    .line 281
    :cond_8
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->B()Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-eqz p1, :cond_9

    .line 286
    .line 287
    invoke-virtual {p2, p3}, Lcom/windmill/sdk/strategy/a;->i(Z)V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :cond_9
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 292
    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/windmill/sdk/common/l;->b(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/strategy/a;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    if-eqz p1, :cond_a

    .line 298
    .line 299
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 300
    .line 301
    .line 302
    move-result-object p3

    .line 303
    if-eqz p3, :cond_a

    .line 304
    .line 305
    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getNativeAdDataList()Ljava/util/List;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    if-eqz v2, :cond_a

    .line 310
    .line 311
    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getNativeAdDataList()Ljava/util/List;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-lez v2, :cond_a

    .line 320
    .line 321
    iget v2, p0, Lcom/windmill/sdk/common/p;->D:I

    .line 322
    .line 323
    const/16 v3, 0xa

    .line 324
    .line 325
    if-ge v2, v3, :cond_a

    .line 326
    .line 327
    invoke-virtual {p0, p3, p1}, Lcom/windmill/sdk/common/p;->adapterDidLoadAdSuccessAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 328
    .line 329
    .line 330
    iget p1, p0, Lcom/windmill/sdk/common/p;->D:I

    .line 331
    .line 332
    add-int/2addr p1, v0

    .line 333
    iput p1, p0, Lcom/windmill/sdk/common/p;->D:I

    .line 334
    .line 335
    return-void

    .line 336
    :cond_a
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 337
    .line 338
    if-eqz p1, :cond_b

    .line 339
    .line 340
    invoke-virtual {p1, p2}, Lcom/windmill/sdk/strategy/s;->b(Lcom/windmill/sdk/strategy/a;)V

    .line 341
    .line 342
    .line 343
    :cond_b
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->n:Ljava/util/Map;

    .line 344
    .line 345
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    iget-object p3, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 354
    .line 355
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 356
    .line 357
    .line 358
    move-result p3

    .line 359
    if-ne p1, p3, :cond_c

    .line 360
    .line 361
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    .line 362
    .line 363
    sget-object p3, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    .line 364
    .line 365
    if-ne p1, p3, :cond_c

    .line 366
    .line 367
    invoke-virtual {p0}, Lcom/windmill/sdk/common/p;->c()V

    .line 368
    .line 369
    .line 370
    iget-object p1, p0, Lcom/windmill/sdk/common/p;->w:Landroid/os/Handler;

    .line 371
    .line 372
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    .line 374
    .line 375
    iget-object p1, p0, Lcom/windmill/sdk/common/p;->w:Landroid/os/Handler;

    .line 376
    .line 377
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->a(Landroid/os/Handler;)V

    .line 378
    .line 379
    .line 380
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_NO_FILL:Lcom/windmill/sdk/WindMillError;

    .line 381
    .line 382
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillError;->copy()Lcom/windmill/sdk/WindMillError;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    const/4 p3, 0x0

    .line 387
    invoke-direct {p0, p1, p2, p3}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/WindMillError;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    :cond_c
    return-void
.end method

.method public adapterDidFailToPlayingAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "adStrategy",
            "error"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "adapterDidFailToPlayingAd() called with: strategy = ["

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "] "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Lcom/windmill/sdk/base/WMAdapterError;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p1, v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 40
    .line 41
    new-instance v0, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/czhj/sdk/common/json/JSONSerializer;->Serialize(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/WindMillError;->setMessage(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v3, "play"

    .line 61
    .line 62
    invoke-virtual {p3}, Lcom/windmill/sdk/base/WMAdapterError;->getErrorCode()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-virtual {p3}, Lcom/windmill/sdk/base/WMAdapterError;->getExternalErrorCode()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {p3}, Lcom/windmill/sdk/base/WMAdapterError;->getMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    move-object v1, p0

    .line 75
    move-object v2, p2

    .line 76
    invoke-direct/range {v1 .. v6}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/strategy/a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void
.end method

.method public adapterDidLoadAdReady(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapter",
            "strategy"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "adapterDidLoadNativeAdReady() called with: strategy = ["

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "] "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/windmill/sdk/common/l;->g()Lcom/windmill/sdk/WMAdSourceStatusListener;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->U()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->n()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-virtual {p2, v1}, Lcom/windmill/sdk/strategy/a;->d(Z)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Lcom/windmill/sdk/models/AdInfo;

    .line 55
    .line 56
    invoke-direct {v1, p2}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v1}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceLoadSuccess(Lcom/windmill/sdk/models/AdInfo;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    const-string v0, "ready"

    .line 68
    .line 69
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 72
    .line 73
    new-instance v3, Lcom/windmill/sdk/common/p$13;

    .line 74
    .line 75
    invoke-direct {v3, p0, p2, p1}, Lcom/windmill/sdk/common/p$13;-><init>(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1, p2, v2, v3}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->b(Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const/4 v2, 0x0

    .line 96
    invoke-virtual {v0, v2, v1, p2, p1}, Lcom/windmill/sdk/strategy/d;->a(ILjava/lang/String;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :goto_0
    return-void
.end method

.method public adapterDidLoadAdSuccessAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapter",
            "strategy"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "adapterDidLoadNativeAdSuccessAd() called with: strategy = ["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "] "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/windmill/sdk/common/l;->f:Z

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/windmill/sdk/common/l;->f:Z

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->F:Lcom/windmill/sdk/strategy/l$a;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-interface {v0, p2, p1}, Lcom/windmill/sdk/strategy/l$a;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    const-string p2, "adapterDidLoadAdSuccessAd but is not current stage"

    .line 60
    .line 61
    invoke-static {p1, p2}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    instance-of v0, p1, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    move-object v0, p1

    .line 70
    check-cast v0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getNativeAdDataList()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const/4 v0, 0x0

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/windmill/sdk/common/p;->w:Landroid/os/Handler;

    .line 79
    .line 80
    const/16 v2, 0x7d0

    .line 81
    .line 82
    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    const/4 v1, 0x1

    .line 86
    invoke-virtual {p2, v1}, Lcom/windmill/sdk/strategy/a;->g(Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->D()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    const/4 v2, 0x0

    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->A()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_6

    .line 101
    .line 102
    invoke-virtual {p2, v2}, Lcom/windmill/sdk/strategy/a;->h(Z)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_4
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->C()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_6

    .line 111
    .line 112
    iget-object v1, p0, Lcom/windmill/sdk/common/p;->F:Lcom/windmill/sdk/strategy/l$a;

    .line 113
    .line 114
    if-eqz v1, :cond_5

    .line 115
    .line 116
    invoke-interface {v1, p2}, Lcom/windmill/sdk/strategy/l$a;->a(Lcom/windmill/sdk/strategy/a;)V

    .line 117
    .line 118
    .line 119
    :cond_5
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->B()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    invoke-virtual {p2, v2}, Lcom/windmill/sdk/strategy/a;->i(Z)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_6
    if-eqz p1, :cond_7

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getAdapterReadyTime()J

    .line 132
    .line 133
    .line 134
    move-result-wide v1

    .line 135
    invoke-virtual {p2, v1, v2}, Lcom/windmill/sdk/strategy/a;->a(J)V

    .line 136
    .line 137
    .line 138
    :cond_7
    iget-object v1, p0, Lcom/windmill/sdk/common/p;->z:Ljava/util/Map;

    .line 139
    .line 140
    if-eqz v1, :cond_8

    .line 141
    .line 142
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    :cond_8
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 150
    .line 151
    invoke-virtual {p0, v1, p2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/strategy/a;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-nez v1, :cond_9

    .line 156
    .line 157
    return-void

    .line 158
    :cond_9
    invoke-virtual {p0, p1, p2, v0}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/List;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public adapterDidLoadBiddingPriceSuccess(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "adStrategy",
            "price"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v0, "adapterDidLoadBiddingPriceSuccess() called with: strategy = ["

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "], price = ["

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, "]"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p3}, Lcom/windmill/sdk/strategy/a;->f(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p3}, Lcom/windmill/sdk/strategy/a;->h(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/windmill/sdk/common/p;->E:Lcom/windmill/sdk/strategy/s$b;

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    invoke-interface {p1, p2, p3}, Lcom/windmill/sdk/strategy/s$b;->a(Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public adapterDidPlayEndAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapter",
            "adStrategy"
        }
    .end annotation

    return-void
.end method

.method public adapterDidRewardAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "adStrategy",
            "isReward"
        }
    .end annotation

    return-void
.end method

.method public adapterDidShowLangPageAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "adStrategy",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/custom/WMAdBaseAdapter;",
            "Lcom/windmill/sdk/strategy/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "adapterDidShowLangPageAd() called with: strategy = ["

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "]"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p1, v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    if-eqz p3, :cond_0

    .line 33
    .line 34
    const-string p1, "offer_id"

    .line 35
    .line 36
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ljava/lang/String;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    :goto_0
    iget-object p3, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 47
    .line 48
    new-instance v1, Lcom/windmill/sdk/common/p$3;

    .line 49
    .line 50
    invoke-direct {v1, p0, p2, p1}, Lcom/windmill/sdk/common/p$3;-><init>(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p1, "landing_page_show"

    .line 54
    .line 55
    invoke-static {p1, p3, p2, v0, v1}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public adapterDidSkipAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapter",
            "adStrategy"
        }
    .end annotation

    return-void
.end method

.method public adapterDidStartPlayingAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "strategy",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/custom/WMAdBaseAdapter;",
            "Lcom/windmill/sdk/strategy/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/windmill/sdk/common/p;->B:I

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "----adapterDidStartPlayingAd() called with: strategy = ["

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, "]"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    if-eqz p3, :cond_0

    .line 45
    .line 46
    const-string v0, "offer_id"

    .line 47
    .line 48
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    check-cast p3, Ljava/lang/String;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p3, 0x0

    .line 56
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->H:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->H:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/windmill/sdk/strategy/i;->a()Lcom/windmill/sdk/strategy/i;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v1, Lcom/windmill/sdk/models/FreEntity;

    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    iget-object v3, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-direct {v1, v2, v3, v4}, Lcom/windmill/sdk/models/FreEntity;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/strategy/i;->a(Lcom/windmill/sdk/models/FreEntity;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/windmill/sdk/common/p;->d()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const/4 v1, 0x1

    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-lez v2, :cond_2

    .line 113
    .line 114
    const/4 v2, 0x0

    .line 115
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 120
    .line 121
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_2

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_2

    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->u()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_2

    .line 146
    .line 147
    invoke-virtual {p2, v1}, Lcom/windmill/sdk/strategy/a;->f(Z)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->v:Lcom/windmill/sdk/common/p$a;

    .line 151
    .line 152
    if-eqz v0, :cond_2

    .line 153
    .line 154
    invoke-interface {v0}, Lcom/windmill/sdk/common/p$a;->onNativeAdFirstPlay()V

    .line 155
    .line 156
    .line 157
    :cond_2
    if-eqz p1, :cond_3

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getGroEcpm()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p2, v0}, Lcom/windmill/sdk/strategy/a;->b(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 167
    .line 168
    const-string v2, "start"

    .line 169
    .line 170
    invoke-virtual {p0, v2, p2, v0}, Lcom/windmill/sdk/common/l;->a(Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 174
    .line 175
    iget-object v3, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 176
    .line 177
    new-instance v4, Lcom/windmill/sdk/common/p$5;

    .line 178
    .line 179
    invoke-direct {v4, p0, p2, p3, p1}, Lcom/windmill/sdk/common/p$5;-><init>(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v2, v0, p2, v3, v4}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    .line 183
    .line 184
    .line 185
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 186
    .line 187
    .line 188
    move-result-object p3

    .line 189
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 190
    .line 191
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->b(Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p3, v1, v0, p2, p1}, Lcom/windmill/sdk/strategy/d;->a(ILjava/lang/String;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method protected b()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/s;->h()V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    const-string v2, "error"

    const-string v3, "load"

    const-string v4, "useLastStrategy and mStrategyManager is null"

    invoke-static {v2, v3, v1, v4}, Lcom/windmill/sdk/point/PointEntityWMError;->WindError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/windmill/sdk/point/PointEntityWMError;

    move-result-object v1

    const/4 v2, 0x5

    .line 5
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    .line 7
    invoke-virtual {v0, v4}, Lcom/windmill/sdk/WindMillError;->setMessage(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, v0}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/WindMillError;)V

    :goto_0
    return-void
.end method

.method protected c()V
    .locals 2

    .line 2
    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/sdk/strategy/a;

    .line 5
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->aF()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            ">;"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->A:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->A:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/natives/WMNativeAdData;

    if-eqz v0, :cond_0

    .line 5
    iget-object v2, p0, Lcom/windmill/sdk/common/p;->C:Lcom/windmill/sdk/strategy/a;

    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/a;->aM()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/windmill/sdk/natives/WMNativeAdData;->setExpired_time(J)V

    .line 6
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getReadTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/windmill/sdk/natives/WMNativeAdData;->setReadyTime(J)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->A:Ljava/util/List;

    return-object v0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/windmill/sdk/common/p;->A:Ljava/util/List;

    const/4 v0, 0x0

    .line 11
    :goto_1
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 12
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/windmill/sdk/strategy/a;

    if-eqz v2, :cond_4

    .line 13
    iget-object v3, p0, Lcom/windmill/sdk/common/p;->z:Ljava/util/Map;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 14
    iget-object v3, p0, Lcom/windmill/sdk/common/p;->z:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_4

    .line 15
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 16
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 17
    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/a;->aM()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/windmill/sdk/natives/WMNativeAdData;->setExpired_time(J)V

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/windmill/sdk/natives/WMNativeAdData;->setReadyTime(J)V

    .line 19
    iget-object v4, p0, Lcom/windmill/sdk/common/p;->A:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->A:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/AdInfo;",
            ">;"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->z:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/windmill/sdk/common/p;->z:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    .line 7
    :goto_0
    iget-object v4, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 8
    iget-object v4, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/windmill/sdk/strategy/a;

    .line 9
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    new-instance v5, Lcom/windmill/sdk/models/AdInfo;

    invoke-direct {v5, v4}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 11
    iget-object v4, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v5, v4}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 12
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Lcom/windmill/sdk/models/AdInfo;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/common/p;->z:Ljava/util/Map;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge v0, v1, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/windmill/sdk/strategy/a;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/windmill/sdk/common/p;->z:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/util/Map$Entry;

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_0

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_0

    .line 73
    .line 74
    new-instance v0, Lcom/windmill/sdk/models/AdInfo;

    .line 75
    .line 76
    invoke-direct {v0, v1}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    :cond_2
    const/4 v0, 0x0

    .line 93
    return-object v0
.end method
