.class public abstract Lcom/windmill/sdk/common/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/common/l$a;,
        Lcom/windmill/sdk/common/l$b;
    }
.end annotation


# static fields
.field private static D:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/windmill/sdk/common/l$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation
.end field

.field private final B:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private C:I

.field private E:Landroid/os/Handler;

.field public a:Lcom/czhj/sdk/common/models/AdStatus;

.field public b:Lcom/windmill/sdk/strategy/q;

.field public c:Z

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field protected g:Lcom/windmill/sdk/strategy/s;

.field protected h:J

.field protected i:Ljava/lang/String;

.field public j:Z

.field public k:Z

.field protected l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/windmill/sdk/base/AutoAdLoadListener;

.field public n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/windmill/sdk/base/WMAdapterError;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Lcom/windmill/sdk/WindMillAdRequest;

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lcom/windmill/sdk/models/AdInfo;

.field public r:Lcom/windmill/sdk/common/l$a;

.field protected s:Z

.field protected t:Lcom/windmill/sdk/strategy/a;

.field private final u:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/windmill/sdk/custom/WMAdBaseAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/windmill/sdk/WMAdSourceStatusListener;

.field private w:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/windmill/sdk/common/m;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/windmill/sdk/common/u;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/windmill/sdk/common/d;",
            ">;"
        }
    .end annotation
.end field


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
    sput-object v0, Lcom/windmill/sdk/common/l;->D:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/windmill/sdk/common/l;->c:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/windmill/sdk/common/l;->f:Z

    .line 12
    .line 13
    const-string v1, "-1"

    .line 14
    .line 15
    iput-object v1, p0, Lcom/windmill/sdk/common/l;->i:Ljava/lang/String;

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/windmill/sdk/common/l;->j:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/windmill/sdk/common/l;->k:Z

    .line 20
    .line 21
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/windmill/sdk/common/l;->u:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    new-instance v1, Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/windmill/sdk/common/l;->l:Ljava/util/HashSet;

    .line 34
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/windmill/sdk/common/l;->p:Ljava/util/List;

    .line 41
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/windmill/sdk/common/l;->A:Ljava/util/List;

    .line 48
    .line 49
    new-instance v1, Ljava/util/HashSet;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/windmill/sdk/common/l;->B:Ljava/util/Set;

    .line 55
    .line 56
    iput v0, p0, Lcom/windmill/sdk/common/l;->C:I

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/windmill/sdk/common/l;->s:Z

    .line 59
    .line 60
    return-void
.end method

