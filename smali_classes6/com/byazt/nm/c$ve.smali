.class public Lcom/byazt/nm/c$ve;
.super Lcom/byazt/yl/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x84
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ve"
.end annotation


# instance fields
.field public final da:Ljava/lang/Object;

.field public i:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic sl:Lcom/byazt/nm/c;

.field public t:Z

.field public u:Z

.field public x:Lcom/byazt/nc/yp;

.field public volatile yp:Z

.field public final z:Lcom/byazt/ft/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/c$ve;->sl:Lcom/byazt/nm/c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/yl/ve;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/byazt/nm/c$ve;->da:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/byazt/nm/c$ve;->yp:Z

    .line 15
    .line 16
    new-instance p1, Lcom/byazt/nm/c$ve$4;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, p0, v0}, Lcom/byazt/nm/c$ve$4;-><init>(Lcom/byazt/nm/c$ve;Ljava/util/function/Function;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/byazt/nm/c$ve;->z:Lcom/byazt/ft/tt;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic a(Lcom/byazt/nm/c$ve;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method private c()Lcom/byazt/zq/c;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    check-cast v0, Lcom/byazt/zq/c;

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/nm/c$ve;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/nm/c$ve;->t:Z

    return p0
.end method

.method public static synthetic c(Lcom/byazt/nm/c$ve;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/nm/c$ve;->t:Z

    return p1
.end method

.method public static synthetic n(Lcom/byazt/nm/c$ve;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/nm/c$ve;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/nm/c$ve;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/nm/c$ve;->u:Z

    return p1
.end method

.method public static synthetic uj(Lcom/byazt/nm/c$ve;)Lcom/byazt/ft/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nm/c$ve;->z:Lcom/byazt/ft/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/nm/c$ve;)Lcom/byazt/zq/c;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/nm/c$ve;->c()Lcom/byazt/zq/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public getAdId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/yp;->getMediaExtraInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/byazt/xf/tt;->tt(Ljava/util/Map;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    return-wide v0
.end method

.method public declared-synchronized getAdView()Landroid/view/View;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/nm/c$ve;->i:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/View;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/byazt/nm/c$ve;->da:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    const-wide/16 v4, 0x7d0

    .line 25
    .line 26
    add-long/2addr v4, v2

    .line 27
    :goto_0
    iget-boolean v6, p0, Lcom/byazt/nm/c$ve;->u:Z

    .line 28
    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    cmp-long v6, v2, v4

    .line 32
    .line 33
    if-gez v6, :cond_1

    .line 34
    .line 35
    iget-object v6, p0, Lcom/byazt/nm/c$ve;->da:Ljava/lang/Object;

    .line 36
    .line 37
    sub-long v2, v4, v2

    .line 38
    .line 39
    invoke-virtual {v6, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v2

    .line 48
    :try_start_3
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    monitor-exit p0

    .line 53
    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 56
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 57
    :catchall_1
    move-exception v0

    .line 58
    monitor-exit p0

    .line 59
    throw v0
.end method

.method public getCreativeId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/yp;->getMediaExtraInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/byazt/xf/tt;->c(Ljava/util/Map;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    return-wide v0
.end method

.method public getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "pangle banner : getDislikeDialog = "

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "TTMediationSDK"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/byazt/nc/yp;->getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public getDislikeInfo()Lcom/byazt/nc/uj;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "TTMediationSDK"

    .line 6
    .line 7
    const-string v1, "pangle banner : getDislikeInfo"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/nc/yp;->getDislikeInfo()Lcom/byazt/nc/uj;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 4
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
    iget-object v0, p0, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/yp;->getMediaExtraInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "coupon"

    .line 17
    .line 18
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string v2, "live_room"

    .line 26
    .line 27
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v2, "product"

    .line 35
    .line 36
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lcom/byazt/yl/ve;->setMediaExtraInfo(Ljava/util/Map;)V

    .line 44
    .line 45
    .line 46
    invoke-super {p0}, Lcom/byazt/yl/ve;->getMediaExtraInfo()Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/yp;->getMediaExtraInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/byazt/xf/tt;->ve(Ljava/util/Map;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const-string v0, ""

    .line 15
    .line 16
    return-object v0
.end method

.method public hasDestroyed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/nm/c$ve;->yp:Z

    .line 2
    .line 3
    return v0
.end method

.method public loadAd(Landroid/content/Context;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/c$ve;->sl:Lcom/byazt/nm/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/nm/tt;->getPluginCSJLoader(Landroid/content/Context;)Lcom/byazt/omf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/byazt/nm/c$ve;->sl:Lcom/byazt/nm/c;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/byazt/nm/c;->tt(Lcom/byazt/nm/c;)Lcom/byazt/ll/tt;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v1, p0, Lcom/byazt/nm/c$ve;->sl:Lcom/byazt/nm/c;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/byazt/nm/c;->c(Lcom/byazt/nm/c;)Lcom/byazt/dv/tt;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/byazt/dv/tt;->t()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object v1, p0, Lcom/byazt/nm/c$ve;->sl:Lcom/byazt/nm/c;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/byazt/nm/c;->c(Lcom/byazt/nm/c;)Lcom/byazt/dv/tt;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/byazt/dv/tt;->m()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iget-object v1, p0, Lcom/byazt/nm/c$ve;->sl:Lcom/byazt/nm/c;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/byazt/nm/c;->c(Lcom/byazt/nm/c;)Lcom/byazt/dv/tt;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/byazt/dv/tt;->nu()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    iget-object v1, p0, Lcom/byazt/nm/c$ve;->sl:Lcom/byazt/nm/c;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/byazt/nm/c;->c(Lcom/byazt/nm/c;)Lcom/byazt/dv/tt;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/byazt/dv/tt;->zm()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    const/4 v7, 0x0

    .line 57
    invoke-static/range {v2 .. v7}, Lcom/byazt/xf/tt;->c(Lcom/byazt/ll/tt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/byazt/dj/tt$c;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/byazt/nm/c$ve;->sl:Lcom/byazt/nm/c;

    .line 62
    .line 63
    invoke-static {v2}, Lcom/byazt/nm/c;->tt(Lcom/byazt/nm/c;)Lcom/byazt/ll/tt;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/byazt/ll/tt;->u()F

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iget-object v3, p0, Lcom/byazt/nm/c$ve;->sl:Lcom/byazt/nm/c;

    .line 72
    .line 73
    invoke-static {v3}, Lcom/byazt/nm/c;->tt(Lcom/byazt/nm/c;)Lcom/byazt/ll/tt;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lcom/byazt/ll/tt;->yp()F

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-virtual {v1, v2}, Lcom/byazt/dj/tt$c;->c(F)Lcom/byazt/dj/tt$c;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2, v3}, Lcom/byazt/dj/tt$c;->tt(F)Lcom/byazt/dj/tt$c;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/byazt/dj/tt$c;->c()Lcom/byazt/dj/tt;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    new-instance v2, Lcom/byazt/nm/c$ve$1;

    .line 93
    .line 94
    const/4 v3, 0x0

    .line 95
    invoke-direct {v2, p0, v3, p1}, Lcom/byazt/nm/c$ve$1;-><init>(Lcom/byazt/nm/c$ve;Ljava/util/function/Function;Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/byazt/omf/h;->loadBannerExpressAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/a;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/nm/c$ve;->yp:Z

    .line 3
    .line 4
    new-instance v0, Lcom/byazt/nm/c$ve$2;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/byazt/nm/c$ve$2;-><init>(Lcom/byazt/nm/c$ve;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/eu/n;->ve(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setAdInteractionListener(Lcom/byazt/ocd/tt;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pangle banner : setAdInteractionListener pluginTTAdInteractionListener = "

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "TTMediationSDK"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/byazt/nc/x;->setAdInteractionListener(Lcom/byazt/ocd/tt;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "pangle banner : activity = "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " pluginDislikeInteractionCallback:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "TTMediationSDK"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    .line 33
    .line 34
    new-instance v1, Lcom/byazt/nm/c$ve$3;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-direct {v1, p0, v2, p2}, Lcom/byazt/nm/c$ve$3;-><init>(Lcom/byazt/nm/c$ve;Ljava/util/function/Function;Lcom/byazt/dhf/c;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1, v1}, Lcom/byazt/nc/yp;->setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "pangle banner :  ttDislikeDialogAbstract = "

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "TTMediationSDK"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/byazt/nc/yp;->setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public setSlideIntervalTime(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "pangle banner : setSlideIntervalTime  intervalTime = "

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "TTMediationSDK"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/byazt/nc/yp;->setSlideIntervalTime(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public uploadDislikeEvent(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pangle banner : uploadDislikeEvent event = "

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "TTMediationSDK"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/byazt/nc/yp;->uploadDislikeEvent(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