.method public static a(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1
    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private a(Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/strategy/a;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/q;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/q;->a()Ljava/util/List;

    move-result-object v0

    .line 392
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 393
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/strategy/a;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 394
    :goto_0
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 396
    iget-object v3, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 397
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/sdk/strategy/a;

    .line 398
    :cond_1
    invoke-static {p1, v0, v1}, Lcom/windmill/sdk/base/WMBidUtil;->getWinOriginalBidInfo(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/sdk/common/l;)Ljava/util/Set;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/windmill/sdk/common/l;->B:Ljava/util/Set;

    return-object p0
.end method

.method public static a(Lcom/czhj/sdk/common/track/AdTracker;ILcom/czhj/volley/NetworkResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adTracker",
            "type",
            "response"
        }
    .end annotation

    const-string v0, ""

    if-eqz p0, :cond_1

    .line 528
    :try_start_0
    invoke-virtual {p0}, Lcom/czhj/sdk/common/track/AdTracker;->getExtInfo()Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 530
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "aggr_appid"

    .line 531
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v3, "aggr_channel_id"

    .line 532
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v4, "aggr_placement_id"

    .line 533
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v5, "ad_type"

    .line 534
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v6, "placement_id"

    .line 535
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v5, v0

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v4, v0

    goto :goto_1

    :catch_3
    move-exception v2

    move-object v3, v0

    goto :goto_0

    :catch_4
    move-exception v2

    move-object v1, v0

    move-object v3, v1

    :goto_0
    move-object v4, v3

    :goto_1
    move-object v5, v4

    .line 536
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 537
    :goto_3
    invoke-virtual {p0}, Lcom/czhj/sdk/common/track/AdTracker;->getEvent()Ljava/lang/String;

    move-result-object v2

    const-string v6, "613"

    invoke-static {v2, v6, v0, v5}, Lcom/windmill/sdk/point/PointEntityWMTrack;->WindTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/windmill/sdk/point/PointEntityWMTrack;

    move-result-object v2

    .line 538
    invoke-virtual {p0}, Lcom/czhj/sdk/common/track/AdTracker;->getRequest_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    .line 539
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/windmill/sdk/point/PointEntityWind;->setIs_success(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v2, v3}, Lcom/windmill/sdk/point/PointEntityWind;->setAggr_channel_id(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v2, v1}, Lcom/windmill/sdk/point/PointEntityWind;->setAggr_appid(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v2, v4}, Lcom/windmill/sdk/point/PointEntityWind;->setAggr_placement_id(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v2, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 544
    iget p1, p2, Lcom/czhj/volley/NetworkResponse;->statusCode:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/windmill/sdk/point/PointEntityWMTrack;->setHttp_code(Ljava/lang/String;)V

    .line 545
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "tracking_url"

    .line 546
    invoke-virtual {p0}, Lcom/czhj/sdk/common/track/AdTracker;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "event"

    .line 547
    invoke-virtual {p0}, Lcom/czhj/sdk/common/track/AdTracker;->getEvent()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    invoke-virtual {v2, p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    .line 549
    invoke-virtual {v2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 550
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_4
    return-void
.end method

.method private a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/WindMillError;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "error"
        }
    .end annotation

    const-string v0, "error"

    const-string v1, "load"

    const/4 v3, 0x0

    .line 154
    iget-object v4, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 155
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v5

    const-string v6, ""

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/windmill/sdk/common/l$12;

    invoke-direct {v8, p0}, Lcom/windmill/sdk/common/l$12;-><init>(Lcom/windmill/sdk/common/l;)V

    move-object v2, p1

    .line 156
    invoke-static/range {v0 .. v8}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;ILjava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/utils/m$a;)V

    return-void
.end method

.method private a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/custom/WMCustomAdapterProxy;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "windAdRequest",
            "strategy",
            "adAdapter",
            "adapterProxy"
        }
    .end annotation

    .line 98
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v0

    .line 99
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aL()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {p4}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->getChannelAppId()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aV()Ljava/lang/String;

    move-result-object p2

    .line 102
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x15

    if-eq v0, v3, :cond_0

    .line 103
    invoke-static {v0}, Lcom/windmill/sdk/utils/l;->d(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    :cond_0
    iget-object v4, p0, Lcom/windmill/sdk/common/l;->B:Ljava/util/Set;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, " "

    if-ne v0, v3, :cond_3

    .line 105
    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isInitializing()Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    .line 106
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "---initializeChannelAdapter--InitStatus1 "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->getInitStatus()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p4}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->reSetInitStatus()V

    goto :goto_0

    .line 108
    :cond_3
    invoke-static {v0}, Lcom/windmill/sdk/utils/l;->d(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 109
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 110
    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isInitializing()Z

    move-result p3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---initializeChannelAdapter--InitStatus2 \u5feb\u624b\u4e24\u6b21appId\u4e0d\u4e00\u81f4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->getInitStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    if-eqz p3, :cond_4

    return-void

    .line 112
    :cond_4
    invoke-virtual {p4}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->reSetInitStatus()V

    goto :goto_0

    :cond_5
    const-string p1, "---initializeChannelAdapter--InitStatus3 \u5feb\u624b\u4e24\u6b21appid\u4e00\u81f4\uff0c\u4e0d\u91cd\u65b0\u521d\u59cb\u5316 "

    .line 113
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strategy",
            "bid_strategy_height"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/s;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/s;->g()Ljava/util/List;

    move-result-object v0

    .line 383
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 384
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 385
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/windmill/sdk/strategy/a;

    .line 386
    iget-boolean v3, v2, Lcom/windmill/sdk/strategy/a;->v:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v3

    invoke-static {v3}, Lcom/windmill/sdk/utils/l;->c(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    invoke-virtual {p0, p1, p2, v2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)V

    .line 388
    invoke-virtual {p0, v2}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 389
    iput-boolean v3, v2, Lcom/windmill/sdk/strategy/a;->v:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/windmill/sdk/strategy/a;Ljava/util/Map;Lcom/windmill/sdk/strategy/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "notifyAStrategy",
            "map",
            "adStrategy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/strategy/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/windmill/sdk/strategy/a;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---NotifyAdapterResult--fillHBAdInfo- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aO()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->E()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aK()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->I()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-static {v2}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 213
    :cond_1
    invoke-static {}, Lcom/windmill/sdk/base/WMBidUtil;->getXBiddingInfo()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_7

    .line 214
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aO()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->E()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 215
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aK()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    .line 216
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->I()I

    move-result p1

    if-ne p1, v1, :cond_7

    if-eqz p3, :cond_7

    .line 217
    invoke-virtual {p0, p3}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object p1

    .line 218
    instance-of p3, p1, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p3, :cond_7

    .line 219
    check-cast p1, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    .line 220
    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getNativeAdDataList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 221
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_7

    .line 222
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 223
    invoke-virtual {p1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAppInfo()Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 224
    invoke-interface {p3}, Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 225
    sget-object v0, Lcom/windmill/sdk/base/WMBidUtil;->AD_USERNAME:Ljava/lang/String;

    invoke-interface {p3}, Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----WMBaseAdController--AdInfo: downloadInfo getAppName "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-interface {p3}, Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;->getAppName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 228
    invoke-static {p3}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 229
    :cond_3
    sget-object p3, Lcom/windmill/sdk/base/WMBidUtil;->AD_USERNAME:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "----WMBaseAdController--AdInfo: getDesc: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " getTitle\uff1a "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {p1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 232
    invoke-static {p3}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 233
    sget-object p3, Lcom/windmill/sdk/base/WMBidUtil;->AD_TITLE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-virtual {p1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAdPatternType()I

    move-result p1

    if-eq p1, v1, :cond_6

    const/4 p3, 0x2

    if-eq p1, p3, :cond_6

    const/4 p3, 0x3

    if-eq p1, p3, :cond_5

    const/4 p3, 0x4

    if-eq p1, p3, :cond_4

    .line 235
    sget-object p1, Lcom/windmill/sdk/base/WMBidUtil;->MATERIAL_TYPE:Ljava/lang/String;

    const-string p3, "7"

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 236
    :cond_4
    sget-object p1, Lcom/windmill/sdk/base/WMBidUtil;->MATERIAL_TYPE:Ljava/lang/String;

    const-string p3, "3"

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 237
    :cond_5
    sget-object p1, Lcom/windmill/sdk/base/WMBidUtil;->MATERIAL_TYPE:Ljava/lang/String;

    const-string p3, "5"

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 238
    :cond_6
    sget-object p1, Lcom/windmill/sdk/base/WMBidUtil;->MATERIAL_TYPE:Ljava/lang/String;

    const-string p3, "1"

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    return-void
.end method

.method static synthetic b(Lcom/windmill/sdk/common/l;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/windmill/sdk/common/l;->C:I

    return p0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/windmill/sdk/common/l;->C:I

    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->l:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 12
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->r:Lcom/windmill/sdk/common/l$a;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/windmill/sdk/common/l$a;->a()V

    :cond_0
    return-void
.end method

.method private b(Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3eb

    .line 169
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x3ec

    .line 170
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x3e8

    .line 171
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x3e9

    .line 172
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private b(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strategy",
            "adapter"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-virtual {p0}, Lcom/windmill/sdk/common/l;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    new-instance v2, Lcom/windmill/sdk/common/l$4;

    invoke-direct {v2, p0}, Lcom/windmill/sdk/common/l$4;-><init>(Lcom/windmill/sdk/common/l;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 114
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    const/4 v2, 0x0

    .line 115
    :goto_0
    iget-object v5, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 116
    iget-object v5, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/windmill/sdk/strategy/a;

    .line 117
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/windmill/sdk/models/AdInfo;

    invoke-virtual {v6}, Lcom/windmill/sdk/models/AdInfo;->getNetworkPlacementId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_2

    .line 118
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/q;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/q;->a()Ljava/util/List;

    move-result-object v1

    .line 120
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 121
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/windmill/sdk/strategy/a;

    .line 122
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----winNotify:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, p1, v0, v5}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/a;Ljava/util/Map;Lcom/windmill/sdk/strategy/a;)V

    .line 124
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v4, p1, v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->notifyAdapterBiddingResult(ZLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private c()V
    .locals 10

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "0"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move-object v4, v3

    const/4 v0, 0x0

    .line 29
    :goto_0
    iget-object v5, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 30
    iget-object v5, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/windmill/sdk/strategy/a;

    .line 31
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--------reportBidResultFail: lossStrategy "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 32
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v5}, Lcom/windmill/sdk/strategy/a;->F()Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v7, "loadId"

    const-string v8, "placementId"

    if-eqz v6, :cond_2

    .line 34
    :try_start_2
    invoke-virtual {p0, v5}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v6, "----------notifyAdapterBiddingResult 4444"

    .line 35
    invoke-static {v6}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v4}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isReady()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 37
    invoke-static {v3, v5, v5}, Lcom/windmill/sdk/base/WMBidUtil;->getLossOriginalBidInfo(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object v6

    .line 38
    invoke-virtual {v4, v2, v1, v6}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->notifyAdapterBiddingResult(ZLjava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 39
    :cond_0
    invoke-static {v3, v5, v5}, Lcom/windmill/sdk/base/WMBidUtil;->getLossOriginalBidInfo(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object v6

    .line 40
    invoke-virtual {v5}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {v5}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 42
    invoke-virtual {v5}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v7, v5, Lcom/windmill/sdk/strategy/a;->q:Ljava/lang/String;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v4, v7, v6}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->gdtNoadNotify(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_1
    :goto_1
    move-object v4, v5

    goto :goto_2

    .line 44
    :cond_2
    invoke-virtual {p0, v5}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v5}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isReady()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 45
    invoke-virtual {p0, v3, v4, v5}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 46
    :cond_3
    :try_start_3
    invoke-static {v3, v4, v5}, Lcom/windmill/sdk/base/WMBidUtil;->getLossOriginalBidInfo(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object v6

    .line 47
    invoke-virtual {v5}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v5}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {v5}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 50
    invoke-virtual {p0, v5}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v7

    iget-object v5, v5, Lcom/windmill/sdk/strategy/a;->q:Ljava/lang/String;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->gdtNoadNotify(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    move-object v4, v3

    .line 51
    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/q;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 52
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/q;->a()Ljava/util/List;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    const/4 v5, 0x0

    .line 54
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 55
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/windmill/sdk/strategy/a;

    .line 56
    invoke-virtual {v6}, Lcom/windmill/sdk/strategy/a;->F()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 57
    invoke-virtual {p0, v6}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 58
    invoke-static {v3, v4, v6}, Lcom/windmill/sdk/base/WMBidUtil;->getLossOriginalBidInfo(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object v6

    const-string v8, "----------notifyAdapterBiddingResult 555"

    .line 59
    invoke-static {v8}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v7, v2, v1, v6}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->notifyAdapterBiddingResult(ZLjava/lang/String;Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------reportBidResultFail: e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    return-void
.end method


# virtual methods
.method protected a(I)Landroid/app/Activity;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel_id"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->z:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/common/d;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1}, Lcom/windmill/sdk/common/d;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/windmill/sdk/common/l;->f()Landroid/app/Activity;

    move-result-object p1

    return-object p1
.end method

.method public a(ZLcom/windmill/sdk/WindMillAdRequest;)Lcom/windmill/sdk/common/l$b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isAutoLoad",
            "request"
        }
    .end annotation

    if-eqz p2, :cond_9

    .line 114
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 115
    :cond_0
    sget-object v0, Lcom/windmill/sdk/common/l;->D:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/common/l$a;

    iput-object v0, p0, Lcom/windmill/sdk/common/l;->r:Lcom/windmill/sdk/common/l$a;

    if-nez v0, :cond_1

    .line 116
    new-instance v0, Lcom/windmill/sdk/common/l$a;

    invoke-direct {v0}, Lcom/windmill/sdk/common/l$a;-><init>()V

    iput-object v0, p0, Lcom/windmill/sdk/common/l;->r:Lcom/windmill/sdk/common/l$a;

    .line 117
    sget-object v0, Lcom/windmill/sdk/common/l;->D:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/windmill/sdk/common/l;->r:Lcom/windmill/sdk/common/l$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_1
    iget v0, p0, Lcom/windmill/sdk/common/l;->C:I

    if-lez v0, :cond_2

    .line 119
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->r:Lcom/windmill/sdk/common/l$a;

    iget v2, v1, Lcom/windmill/sdk/common/l$a;->a:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/windmill/sdk/common/l$a;->a:I

    .line 120
    :cond_2
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->isInit()Z

    move-result v0

    if-nez v0, :cond_4

    .line 121
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->r:Lcom/windmill/sdk/common/l$a;

    iget v0, p1, Lcom/windmill/sdk/common/l$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/windmill/sdk/common/l$a;->d:I

    .line 122
    iget v0, p1, Lcom/windmill/sdk/common/l$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/windmill/sdk/common/l$a;->a:I

    .line 123
    sget-object p1, Lcom/windmill/sdk/WindMillAd;->mAppId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 124
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_NOT_INIT:Lcom/windmill/sdk/WindMillError;

    invoke-direct {p0, p2, p1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/WindMillError;)V

    goto :goto_0

    .line 125
    :cond_3
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_INIT_EXCEPTION:Lcom/windmill/sdk/WindMillError;

    invoke-direct {p0, p2, p1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/WindMillError;)V

    .line 126
    :goto_0
    sget-object p1, Lcom/windmill/sdk/common/l$b;->a:Lcom/windmill/sdk/common/l$b;

    return-object p1

    .line 127
    :cond_4
    invoke-static {}, Lcom/windmill/sdk/common/c;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 128
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->r:Lcom/windmill/sdk/common/l$a;

    iget v0, p1, Lcom/windmill/sdk/common/l$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/windmill/sdk/common/l$a;->b:I

    .line 129
    iget v0, p1, Lcom/windmill/sdk/common/l$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/windmill/sdk/common/l$a;->a:I

    .line 130
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_GDPR_DENIED:Lcom/windmill/sdk/WindMillError;

    invoke-direct {p0, p2, p1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/WindMillError;)V

    .line 131
    sget-object p1, Lcom/windmill/sdk/common/l$b;->d:Lcom/windmill/sdk/common/l$b;

    return-object p1

    :cond_5
    if-nez p1, :cond_6

    .line 132
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getLoadPeriodTime()J

    move-result-wide v0

    .line 133
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->r:Lcom/windmill/sdk/common/l$a;

    iget-wide v2, p1, Lcom/windmill/sdk/common/l$a;->f:J

    add-long/2addr v0, v2

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_6

    .line 135
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->r:Lcom/windmill/sdk/common/l$a;

    iget v0, p1, Lcom/windmill/sdk/common/l$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/windmill/sdk/common/l$a;->a:I

    .line 136
    iget v0, p1, Lcom/windmill/sdk/common/l$a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/windmill/sdk/common/l$a;->e:I

    .line 137
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FAIL_INTERVAL:Lcom/windmill/sdk/WindMillError;

    invoke-direct {p0, p2, p1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/WindMillError;)V

    .line 138
    sget-object p1, Lcom/windmill/sdk/common/l$b;->g:Lcom/windmill/sdk/common/l$b;

    return-object p1

    .line 139
    :cond_6
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne p1, v0, :cond_7

    .line 140
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->r:Lcom/windmill/sdk/common/l$a;

    iget v0, p1, Lcom/windmill/sdk/common/l$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/windmill/sdk/common/l$a;->a:I

    .line 141
    iget v0, p1, Lcom/windmill/sdk/common/l$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/windmill/sdk/common/l$a;->c:I

    .line 142
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FAIL_LOADING:Lcom/windmill/sdk/WindMillError;

    invoke-direct {p0, p2, p1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/WindMillError;)V

    .line 143
    sget-object p1, Lcom/windmill/sdk/common/l$b;->f:Lcom/windmill/sdk/common/l$b;

    return-object p1

    .line 144
    :cond_7
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_8

    .line 145
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillAdRequest;->getAdCount()I

    move-result p1

    if-gtz p1, :cond_8

    .line 146
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_COUNT_IS_EMPTY:Lcom/windmill/sdk/WindMillError;

    invoke-direct {p0, p2, p1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/WindMillError;)V

    .line 147
    sget-object p1, Lcom/windmill/sdk/common/l$b;->c:Lcom/windmill/sdk/common/l$b;

    return-object p1

    .line 148
    :cond_8
    sget-object p1, Lcom/windmill/sdk/common/l$b;->e:Lcom/windmill/sdk/common/l$b;

    return-object p1

    .line 149
    :cond_9
    :goto_1
    iget p1, p0, Lcom/windmill/sdk/common/l;->C:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/windmill/sdk/common/l;->C:I

    .line 150
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_PLACEMENT_ID_IS_EMPTY:Lcom/windmill/sdk/WindMillError;

    invoke-direct {p0, p2, p1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/WindMillError;)V

    .line 151
    sget-object p1, Lcom/windmill/sdk/common/l$b;->b:Lcom/windmill/sdk/common/l$b;

    return-object p1
.end method

.method public a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;Lcom/windmill/sdk/base/WMAdBaseConnector;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "windAdRequest",
            "strategy",
            "adapterClsName",
            "adConnector"
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p2}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/windmill/sdk/common/h;->a()Lcom/windmill/sdk/common/h;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/windmill/sdk/common/h;->a(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 79
    :cond_0
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aV()Ljava/lang/String;

    move-result-object v8

    .line 80
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v3

    const/16 v4, 0x16

    if-eqz v0, :cond_2

    if-ne v3, v4, :cond_1

    .line 81
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getAdapterPluginVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/windmill/sdk/strategy/a;->a(Ljava/lang/String;)V

    .line 82
    :cond_1
    sget-object v5, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---initializeChannelAdapter--find already initialize Adapter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->getInitStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 84
    invoke-static {v5, v6}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isSupportRepeatInit(I)Z

    move-result v5

    if-nez v5, :cond_2

    return-object v0

    .line 86
    :cond_2
    :try_start_0
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 87
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    if-ne v6, v7, :cond_7

    if-nez v0, :cond_3

    .line 88
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 89
    :cond_3
    invoke-virtual {v0, v1, p4}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->initWithAdConnector(Lcom/windmill/sdk/custom/WMCustomAdapterProxy;Lcom/windmill/sdk/base/WMAdBaseConnector;)V

    if-ne v3, v4, :cond_4

    .line 90
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getAdapterPluginVersion()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/windmill/sdk/strategy/a;->a(Ljava/lang/String;)V

    .line 91
    :cond_4
    invoke-virtual {v0, v3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isSupportRepeatInit(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 92
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/custom/WMCustomAdapterProxy;)V

    .line 93
    :cond_5
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object p4

    invoke-virtual {p4}, Lcom/windmill/sdk/WindMillAd;->getContext()Landroid/content/Context;

    move-result-object p4

    new-instance v1, Lcom/windmill/sdk/common/l$10;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/windmill/sdk/common/l$10;-><init>(Lcom/windmill/sdk/common/l;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;ZLjava/lang/String;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    invoke-virtual {v0, p4, p2, v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->initializeSdk(Landroid/content/Context;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMCustomAdapterProxy$a;)V

    .line 94
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->u:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_6

    .line 95
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-object v0

    :catch_0
    move-exception p1

    .line 96
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "---initializeChannelAdapter--Exception "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 97
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "initializeChannelAdapter: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cls: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    return-object v2
.end method

.method public a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 551
    :try_start_0
    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getRewardExtraOption()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "trans_id"

    .line 552
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 553
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 554
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method protected a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threadPoolName"
        }
    .end annotation

    .line 12
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/16 v2, 0x28

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lcom/windmill/sdk/common/l$1;

    invoke-direct {v7, p0, p1}, Lcom/windmill/sdk/common/l$1;-><init>(Lcom/windmill/sdk/common/l;Ljava/lang/String;)V

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v8
.end method

.method protected a(ILcom/windmill/sdk/strategy/a;)V
    .locals 0
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

    .line 2
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/windmill/sdk/common/l;->w:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method protected a(Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    const-string v0, "----loadAd---\u52a8\u6001\u603b\u8d85\u65f6---\u91cd\u7f6e\u8d85\u65f6\u72b6\u6001\uff08\u5e7f\u544a\u52a0\u8f7d\u6d41\u7a0b\u5df2\u5b8c\u6210\uff09"

    .line 597
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    const-string v0, "-1"

    .line 598
    iput-object v0, p0, Lcom/windmill/sdk/common/l;->i:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 599
    iput-wide v0, p0, Lcom/windmill/sdk/common/l;->h:J

    .line 600
    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/l;->b(Landroid/os/Handler;)V

    return-void
.end method

.method protected a(Landroid/os/Handler;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handler",
            "timeout1"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-lez p2, :cond_2

    .line 588
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->i:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    .line 589
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "----loadAd---\u52a8\u6001\u603b\u8d85\u65f6---\u7b2c\u4e00\u9636\u6bb5\u8d85\u65f6\u6d88\u606f\u5df2\u5b58\u5728\uff0c\u8df3\u8fc7\u91cd\u590d\u8bbe\u7f6e"

    .line 590
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    return-void

    .line 591
    :cond_1
    iput-object v1, p0, Lcom/windmill/sdk/common/l;->i:Ljava/lang/String;

    .line 592
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/windmill/sdk/common/l;->h:J

    .line 593
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    int-to-long v1, p2

    .line 594
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 595
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "----loadAd---\u52a8\u6001\u603b\u8d85\u65f6---\u8bbe\u7f6e\u7b2c\u4e00\u9636\u6bb5\u8d85\u65f6---timeout1: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 596
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "----loadAd---\u52a8\u6001\u603b\u8d85\u65f6-\u8bbe\u7f6e\u7b2c\u4e00\u9636\u6bb5\u8d85\u65f6\u5931\u8d25---timeout1: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/windmill/sdk/WMAdSourceStatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adSourceStatusListener"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lcom/windmill/sdk/common/l;->v:Lcom/windmill/sdk/WMAdSourceStatusListener;

    return-void
.end method

.method public a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "windAdRequest",
            "strategy"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->q:Lcom/windmill/sdk/models/AdInfo;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/windmill/sdk/models/AdInfo;

    invoke-direct {v0, p2}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    iput-object v0, p0, Lcom/windmill/sdk/common/l;->q:Lcom/windmill/sdk/models/AdInfo;

    .line 75
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->H()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/models/AdInfo;->fillNetWorkOption(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adRequest",
            "strategy",
            "loadId"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/s;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/s;->g()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 241
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 242
    iget-object v3, p0, Lcom/windmill/sdk/common/l;->A:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 243
    iget-object v3, p0, Lcom/windmill/sdk/common/l;->A:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/windmill/sdk/strategy/a;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_13

    const/4 v0, 0x0

    .line 245
    :goto_1
    iget-object v4, p0, Lcom/windmill/sdk/common/l;->A:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_13

    .line 246
    iget-object v4, p0, Lcom/windmill/sdk/common/l;->A:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/windmill/sdk/strategy/a;

    .line 247
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->Y()I

    move-result v5

    if-ne v5, v3, :cond_12

    iget-boolean v5, v4, Lcom/windmill/sdk/strategy/a;->c:Z

    if-nez v5, :cond_12

    .line 248
    iput-boolean v3, v4, Lcom/windmill/sdk/strategy/a;->c:Z

    .line 249
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 250
    invoke-virtual {v4, p3}, Lcom/windmill/sdk/strategy/a;->n(Ljava/lang/String;)V

    .line 251
    :cond_2
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->D()Z

    move-result v5

    const-string v6, "lose"

    const-string v7, "__AUCTION_PRICE__"

    const-string v8, ""

    if-eqz v5, :cond_7

    if-eqz p2, :cond_7

    .line 252
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 253
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 254
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/windmill/sdk/strategy/a$a;->b()Ljava/lang/String;

    move-result-object v5

    .line 255
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 256
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v9

    invoke-static {v9}, Lcom/windmill/sdk/utils/l;->c(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 257
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/windmill/sdk/utils/EncodeUtil;->getEncodePrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 258
    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 259
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/windmill/sdk/utils/MUtil;->getRandom()I

    move-result v9

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-int v10, v10

    mul-int v9, v9, v10

    div-int/lit8 v9, v9, 0x64

    .line 260
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 261
    invoke-static {v9}, Lcom/windmill/sdk/utils/EncodeUtil;->getEncodePrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 262
    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 263
    :cond_4
    :goto_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 264
    sget-object v9, Lcom/windmill/sdk/base/WMBidUtil;->ECPM:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->D()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "sBidType"

    const-string v10, "1"

    .line 266
    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_5
    sget-object v9, Lcom/windmill/sdk/base/WMBidUtil;->WINNER_CHANNEL:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-virtual {p0, v4}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 269
    invoke-virtual {p0, v4}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v9

    invoke-virtual {v9, v1, v5, v7}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getS2sResultUrl(ZLjava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v5

    .line 270
    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 271
    invoke-static {v5, v6, v4, p1}, Lcom/windmill/sdk/strategy/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 272
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/windmill/sdk/strategy/a$a;->b(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 273
    :cond_7
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 274
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->D()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 275
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/windmill/sdk/strategy/a$a;->b()Ljava/lang/String;

    move-result-object v5

    .line 276
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    if-eqz p2, :cond_8

    .line 277
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v9

    invoke-static {v9}, Lcom/windmill/sdk/utils/l;->c(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 278
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/windmill/sdk/utils/EncodeUtil;->getEncodePrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 279
    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_8
    if-eqz p2, :cond_9

    .line 280
    :try_start_1
    invoke-static {}, Lcom/windmill/sdk/utils/MUtil;->getRandom()I

    move-result v9

    .line 281
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-int v10, v10

    mul-int v9, v9, v10

    div-int/lit8 v9, v9, 0x64

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    .line 282
    :goto_3
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->ah()I

    move-result v10

    if-lez v10, :cond_a

    if-nez p2, :cond_a

    .line 283
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->ah()I

    move-result v9

    .line 284
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 285
    invoke-static {v9}, Lcom/windmill/sdk/utils/EncodeUtil;->getEncodePrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 286
    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    nop

    .line 287
    :cond_b
    :goto_4
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_c

    .line 288
    sget-object v9, Lcom/windmill/sdk/base/WMBidUtil;->WINNER_CHANNEL:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v9, Lcom/windmill/sdk/base/WMBidUtil;->ECPM:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 290
    :cond_c
    sget-object v9, Lcom/windmill/sdk/base/WMBidUtil;->WINNER_CHANNEL:Ljava/lang/String;

    const-string v10, "0"

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v9, Lcom/windmill/sdk/base/WMBidUtil;->ECPM:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->ah()I

    move-result v9

    if-lez v9, :cond_d

    .line 293
    sget-object v9, Lcom/windmill/sdk/base/WMBidUtil;->WINNER_ECPM:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->ah()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_d
    :goto_5
    invoke-virtual {p0, v4}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 295
    invoke-virtual {p0, v4}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v9

    invoke-virtual {v9, v1, v5, v7}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getS2sResultUrl(ZLjava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v5

    .line 296
    :cond_e
    invoke-static {v5, v6, v4, p1}, Lcom/windmill/sdk/strategy/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 297
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/windmill/sdk/strategy/a$a;->b(Ljava/lang/String;)V

    goto :goto_6

    .line 298
    :cond_f
    invoke-static {p2, v2, v4}, Lcom/windmill/sdk/base/WMBidUtil;->getLossOriginalBidInfo(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object v5

    .line 299
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v6

    .line 300
    :try_start_2
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->ah()I

    move-result v7

    if-lez v7, :cond_10

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 301
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->ah()I

    move-result v7

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-int v9, v9

    if-le v7, v9, :cond_10

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->ah()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 303
    :cond_10
    sget-object v7, Lcom/windmill/sdk/base/WMBidUtil;->ECPM:Ljava/lang/String;

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_11

    .line 304
    sget-object v7, Lcom/windmill/sdk/base/WMBidUtil;->WIN_ECPM:Ljava/lang/String;

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_11
    invoke-virtual {p0, v4}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v4

    invoke-virtual {v4, v1, v6, v5}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->notifyAdapterBiddingResult(ZLjava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_12
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 306
    :cond_13
    iget-object p3, p0, Lcom/windmill/sdk/common/l;->p:Ljava/util/List;

    if-eqz p3, :cond_15

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_15

    const/4 p3, 0x0

    .line 307
    :goto_7
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_15

    .line 308
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->p:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/strategy/a;

    .line 309
    iget-boolean v4, v0, Lcom/windmill/sdk/strategy/a;->c:Z

    if-nez v4, :cond_14

    .line 310
    iput-boolean v3, v0, Lcom/windmill/sdk/strategy/a;->c:Z

    .line 311
    invoke-virtual {p0, v0}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 312
    invoke-static {p2, v2, v0}, Lcom/windmill/sdk/base/WMBidUtil;->getLossOriginalBidInfo(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "placementId"

    .line 313
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "loadId"

    .line 314
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v0, v0, Lcom/windmill/sdk/strategy/a;->q:Ljava/lang/String;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v4, v0, v5}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->gdtNoadNotify(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_14
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_15
    const/4 p1, 0x0

    .line 316
    :goto_8
    iget-object p2, p0, Lcom/windmill/sdk/common/l;->A:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_16

    .line 317
    iget-object p2, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    iget-object p3, p0, Lcom/windmill/sdk/common/l;->A:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 318
    :cond_16
    :goto_9
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_17

    .line 319
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    iget-object p2, p0, Lcom/windmill/sdk/common/l;->p:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 320
    :cond_17
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->A:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 321
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a(Lcom/windmill/sdk/WindMillAdRequest;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "strategy_stage"
        }
    .end annotation

    .line 152
    new-instance v0, Lcom/windmill/sdk/common/l$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/windmill/sdk/common/l$11;-><init>(Lcom/windmill/sdk/common/l;Lcom/windmill/sdk/WindMillAdRequest;Ljava/lang/String;)V

    const-string p2, "request_aggre_strategy"

    invoke-static {p2, p1, v0}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/utils/m$a;)V

    .line 153
    invoke-direct {p0}, Lcom/windmill/sdk/common/l;->b()V

    return-void
.end method

.method public a(Lcom/windmill/sdk/WindMillAdRequest;Ljava/util/List;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adRequest",
            "currentStrategies",
            "readyStrategy",
            "loadId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/WindMillAdRequest;",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;",
            "Lcom/windmill/sdk/strategy/a;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------s2sLossTracking "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 187
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 188
    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    add-int/2addr v3, v2

    .line 189
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 190
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/windmill/sdk/strategy/a;

    .line 191
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->X()Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->X()Ljava/lang/String;

    move-result-object v6

    .line 193
    :try_start_0
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpg-double v9, v7, v5

    if-gez v9, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v5

    .line 194
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v5, 0x0

    .line 195
    :goto_1
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->Y()I

    move-result v6

    if-ne v6, v2, :cond_1

    if-eqz v5, :cond_1

    .line 196
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    :cond_2
    iget-object p2, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/q;->a()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 198
    iget-object p2, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/q;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_7

    .line 200
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_7

    .line 201
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/windmill/sdk/strategy/a;

    .line 202
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->Y()I

    move-result v3

    if-ne v3, v2, :cond_6

    iget-boolean v3, p2, Lcom/windmill/sdk/strategy/a;->c:Z

    if-nez v3, :cond_6

    .line 203
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 204
    invoke-virtual {p2, p4}, Lcom/windmill/sdk/strategy/a;->n(Ljava/lang/String;)V

    .line 205
    :cond_4
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->L()I

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->b()Z

    move-result v3

    if-nez v3, :cond_6

    .line 206
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/windmill/sdk/common/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 207
    invoke-virtual {p2, v2}, Lcom/windmill/sdk/strategy/a;->a(Z)V

    .line 208
    :cond_5
    iget-object v3, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    new-instance v4, Lcom/windmill/sdk/common/l$14;

    invoke-direct {v4, p0, p4, p3, p2}, Lcom/windmill/sdk/common/l$14;-><init>(Lcom/windmill/sdk/common/l;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)V

    const-string v5, "hb_lose"

    invoke-static {v5, p1, p2, v3, v4}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public a(Lcom/windmill/sdk/WindMillAdRequest;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adRequest",
            "mStrategies",
            "loadId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/WindMillAdRequest;",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    iget-object p2, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/q;->a()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 166
    iget-object p2, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/q;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_5

    const/4 p2, 0x0

    .line 168
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_5

    .line 169
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/sdk/strategy/a;

    .line 170
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->Y()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-boolean v2, v1, Lcom/windmill/sdk/strategy/a;->c:Z

    if-nez v2, :cond_4

    .line 171
    iput-boolean v3, v1, Lcom/windmill/sdk/strategy/a;->c:Z

    .line 172
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    invoke-virtual {v1, p3}, Lcom/windmill/sdk/strategy/a;->n(Ljava/lang/String;)V

    .line 174
    :cond_1
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->L()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->b()Z

    move-result v2

    if-nez v2, :cond_3

    .line 175
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/windmill/sdk/common/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    invoke-virtual {v1, v3}, Lcom/windmill/sdk/strategy/a;->a(Z)V

    .line 177
    :cond_2
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    new-instance v3, Lcom/windmill/sdk/common/l$13;

    invoke-direct {v3, p0, p3, v1}, Lcom/windmill/sdk/common/l$13;-><init>(Lcom/windmill/sdk/common/l;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;)V

    const-string v4, "hb_lose"

    invoke-static {v4, p1, v1, v2, v3}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    .line 178
    :cond_3
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->D()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 179
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 180
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/a$a;->b()Ljava/lang/String;

    move-result-object v2

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----------getHbResponse loseUrl "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v3

    invoke-static {v3}, Lcom/windmill/sdk/utils/l;->c(I)Z

    const-string v3, "lose"

    .line 183
    invoke-static {v2, v3, v1, p1}, Lcom/windmill/sdk/strategy/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 184
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/strategy/a$a;->b(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public a(Lcom/windmill/sdk/base/AutoAdLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadListener"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/windmill/sdk/common/l;->m:Lcom/windmill/sdk/base/AutoAdLoadListener;

    return-void
.end method

.method public a(Lcom/windmill/sdk/common/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelFilterListener"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/windmill/sdk/common/l;->z:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Lcom/windmill/sdk/common/l;->z:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method

.method public a(Lcom/windmill/sdk/common/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/windmill/sdk/common/l;->x:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 160
    iput-object p1, p0, Lcom/windmill/sdk/common/l;->x:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method

.method public a(Lcom/windmill/sdk/common/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "waterfallFilterListener"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/windmill/sdk/common/l;->y:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 162
    iput-object p1, p0, Lcom/windmill/sdk/common/l;->y:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method

.method public a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/point/PointEntityWind;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adapter",
            "entityWind"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 555
    :try_start_0
    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getExtraOption()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "request_id"

    .line 556
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 557
    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "platform_request_id"

    if-eqz v0, :cond_0

    .line 558
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 559
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 560
    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    invoke-virtual {p2, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 562
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "strategy",
            "loadId",
            "adRequest"
        }
    .end annotation

    const/4 v0, 0x1

    .line 322
    :try_start_0
    iput-boolean v0, p0, Lcom/windmill/sdk/common/l;->j:Z

    const-string v1, "callback_ready"

    .line 323
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    new-instance v3, Lcom/windmill/sdk/common/l$3;

    invoke-direct {v3, p0, p3, p2}, Lcom/windmill/sdk/common/l$3;-><init>(Lcom/windmill/sdk/common/l;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;)V

    invoke-static {v1, p4, p2, v2, v3}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    .line 324
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/windmill/sdk/strategy/q;->q:Z

    if-nez v1, :cond_0

    return-void

    .line 325
    :cond_0
    iput-boolean v0, p0, Lcom/windmill/sdk/common/l;->s:Z

    .line 326
    iput-object p2, p0, Lcom/windmill/sdk/common/l;->t:Lcom/windmill/sdk/strategy/a;

    .line 327
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->F()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, " "

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 328
    :try_start_1
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v1

    const/16 v4, 0x10

    if-eq v1, v4, :cond_1

    .line 329
    invoke-direct {p0, p2, p1}, Lcom/windmill/sdk/common/l;->b(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    :cond_1
    const/4 p1, 0x0

    .line 330
    :goto_0
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 331
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/sdk/strategy/a;

    .line 332
    iget-boolean v4, v1, Lcom/windmill/sdk/strategy/a;->v:Z

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v4

    invoke-static {v4}, Lcom/windmill/sdk/utils/l;->c(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 333
    invoke-virtual {p0, p2, p2, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)V

    .line 334
    invoke-virtual {p0, v1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 335
    iput-boolean v0, v1, Lcom/windmill/sdk/strategy/a;->v:Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p2

    goto/16 :goto_5

    .line 336
    :cond_4
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->D()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 337
    invoke-virtual {p0, p4, p2}, Lcom/windmill/sdk/common/l;->c(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;)V

    .line 338
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_9

    const/4 p1, 0x0

    .line 339
    :goto_1
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_9

    .line 340
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/strategy/a;

    .line 341
    invoke-virtual {p0, p2, v1, v0}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 342
    :cond_5
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    const/4 p1, 0x0

    .line 343
    :goto_2
    iget-object v4, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_9

    .line 344
    iget-object v4, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/windmill/sdk/strategy/a;

    .line 345
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->F()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 346
    invoke-virtual {p0, v4}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v5, "0"

    .line 347
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 348
    invoke-static {p2, v4, v4}, Lcom/windmill/sdk/base/WMBidUtil;->getLossOriginalBidInfo(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object v5

    .line 349
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-------NotifyAdapterResult: posId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->F()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 351
    invoke-static {v6}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 352
    invoke-direct {p0, v4, v5, p2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/a;Ljava/util/Map;Lcom/windmill/sdk/strategy/a;)V

    .line 353
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6, v5}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->notifyAdapterBiddingResult(ZLjava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 354
    :cond_6
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v5

    invoke-static {v5}, Lcom/windmill/sdk/utils/l;->c(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 355
    invoke-static {p2, v4, v4}, Lcom/windmill/sdk/base/WMBidUtil;->getLossOriginalBidInfo(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "placementId"

    .line 356
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "winPrice"

    .line 357
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, p3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 360
    iput-boolean v0, v4, Lcom/windmill/sdk/strategy/a;->v:Z

    .line 361
    iget-object v6, v4, Lcom/windmill/sdk/strategy/a;->q:Ljava/lang/String;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v1, v6, v5}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->gdtNoadNotify(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_7
    :goto_3
    move-object v1, v4

    goto :goto_4

    .line 362
    :cond_8
    invoke-virtual {p0, p2, v1, v4}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)V

    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_2

    .line 363
    :cond_9
    :goto_5
    invoke-direct {p0, p2, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)V

    .line 364
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/windmill/sdk/common/l;->b(Lcom/windmill/sdk/WindMillAdRequest;Ljava/util/List;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0, p4, p2, p3}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 366
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/q;->a()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 367
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/q;->a()Ljava/util/List;

    move-result-object p1

    .line 368
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "-------NotifyAdapterResult: size "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 369
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_b

    const/4 p3, 0x0

    .line 370
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_b

    .line 371
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/windmill/sdk/strategy/a;

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------NotifyAdapterResult:  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->F()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->F()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 376
    invoke-virtual {p0, p4}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 377
    invoke-static {p2, v1, p4}, Lcom/windmill/sdk/base/WMBidUtil;->getLossOriginalBidInfo(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object v4

    .line 378
    invoke-direct {p0, p4, v4, p2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/a;Ljava/util/Map;Lcom/windmill/sdk/strategy/a;)V

    .line 379
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, v3, p4, v4}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->notifyAdapterBiddingResult(ZLjava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_a
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 380
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adStrategy",
            "error"
        }
    .end annotation

    .line 3
    return-void
.end method

.method protected a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
    .locals 2
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

    .line 583
    :try_start_0
    iget-boolean v0, p0, Lcom/windmill/sdk/common/l;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v0

    invoke-static {v0}, Lcom/windmill/sdk/utils/l;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/windmill/sdk/strategy/a;->v:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 584
    iput-boolean v0, p1, Lcom/windmill/sdk/strategy/a;->v:Z

    .line 585
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->t:Lcom/windmill/sdk/strategy/a;

    invoke-static {v0, v0, p1}, Lcom/windmill/sdk/base/WMBidUtil;->getLossOriginalBidInfo(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object v0

    .line 586
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 587
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->t:Lcom/windmill/sdk/strategy/a;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p1, v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->notifyAdapterBiddingResult(ZLjava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/Waterfall;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 17
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
            "strategy",
            "waterfall",
            "loadId",
            "adRequest",
            "error",
            "timerStage"
        }
    .end annotation

    move-object/from16 v7, p0

    const-string v8, "callback_error"

    const-string v9, "ready"

    .line 498
    iget-object v12, v7, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 499
    invoke-virtual/range {p5 .. p5}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v13

    const-string v14, ""

    invoke-virtual/range {p5 .. p5}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Lcom/windmill/sdk/common/l$5;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/windmill/sdk/common/l$5;-><init>(Lcom/windmill/sdk/common/l;Ljava/lang/String;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/Waterfall;)V

    move-object/from16 v10, p4

    move-object/from16 v11, p1

    .line 500
    invoke-static/range {v8 .. v16}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;ILjava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/utils/m$a;)V

    .line 501
    iget-object v0, v7, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/windmill/sdk/strategy/q;->q:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "--------logCallBackError:"

    .line 502
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 503
    invoke-virtual {v7, v2, v0, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 504
    invoke-direct/range {p0 .. p0}, Lcom/windmill/sdk/common/l;->c()V

    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "strategy",
            "strategy_height",
            "lossStrategy"
        }
    .end annotation

    const-string v0, " "

    const-string v1, "loadId"

    const-string v2, "placementId"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_13

    if-eqz p3, :cond_13

    .line 399
    :try_start_0
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v0

    const/16 v5, 0x10

    if-eq v0, v5, :cond_0

    return-void

    .line 400
    :cond_0
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    const-string v6, "waterfall_channel"

    const-string v7, "waterfall_ecpm"

    if-eqz v0, :cond_7

    .line 401
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 402
    iget-object p2, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v4, :cond_1

    .line 403
    iget-object p2, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/windmill/sdk/strategy/a;

    .line 404
    :cond_1
    iget-object p2, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/q;->a()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 405
    iget-object p2, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/q;->a()Ljava/util/List;

    move-result-object p2

    .line 406
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 407
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/windmill/sdk/strategy/a;

    goto :goto_0

    :cond_2
    move-object p2, v5

    .line 408
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 409
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v4

    .line 410
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 411
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/windmill/sdk/strategy/a;

    .line 412
    :cond_3
    invoke-static {p1, p2, v5}, Lcom/windmill/sdk/base/WMBidUtil;->getWinOriginalBidInfo(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object p2

    if-eqz p3, :cond_5

    .line 413
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->F()Z

    move-result v0

    if-nez v0, :cond_5

    .line 414
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    .line 415
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v1, v1

    if-ge v0, v1, :cond_4

    .line 416
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 418
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v7, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_5
    :goto_1
    iget-boolean p3, p1, Lcom/windmill/sdk/strategy/a;->v:Z

    if-nez p3, :cond_6

    .line 421
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 422
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object p3

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v4, p1, p2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->notifyAdapterBiddingResult(ZLjava/lang/String;Ljava/util/Map;)V

    :cond_6
    return-void

    .line 423
    :cond_7
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 424
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->D()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "winPrice"

    if-eqz v0, :cond_8

    :try_start_2
    invoke-virtual {p0, p3}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 425
    invoke-virtual {p0, p3}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isReady()Z

    move-result v0

    if-nez v0, :cond_8

    .line 426
    invoke-static {p1, p2, p3}, Lcom/windmill/sdk/base/WMBidUtil;->getLossOriginalBidInfo(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object p2

    .line 427
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 431
    iput-boolean v4, p3, Lcom/windmill/sdk/strategy/a;->v:Z

    .line 432
    invoke-virtual {p0, p3}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object p1

    iget-object p3, p3, Lcom/windmill/sdk/strategy/a;->q:Ljava/lang/String;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p1, p3, p2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->gdtNoadNotify(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_2

    .line 433
    :cond_8
    invoke-static {p1, p2, p3}, Lcom/windmill/sdk/base/WMBidUtil;->getLossOriginalBidInfo(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object p2

    .line 434
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 438
    invoke-virtual {p0, p3}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 439
    invoke-virtual {p0, p3}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object p1

    iget-object v0, p3, Lcom/windmill/sdk/strategy/a;->q:Ljava/lang/String;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p1, v0, p2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->gdtNoadNotify(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string p1, ""

    .line 440
    iput-object p1, p3, Lcom/windmill/sdk/strategy/a;->q:Ljava/lang/String;

    .line 441
    iput-boolean v4, p3, Lcom/windmill/sdk/strategy/a;->v:Z

    :cond_9
    :goto_2
    return-void

    .line 442
    :cond_a
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 443
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_b

    .line 444
    iget-object p3, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/windmill/sdk/strategy/a;

    .line 445
    :cond_b
    invoke-static {p1, p2, p3}, Lcom/windmill/sdk/base/WMBidUtil;->getWinOriginalBidInfo(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object p2

    if-eqz p3, :cond_d

    .line 446
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->F()Z

    move-result v0

    if-nez v0, :cond_d

    .line 447
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    .line 448
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v1, v1

    if-ge v0, v1, :cond_c

    .line 449
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 451
    :cond_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :cond_d
    :goto_3
    invoke-virtual {p0, p3}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 454
    invoke-virtual {p0, p3}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object p3

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v4, p1, p2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->notifyAdapterBiddingResult(ZLjava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_5

    .line 455
    :cond_e
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v0

    invoke-static {v0}, Lcom/windmill/sdk/utils/l;->c(I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p3, Lcom/windmill/sdk/strategy/a;->v:Z

    if-nez v0, :cond_12

    .line 456
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->F()Z

    move-result v0

    if-nez v0, :cond_12

    .line 457
    invoke-static {p1, p2, p3}, Lcom/windmill/sdk/base/WMBidUtil;->getLossOriginalBidInfo(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object v0

    .line 458
    invoke-virtual {p0, p3}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-virtual {p0, p3}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isReady()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 459
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aa()Ljava/util/HashMap;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 460
    invoke-virtual {p0, p3}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object p2

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, p1, v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->notifyAdapterBiddingResult(ZLjava/lang/String;Ljava/util/Map;)V

    goto :goto_5

    .line 461
    :cond_f
    iget-boolean p1, p0, Lcom/windmill/sdk/common/l;->s:Z

    if-eqz p1, :cond_10

    .line 462
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_11

    .line 463
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/windmill/sdk/strategy/a;

    goto :goto_4

    .line 464
    :cond_10
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v4, :cond_11

    .line 465
    iget-object p1, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/windmill/sdk/strategy/a;

    .line 466
    :cond_11
    :goto_4
    invoke-static {v5, p2, p3}, Lcom/windmill/sdk/base/WMBidUtil;->getLossOriginalBidInfo(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object p1

    .line 467
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 469
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-virtual {p0, p3}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object p2

    iget-object p3, p3, Lcom/windmill/sdk/strategy/a;->q:Ljava/lang/String;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p2, p3, p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->gdtNoadNotify(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_12
    :goto_5
    return-void

    :cond_13
    if-eqz p3, :cond_18

    if-eqz p1, :cond_18

    .line 471
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v5

    invoke-static {v5}, Lcom/windmill/sdk/utils/l;->c(I)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 472
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->D()Z

    move-result v5

    if-nez v5, :cond_18

    .line 473
    invoke-virtual {p0, p3}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v5

    .line 474
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-------gdtNotifyAdapterResult 111 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_14

    const/4 v7, 0x1

    goto :goto_6

    :cond_14
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 476
    invoke-static {v6}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    if-eqz v5, :cond_18

    .line 477
    invoke-virtual {v5}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isSucWithoutLoad()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 478
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "-------gdtNotifyAdapterResult Adapter \u590d\u7528\uff0c\u4e0d\u56de\u8c03 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 479
    :cond_15
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 480
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->F()Z

    move-result v6

    if-nez v6, :cond_16

    .line 481
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------gdtNotifyAdapterResult "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->D()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->F()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 483
    invoke-static {p2}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 484
    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object p2

    .line 485
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v4, p1, p2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->notifyAdapterBiddingResult(ZLjava/lang/String;Ljava/util/Map;)V

    goto :goto_7

    .line 486
    :cond_16
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------gdtNotifyAdapterResult ----notifyAdapterBiddingResult 333 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 490
    invoke-static {p1, p2, p3}, Lcom/windmill/sdk/base/WMBidUtil;->getLossOriginalBidInfo(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "0"

    .line 491
    invoke-virtual {v5, v3, p2, p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->notifyAdapterBiddingResult(ZLjava/lang/String;Ljava/util/Map;)V

    goto :goto_7

    .line 492
    :cond_17
    invoke-virtual {p0, p3}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p3}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isReady()Z

    move-result v0

    if-nez v0, :cond_18

    .line 493
    invoke-static {p1, p2, p3}, Lcom/windmill/sdk/base/WMBidUtil;->getLossOriginalBidInfo(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object p1

    .line 494
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 497
    iget-object p2, p3, Lcom/windmill/sdk/strategy/a;->q:Ljava/lang/String;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {v5, p2, p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->gdtNoadNotify(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_18
    :goto_7
    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/s;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategyManager"
        }
    .end annotation

    .line 27
    :try_start_0
    iget-boolean v0, p0, Lcom/windmill/sdk/common/l;->f:Z

    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    .line 28
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->c()Lcom/windmill/sdk/strategy/q;

    move-result-object v0

    iput-object v0, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    iget-boolean v0, v0, Lcom/windmill/sdk/strategy/q;->j:Z

    if-nez v0, :cond_1

    return-void

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_8

    .line 32
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->e()Ljava/util/Map;

    move-result-object v0

    const-string v2, "success"

    .line 33
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const-string v3, "fail"

    .line 34
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v2, :cond_6

    .line 35
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 36
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/windmill/sdk/strategy/a;

    .line 37
    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 38
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 40
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/windmill/sdk/strategy/a;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/windmill/sdk/strategy/a;->i(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 42
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->b()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    invoke-virtual {p1, v3, v2}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/a;Ljava/util/List;)I

    move-result v4

    .line 44
    invoke-interface {v2, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 45
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v3, 0x0

    .line 47
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 48
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/windmill/sdk/strategy/a;

    invoke-virtual {v4, v1}, Lcom/windmill/sdk/strategy/a;->i(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 49
    :cond_4
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->c()Lcom/windmill/sdk/strategy/q;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 50
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->c()Lcom/windmill/sdk/strategy/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/windmill/sdk/strategy/q;->a(Ljava/util/List;)V

    .line 51
    :cond_5
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->d()Lcom/windmill/sdk/strategy/s$d;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 52
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->d()Lcom/windmill/sdk/strategy/s$d;

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->c()Lcom/windmill/sdk/strategy/q;

    move-result-object p1

    .line 54
    invoke-interface {v0, v2, p1}, Lcom/windmill/sdk/strategy/s$d;->a(Ljava/util/List;Lcom/windmill/sdk/strategy/q;)V

    goto/16 :goto_5

    .line 55
    :cond_6
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 57
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    .line 58
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 59
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/windmill/sdk/strategy/a;

    invoke-virtual {v3, v1}, Lcom/windmill/sdk/strategy/a;->i(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 60
    :cond_7
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->d()Lcom/windmill/sdk/strategy/s$d;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 61
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->d()Lcom/windmill/sdk/strategy/s$d;

    move-result-object v1

    .line 62
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->c()Lcom/windmill/sdk/strategy/q;

    move-result-object p1

    .line 63
    invoke-interface {v1, v0, p1}, Lcom/windmill/sdk/strategy/s$d;->a(Ljava/util/List;Lcom/windmill/sdk/strategy/q;)V

    goto :goto_5

    .line 64
    :cond_8
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 65
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    .line 66
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 67
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/windmill/sdk/strategy/a;

    invoke-virtual {v3, v1}, Lcom/windmill/sdk/strategy/a;->i(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 68
    :cond_9
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->d()Lcom/windmill/sdk/strategy/s$d;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 69
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->d()Lcom/windmill/sdk/strategy/s$d;

    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->c()Lcom/windmill/sdk/strategy/q;

    move-result-object p1

    .line 71
    invoke-interface {v1, v0, p1}, Lcom/windmill/sdk/strategy/s$d;->a(Ljava/util/List;Lcom/windmill/sdk/strategy/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_5
    return-void
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 578
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 579
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->E:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 581
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/windmill/sdk/common/l;->E:Landroid/os/Handler;

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->E:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillAdRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "strategy",
            "adRequest"
        }
    .end annotation

    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/windmill/sdk/strategy/q;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 506
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 507
    :goto_0
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    iget-object v1, v1, Lcom/windmill/sdk/strategy/q;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    iget-object v1, v1, Lcom/windmill/sdk/strategy/q;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 509
    new-instance v2, Lcom/czhj/sdk/common/track/AdTracker;

    sget-object v3, Lcom/czhj/sdk/common/track/AdTracker$MessageType;->TOBID_TRACKING_URL:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    .line 510
    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v1, p1, v4}, Lcom/czhj/sdk/common/track/AdTracker;-><init>(Lcom/czhj/sdk/common/track/AdTracker$MessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 511
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/czhj/sdk/common/track/AdTracker;->setRetryNum(Ljava/lang/Integer;)V

    .line 512
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "aggr_appid"

    .line 513
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aV()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "aggr_channel_id"

    .line 514
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "aggr_placement_id"

    .line 515
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "ad_type"

    .line 516
    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "placement_id"

    .line 517
    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/czhj/sdk/common/track/AdTracker;->setExtInfo(Ljava/lang/String;)V

    .line 519
    new-instance v3, Lcom/czhj/sdk/common/track/BaseMacroCommon;

    invoke-direct {v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;-><init>()V

    const-string v4, "_EVENT_"

    .line 520
    invoke-virtual {v3, v4, p1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_THIRDAPPID_"

    .line 521
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aV()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_THIRDCHANNEL_"

    .line 522
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_AGGRPLACEMENTID_"

    .line 523
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_HB_"

    .line 524
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->Y()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_ECPM_"

    .line 525
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    new-instance v4, Lcom/windmill/sdk/common/l$6;

    invoke-direct {v4, p0}, Lcom/windmill/sdk/common/l$6;-><init>(Lcom/windmill/sdk/common/l;)V

    invoke-static {v2, v3, v1, v1, v4}, Lcom/czhj/sdk/common/track/TrackManager;->sendTracking(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/sdk/common/track/BaseMacroCommon;ZZLcom/czhj/sdk/common/track/TrackManager$Listener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 527
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method protected a(Ljava/util/List;Lcom/windmill/sdk/WindMillAdRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "failList",
            "request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;",
            "Lcom/windmill/sdk/WindMillAdRequest;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 13
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 14
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/strategy/a;

    .line 15
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v1, v1

    if-lez v1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->A:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method protected a(Ljava/util/concurrent/ExecutorService;ILcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillAdRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "executorService",
            "type",
            "strategy",
            "adRequest"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 19
    :try_start_0
    new-instance v0, Lcom/windmill/sdk/common/l$7;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/windmill/sdk/common/l$7;-><init>(Lcom/windmill/sdk/common/l;Lcom/windmill/sdk/WindMillAdRequest;ILcom/windmill/sdk/strategy/a;)V

    .line 20
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "------initThreadPoolAndRun e: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(ZLjava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isOut",
            "loadId",
            "request",
            "strategy"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 23
    iget-object p4, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/windmill/sdk/strategy/a;

    :cond_0
    const-string v0, "destroy"

    .line 24
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    new-instance v2, Lcom/windmill/sdk/common/l$8;

    invoke-direct {v2, p0, p2, p1}, Lcom/windmill/sdk/common/l$8;-><init>(Lcom/windmill/sdk/common/l;Ljava/lang/String;Z)V

    invoke-static {v0, p3, p4, v1, v2}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 4
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/strategy/a;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strategyManager",
            "strategy"
        }
    .end annotation

    const/4 v0, 0x1

    .line 563
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 564
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->i()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 565
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 566
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 567
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/windmill/sdk/strategy/a;

    .line 568
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->G()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->X()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 569
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->X()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v9, v5, v7

    if-lez v9, :cond_0

    .line 570
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 571
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    const/4 p1, 0x0

    .line 572
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 573
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/windmill/sdk/strategy/a;

    .line 574
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->w()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 575
    :cond_2
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->v()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 576
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 577
    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "-----isWhenSuccessCanReadyToOut----"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    return v0
.end method

.method public b(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/base/WMAdapterError;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adAdapter",
            "adStrategy"
        }
    .end annotation

    .line 125
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->M()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBaseOnToBidCustomVersion()I

    move-result p1

    .line 127
    invoke-static {}, Lcom/windmill/sdk/utils/l;->b()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "custom adapter version is error!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 129
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_CUSTOM_ADAPTER_VERSION_ERROR:Lcom/windmill/sdk/WindMillError;

    .line 130
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    .line 131
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getAdapterVersion()I

    move-result p1

    .line 133
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v0

    invoke-static {v0}, Lcom/windmill/sdk/utils/l;->b(I)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "adapter version is error!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 135
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_VERSION_ERROR:Lcom/windmill/sdk/WindMillError;

    .line 136
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    .line 137
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/strategy/a;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strategyManager",
            "strategy"
        }
    .end annotation

    const/4 v0, 0x0

    .line 142
    :try_start_0
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->G()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->i()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 145
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 146
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_1

    .line 147
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/windmill/sdk/strategy/a;

    .line 148
    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a;->v()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 150
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 151
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/windmill/sdk/strategy/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 153
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "-----isWhenFailCanReadyToOut---"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 138
    :try_start_0
    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getExtraOption()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "request_id"

    .line 139
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 140
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method protected b(Landroid/os/Handler;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handler",
            "timeout"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-lez p2, :cond_4

    .line 154
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->i:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0x3e8

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "-1"

    .line 156
    iput-object p1, p0, Lcom/windmill/sdk/common/l;->i:Ljava/lang/String;

    const-string p1, "----loadAd---\u52a8\u6001\u603b\u8d85\u65f6---\u7b2c\u4e00\u9636\u6bb5\u8d85\u65f6\u6d88\u606f\u4e0d\u5b58\u5728\uff08\u672a\u8bbe\u7f6e\u7b2c\u4e00\u9636\u6bb5\u8d85\u65f6/\u7b2c\u4e00\u9636\u6bb5\u8d85\u65f6\u5df2\u89e6\u53d1/\u4f7f\u7528\u9884\u7f6e\u5206\u7ec4/\u7f13\u5b58\u8d85\u65f6/\u5e7f\u544a\u5df2\u52a0\u8f7d\u5b8c\u6210\uff09\uff0c\u8df3\u8fc7\u8bbe\u7f6e\u7b2c\u4e8c\u9636\u6bb5\u8d85\u65f6"

    .line 157
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 158
    :cond_1
    iget-wide v2, p0, Lcom/windmill/sdk/common/l;->h:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    .line 159
    iput-object v1, p0, Lcom/windmill/sdk/common/l;->i:Ljava/lang/String;

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/windmill/sdk/common/l;->h:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    sub-int v1, p2, v2

    .line 161
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-string v3, " \u7b2c\u4e8c\u9636\u6bb5\u5b9e\u65f6\u603b\u8d85\u65f6\u65f6\u95f4: "

    const-string v4, " \u7b2c\u4e00\u9636\u6bb5\u6d88\u8d39\u65f6\u95f4: "

    if-lez v1, :cond_2

    const/16 v0, 0x3e9

    int-to-long v5, v1

    .line 162
    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "----loadAd---\u52a8\u6001\u603b\u8d85\u65f6---\u8bbe\u7f6e\u7b2c\u4e8c\u9636\u6bb5\u8d85\u65f6,\u79fb\u9664\u7b2c\u4e00\u9636\u6bb5\u8d85\u65f6---timeout2: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v5, "1"

    .line 164
    iput-object v5, p0, Lcom/windmill/sdk/common/l;->i:Ljava/lang/String;

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "----loadAd---\u52a8\u6001\u603b\u8d85\u65f6---\u4e0d\u8bbe\u7f6e\u7b2c\u4e8c\u9636\u6bb5\u8d85\u65f6,\u79fb\u9664\u7b2c\u4e00\u9636\u6bb5\u5ef6\u8fdf\u8d85\u65f6\u6d88\u606f\uff0c\u624b\u52a8\u53d1\u9001\u7b2c\u4e00\u9636\u6bb5\u5b9e\u65f6\u8d85\u65f6\u6d88\u606f---timeout2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    const-string p1, "----loadAd---\u52a8\u6001\u603b\u8d85\u65f6---\u672a\u8bbe\u7f6e\u7b2c\u4e00\u9636\u6bb5\u8d85\u65f6/\u7b2c\u4e00\u9636\u6bb5\u8d85\u65f6\u5df2\u89e6\u53d1/\u4f7f\u7528\u9884\u7f6e\u5206\u7ec4\u8d85\u65f6/\u7f13\u5b58\u8d85\u65f6/\u5e7f\u544a\u5df2\u52a0\u8f7d\u5b8c\u6210\uff0c\u4e0d\u8bbe\u7f6e\u7b2c\u4e8c\u6b21\u8d85\u65f6"

    .line 167
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 168
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "----loadAd---\u52a8\u6001\u603b\u8d85\u65f6---\u8bbe\u7f6e\u7b2c\u4e8c\u9636\u6bb5\u8d85\u65f6\u5931\u8d25---timeout: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "windAdRequest",
            "strategy"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/windmill/sdk/models/AdInfo;

    invoke-direct {v0, p2}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    iput-object v0, p0, Lcom/windmill/sdk/common/l;->q:Lcom/windmill/sdk/models/AdInfo;

    .line 9
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    return-void
.end method

.method public b(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adRequest",
            "adStrategy",
            "loadId"
        }
    .end annotation

    .line 103
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->Y()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p2, Lcom/windmill/sdk/strategy/a;->b:Z

    if-nez v0, :cond_1

    .line 104
    iput-boolean v1, p2, Lcom/windmill/sdk/strategy/a;->b:Z

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------s2sWinTracking "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/common/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p2, v1}, Lcom/windmill/sdk/strategy/a;->a(Z)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    new-instance v1, Lcom/windmill/sdk/common/l$2;

    invoke-direct {v1, p0, p3, p2}, Lcom/windmill/sdk/common/l$2;-><init>(Lcom/windmill/sdk/common/l;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;)V

    const-string p3, "hb_win"

    invoke-static {p3, p1, p2, v0, v1}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    :cond_1
    return-void
.end method

.method public b(Lcom/windmill/sdk/WindMillAdRequest;Ljava/util/List;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adRequest",
            "currentStrategies",
            "readyStrategy",
            "loadId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/WindMillAdRequest;",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;",
            "Lcom/windmill/sdk/strategy/a;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 14
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x1

    if-eqz v3, :cond_2

    .line 15
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 16
    invoke-interface/range {p2 .. p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v9, -0x1

    if-eq v0, v9, :cond_2

    add-int/2addr v0, v8

    move v9, v0

    .line 17
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 18
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/windmill/sdk/strategy/a;

    .line 19
    invoke-virtual {v10}, Lcom/windmill/sdk/strategy/a;->X()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual/range {p3 .. p3}, Lcom/windmill/sdk/strategy/a;->X()Ljava/lang/String;

    move-result-object v11

    .line 21
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpg-double v0, v12, v14

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_1
    invoke-virtual {v10}, Lcom/windmill/sdk/strategy/a;->Y()I

    move-result v11

    if-ne v11, v8, :cond_1

    if-eqz v0, :cond_1

    .line 24
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 25
    :cond_2
    iget-object v0, v1, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/q;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 26
    iget-object v0, v1, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/q;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    if-nez v4, :cond_4

    .line 27
    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const-string v3, "placementId"

    if-lez v0, :cond_14

    const/4 v0, 0x0

    .line 29
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_14

    .line 30
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/windmill/sdk/strategy/a;

    .line 31
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->Y()I

    move-result v10

    if-ne v10, v8, :cond_13

    iget-boolean v10, v9, Lcom/windmill/sdk/strategy/a;->c:Z

    if-nez v10, :cond_13

    .line 32
    iput-boolean v8, v9, Lcom/windmill/sdk/strategy/a;->c:Z

    .line 33
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 34
    invoke-virtual {v9, v5}, Lcom/windmill/sdk/strategy/a;->n(Ljava/lang/String;)V

    .line 35
    :cond_5
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->D()Z

    move-result v10

    const-string v11, "lose"

    const-string v12, "__AUCTION_PRICE__"

    const-string v13, ""

    if-eqz v10, :cond_c

    if-eqz v4, :cond_c

    .line 36
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 37
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v10

    if-eqz v10, :cond_13

    .line 38
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v10

    invoke-virtual {v10}, Lcom/windmill/sdk/strategy/a$a;->b()Ljava/lang/String;

    move-result-object v10

    .line 39
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 40
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v14

    invoke-static {v14}, Lcom/windmill/sdk/utils/l;->c(I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 41
    invoke-virtual/range {p3 .. p3}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v14

    invoke-static {v14}, Lcom/windmill/sdk/utils/l;->c(I)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 42
    invoke-virtual/range {p3 .. p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/windmill/sdk/utils/EncodeUtil;->getEncodePrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 43
    invoke-virtual {v10, v12, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 44
    :cond_6
    :try_start_1
    invoke-static {}, Lcom/windmill/sdk/utils/MUtil;->getRandom()I

    move-result v14

    .line 45
    invoke-virtual/range {p3 .. p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-int v7, v7

    mul-int v14, v14, v7

    div-int/lit8 v14, v14, 0x64

    .line 46
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 47
    invoke-static {v7}, Lcom/windmill/sdk/utils/EncodeUtil;->getEncodePrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 48
    invoke-virtual {v10, v12, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    nop

    goto :goto_3

    .line 49
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v12, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 50
    :cond_8
    :goto_3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 51
    sget-object v8, Lcom/windmill/sdk/base/WMBidUtil;->ECPM:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v8, Lcom/windmill/sdk/base/WMBidUtil;->WINNER_CHANNEL:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v8

    invoke-static {v8}, Lcom/windmill/sdk/utils/l;->c(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 54
    invoke-virtual {v1, v9}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 55
    invoke-virtual {v1, v9}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v8

    const/4 v12, 0x0

    invoke-virtual {v8, v12, v10, v7}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getS2sResultUrl(ZLjava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v10

    .line 56
    :cond_9
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 57
    invoke-static {v10, v11, v9, v2}, Lcom/windmill/sdk/strategy/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 58
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/windmill/sdk/strategy/a$a;->b(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 59
    :cond_a
    invoke-virtual {v1, v9}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v8

    if-eqz v8, :cond_13

    invoke-virtual {v1, v9}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isReady()Z

    move-result v8

    if-nez v8, :cond_13

    .line 60
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v8

    invoke-static {v8}, Lcom/windmill/sdk/utils/l;->c(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 61
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 62
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 63
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 66
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->D()Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "sBidType"

    const-string v10, "1"

    .line 67
    invoke-virtual {v8, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_b
    invoke-virtual {v1, v9}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v7

    iget-object v9, v9, Lcom/windmill/sdk/strategy/a;->q:Ljava/lang/String;

    invoke-virtual {v7, v9, v8}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->gdtNoadNotify(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_8

    .line 69
    :cond_c
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 70
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/windmill/sdk/strategy/a$a;->b()Ljava/lang/String;

    move-result-object v7

    .line 71
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 72
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v8

    invoke-static {v8}, Lcom/windmill/sdk/utils/l;->c(I)Z

    move-result v8

    if-eqz v8, :cond_f

    if-eqz v4, :cond_d

    .line 73
    invoke-virtual/range {p3 .. p3}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v8

    invoke-static {v8}, Lcom/windmill/sdk/utils/l;->c(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 74
    invoke-virtual/range {p3 .. p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/windmill/sdk/utils/EncodeUtil;->getEncodePrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 75
    invoke-virtual {v7, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_d
    if-eqz v4, :cond_e

    .line 76
    :try_start_2
    invoke-static {}, Lcom/windmill/sdk/utils/MUtil;->getRandom()I

    move-result v8

    .line 77
    invoke-virtual/range {p3 .. p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-int v10, v14

    mul-int v8, v8, v10

    div-int/lit8 v8, v8, 0x64

    goto :goto_4

    :catch_2
    nop

    goto :goto_5

    :cond_e
    const/4 v8, 0x0

    .line 78
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 79
    invoke-static {v8}, Lcom/windmill/sdk/utils/EncodeUtil;->getEncodePrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 80
    invoke-virtual {v7, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 81
    :cond_f
    invoke-virtual/range {p3 .. p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 82
    :cond_10
    :goto_5
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    if-eqz v4, :cond_11

    .line 83
    sget-object v10, Lcom/windmill/sdk/base/WMBidUtil;->WINNER_CHANNEL:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v10, Lcom/windmill/sdk/base/WMBidUtil;->ECPM:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 85
    :cond_11
    sget-object v10, Lcom/windmill/sdk/base/WMBidUtil;->WINNER_CHANNEL:Ljava/lang/String;

    const-string v12, "0"

    invoke-virtual {v8, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v10, Lcom/windmill/sdk/base/WMBidUtil;->ECPM:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :goto_6
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v10

    invoke-static {v10}, Lcom/windmill/sdk/utils/l;->c(I)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 88
    invoke-virtual {v1, v9}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v10

    if-eqz v10, :cond_12

    .line 89
    invoke-virtual {v1, v9}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v7, v8}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getS2sResultUrl(ZLjava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_12
    const/4 v12, 0x0

    .line 90
    :goto_7
    invoke-static {v7, v11, v9, v2}, Lcom/windmill/sdk/strategy/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 91
    invoke-virtual {v9}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/windmill/sdk/strategy/a$a;->b(Ljava/lang/String;)V

    goto :goto_9

    :cond_13
    :goto_8
    const/4 v12, 0x0

    :goto_9
    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_14
    const/4 v12, 0x0

    .line 92
    iget-object v0, v1, Lcom/windmill/sdk/common/l;->p:Ljava/util/List;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v7, 0x0

    .line 93
    :goto_a
    iget-object v0, v1, Lcom/windmill/sdk/common/l;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_16

    .line 94
    iget-object v0, v1, Lcom/windmill/sdk/common/l;->p:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/strategy/a;

    .line 95
    iget-boolean v2, v0, Lcom/windmill/sdk/strategy/a;->c:Z

    if-nez v2, :cond_15

    const/4 v2, 0x1

    .line 96
    iput-boolean v2, v0, Lcom/windmill/sdk/strategy/a;->c:Z

    .line 97
    invoke-virtual {v1, v0}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    move-result-object v6

    const/4 v8, 0x0

    .line 98
    invoke-static {v4, v8, v0}, Lcom/windmill/sdk/base/WMBidUtil;->getLossOriginalBidInfo(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object v8

    .line 99
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 102
    iget-object v0, v0, Lcom/windmill/sdk/strategy/a;->q:Ljava/lang/String;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v6, v0, v8}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->gdtNoadNotify(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_b

    :cond_15
    const/4 v2, 0x1

    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_16
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->u:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearInitFailAdapter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected b(Lcom/windmill/sdk/strategy/a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Y()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/s;->c()Lcom/windmill/sdk/strategy/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 3
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/s;->c()Lcom/windmill/sdk/strategy/q;

    move-result-object v0

    iget-boolean v0, v0, Lcom/windmill/sdk/strategy/q;->j:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->n()Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/windmill/sdk/WindMillAdRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 4
    sget-object v0, Lcom/windmill/sdk/common/l;->D:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/windmill/sdk/common/l$a;

    iput-object p1, p0, Lcom/windmill/sdk/common/l;->r:Lcom/windmill/sdk/common/l$a;

    if-eqz p1, :cond_0

    .line 5
    iget v0, p1, Lcom/windmill/sdk/common/l$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/windmill/sdk/common/l$a;->a:I

    :cond_0
    return-void
.end method

.method public c(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adRequest",
            "adStrategy"
        }
    .end annotation

    const-string v0, "bidding_ecpm"

    const-string v1, "waterfall_channel"

    .line 6
    invoke-direct {p0, p2}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/a;)Ljava/util/Map;

    move-result-object v2

    .line 7
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 8
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a$a;->a()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v4

    invoke-static {v4}, Lcom/windmill/sdk/utils/l;->c(I)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    :try_start_0
    const-string v6, "waterfall_ecpm"

    .line 10
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-int v6, v6

    .line 11
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    double-to-int v7, v7

    if-lez v6, :cond_0

    if-eqz v6, :cond_0

    .line 12
    :try_start_1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-int v7, v7

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 13
    :goto_0
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    double-to-int v0, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v6, v0, :cond_2

    if-eqz v0, :cond_2

    :try_start_2
    const-string v1, "bidding_channel"

    .line 15
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    double-to-int v7, v6

    move v6, v0

    goto :goto_2

    :catch_0
    move v4, v0

    goto :goto_3

    :cond_2
    :goto_2
    if-nez v6, :cond_3

    :try_start_3
    const-string v0, "winner_ecpm"

    .line 16
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v6, v0

    const-string v0, "winner_channel"

    .line 17
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    double-to-int v7, v0

    .line 18
    :catch_1
    :cond_3
    :try_start_4
    sget-object v0, Lcom/windmill/sdk/base/WMBidUtil;->WINNER_BIDFLOOR:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    sget-object v0, Lcom/windmill/sdk/base/WMBidUtil;->WINNER_BIDFLOOR:Ljava/lang/String;

    .line 20
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    double-to-int v4, v0

    :cond_4
    if-le v4, v6, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v6, :cond_6

    const/16 v0, 0x10

    if-eq v7, v0, :cond_6

    .line 21
    :try_start_5
    invoke-static {}, Lcom/windmill/sdk/utils/MUtil;->getRandom95()I

    move-result v0

    mul-int v0, v0, v6

    .line 22
    div-int/lit8 v6, v0, 0x64
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_2
    move v4, v6

    :catch_3
    :goto_3
    move v6, v4

    .line 23
    :catch_4
    :cond_6
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/utils/EncodeUtil;->getEncodePrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__HIGHEST_LOSS_PRICE__"

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_7
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p2, Lcom/windmill/sdk/strategy/a;->v:Z

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------s2sWinSendUrl winUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    const-string v0, "win"

    .line 26
    invoke-static {v3, v0, p2, p1}, Lcom/windmill/sdk/strategy/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 27
    invoke-virtual {p2}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/windmill/sdk/strategy/a$a;->a(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method protected c(Lcom/windmill/sdk/strategy/a;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/WindMillAd;->isNeedInit(Ljava/lang/Integer;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x1b

    .line 2
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v0

    const/16 v2, 0x2c

    if-le v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result p1

    const/16 v0, 0x3e7

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method protected d(Lcom/windmill/sdk/strategy/a;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Lcom/windmill/sdk/utils/l;->d(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    const/16 v1, 0x16

    .line 17
    .line 18
    if-eq p1, v1, :cond_1

    .line 19
    .line 20
    const/16 v1, 0x23

    .line 21
    .line 22
    if-eq p1, v1, :cond_1

    .line 23
    .line 24
    invoke-static {p1}, Lcom/windmill/sdk/utils/l;->c(I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    const/16 v1, 0x15

    .line 31
    .line 32
    if-eq p1, v1, :cond_1

    .line 33
    .line 34
    const/16 v1, 0x1b

    .line 35
    .line 36
    if-eq p1, v1, :cond_1

    .line 37
    .line 38
    if-ne p1, v2, :cond_2

    .line 39
    .line 40
    :cond_1
    const/4 v0, 0x1

    .line 41
    :cond_2
    return v0
.end method

.method public abstract e()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/models/AdInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected e(Lcom/windmill/sdk/strategy/a;)Z
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
    const/4 p1, 0x0

    return p1
.end method

.method public f()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->w:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adStrategy"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->u:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public g()Lcom/windmill/sdk/WMAdSourceStatusListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->v:Lcom/windmill/sdk/WMAdSourceStatusListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->u:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->destroy()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->u:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/windmill/sdk/strategy/q;->i:Z

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public j()Lcom/windmill/sdk/strategy/a;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    iget-boolean v0, v0, Lcom/windmill/sdk/strategy/q;->j:Z

    .line 7
    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 11
    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_6

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    iget-object v4, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-ge v3, v4, :cond_3

    .line 34
    .line 35
    iget-object v4, p0, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lcom/windmill/sdk/strategy/a;

    .line 42
    .line 43
    invoke-virtual {p0, v4}, Lcom/windmill/sdk/common/l;->e(Lcom/windmill/sdk/strategy/a;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_0
    invoke-virtual {p0, v4}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    :try_start_0
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 59
    .line 60
    .line 61
    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    double-to-int v6, v6

    .line 63
    goto :goto_1

    .line 64
    :catch_0
    nop

    .line 65
    const/4 v6, 0x0

    .line 66
    :goto_1
    if-eqz v5, :cond_2

    .line 67
    .line 68
    invoke-virtual {v5}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isLoadSuccess()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_2

    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->ah()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-lt v6, v5, :cond_2

    .line 79
    .line 80
    if-lez v6, :cond_2

    .line 81
    .line 82
    :try_start_1
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->l()Ljava/lang/Float;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->m()D

    .line 87
    .line 88
    .line 89
    move-result-wide v6

    .line 90
    if-eqz v5, :cond_1

    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    const/4 v9, 0x0

    .line 97
    cmpl-float v8, v8, v9

    .line 98
    .line 99
    if-eqz v8, :cond_1

    .line 100
    .line 101
    const-wide/16 v8, 0x0

    .line 102
    .line 103
    cmpl-double v10, v6, v8

    .line 104
    .line 105
    if-eqz v10, :cond_1

    .line 106
    .line 107
    iget-boolean v8, v4, Lcom/windmill/sdk/strategy/a;->w:Z

    .line 108
    .line 109
    if-nez v8, :cond_1

    .line 110
    .line 111
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->X()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 116
    .line 117
    .line 118
    move-result-wide v8

    .line 119
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    float-to-double v10, v5

    .line 124
    mul-double v8, v8, v10

    .line 125
    .line 126
    mul-double v8, v8, v6

    .line 127
    .line 128
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-virtual {v4, v6}, Lcom/windmill/sdk/strategy/a;->h(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v4, v5}, Lcom/windmill/sdk/strategy/a;->f(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    .line 145
    .line 146
    :catch_1
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v4, "\u8d85\u65f6\u590d\u7528\u4fe1\u606f: readyList "

    .line 158
    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-static {v3}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    new-instance v3, Lcom/windmill/sdk/common/l$9;

    .line 177
    .line 178
    invoke-direct {v3, p0}, Lcom/windmill/sdk/common/l$9;-><init>(Lcom/windmill/sdk/common/l;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 182
    .line 183
    .line 184
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    const/4 v4, 0x1

    .line 189
    if-lez v3, :cond_4

    .line 190
    .line 191
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Lcom/windmill/sdk/strategy/a;

    .line 196
    .line 197
    invoke-virtual {v0, v4}, Lcom/windmill/sdk/strategy/a;->h(I)V

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_4
    move-object v0, v1

    .line 202
    :goto_3
    if-eqz v0, :cond_5

    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->Y()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-ne v2, v4, :cond_5

    .line 209
    .line 210
    invoke-virtual {p0, v0}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    if-eqz v2, :cond_6

    .line 215
    .line 216
    invoke-virtual {v2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isLoadSuccess()Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_6

    .line 221
    .line 222
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 223
    .line 224
    invoke-virtual {v1, v4}, Lcom/windmill/sdk/strategy/s;->a(Z)V

    .line 225
    .line 226
    .line 227
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {p0, v1, v0, v2}, Lcom/windmill/sdk/common/l;->b(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    const-string v2, "\u8d85\u65f6\u590d\u7528\u5df2\u7ecfBidding\u6210\u529f\u7684\u7684adapter:"

    .line 242
    .line 243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v2, ":"

    .line 254
    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    return-object v0

    .line 273
    :cond_5
    if-eqz v0, :cond_6

    .line 274
    .line 275
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->v()Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-eqz v2, :cond_6

    .line 280
    .line 281
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 282
    .line 283
    invoke-virtual {v1, v4}, Lcom/windmill/sdk/strategy/s;->a(Z)V

    .line 284
    .line 285
    .line 286
    return-object v0

    .line 287
    :cond_6
    return-object v1
.end method

.method public k()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/windmill/sdk/custom/WMAdBaseAdapter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->u:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Lcom/windmill/sdk/common/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->x:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/windmill/sdk/common/m;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public m()Lcom/windmill/sdk/common/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->y:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/windmill/sdk/common/u;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public n()Lcom/windmill/sdk/strategy/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/windmill/sdk/common/l;->n:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/windmill/sdk/common/l;->n:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/windmill/sdk/base/WMAdapterError;

    .line 40
    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    new-instance v4, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/windmill/sdk/base/WMAdapterError;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/s;->k()Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_3

    .line 74
    .line 75
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-direct {v2, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Ljava/lang/String;

    .line 99
    .line 100
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Lcom/windmill/sdk/base/WMAdapterError;

    .line 105
    .line 106
    if-eqz v4, :cond_2

    .line 107
    .line 108
    new-instance v5, Ljava/util/HashMap;

    .line 109
    .line 110
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Lcom/windmill/sdk/base/WMAdapterError;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    invoke-static {v0}, Lcom/czhj/sdk/common/json/JSONSerializer;->Serialize(Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    const-string v0, ""

    .line 134
    .line 135
    return-object v0
.end method
