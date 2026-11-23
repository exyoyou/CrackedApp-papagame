.class public abstract Lcom/byazt/cf/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x12,
        0x36
    }
.end annotation


# instance fields
.field public c:Landroid/content/Context;

.field public final tt:Lcom/byazt/iu/uj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    iput-object p1, p0, Lcom/byazt/cf/ve;->c:Landroid/content/Context;

    .line 16
    .line 17
    new-instance p1, Lcom/byazt/iu/uj;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/byazt/cf/ve;->tt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-direct {p1, v0}, Lcom/byazt/iu/uj;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/byazt/cf/ve;->tt:Lcom/byazt/iu/uj;

    .line 27
    .line 28
    return-void
.end method

.method private c(ZJLcom/byazt/dj/tt;Lcom/byazt/cjm/ve;Lcom/byazt/rob/uj;)Lcom/byazt/ete/bm;
    .locals 3

    .line 37
    new-instance v0, Lcom/byazt/ete/bm;

    invoke-direct {v0}, Lcom/byazt/ete/bm;-><init>()V

    .line 38
    iput-wide p2, v0, Lcom/byazt/ete/bm;->i:J

    const/4 p2, 0x2

    if-eqz p1, :cond_0

    .line 39
    iput p2, v0, Lcom/byazt/ete/bm;->c:I

    .line 40
    :cond_0
    iput p2, v0, Lcom/byazt/ete/bm;->sp:I

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p5, :cond_1

    .line 41
    invoke-virtual {p5}, Lcom/byazt/cjm/ve;->ve()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {p5}, Lcom/byazt/cjm/ve;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ete/bm;->ve:Ljava/lang/String;

    .line 43
    invoke-virtual {p5}, Lcom/byazt/cjm/ve;->tt()I

    move-result p5

    iput p5, v0, Lcom/byazt/ete/bm;->uj:I

    .line 44
    iput-boolean p3, v0, Lcom/byazt/ete/bm;->gt:Z

    const/4 p5, 0x1

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    :goto_0
    if-eqz p6, :cond_2

    .line 45
    invoke-virtual {p6}, Lcom/byazt/rob/uj;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    invoke-virtual {p6}, Lcom/byazt/rob/uj;->ve()I

    move-result p2

    iput p2, v0, Lcom/byazt/ete/bm;->nu:I

    .line 47
    invoke-virtual {p6}, Lcom/byazt/rob/uj;->uj()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/byazt/ete/bm;->rh:Ljava/lang/String;

    .line 48
    iput-boolean p3, v0, Lcom/byazt/ete/bm;->gt:Z

    const/4 p2, 0x1

    .line 49
    :cond_2
    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    const-string v1, "is_playAgain"

    .line 50
    invoke-virtual {p6, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p5, "is_second_page_ad"

    .line 51
    invoke-virtual {p6, p5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "is_preload"

    .line 52
    invoke-virtual {p6, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "start_time"

    .line 53
    iget-wide v1, v0, Lcom/byazt/ete/bm;->i:J

    invoke-virtual {p6, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 54
    iput-object p6, v0, Lcom/byazt/ete/bm;->m:Landroid/os/Bundle;

    if-eqz p4, :cond_3

    .line 55
    invoke-virtual {p0}, Lcom/byazt/cf/ve;->tt()I

    move-result p1

    invoke-virtual {p4}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/ete/bm;->c(ILjava/lang/String;ILcom/byazt/dj/tt;)V

    goto :goto_1

    .line 56
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/cf/ve;->tt()I

    move-result p1

    const-string p2, ""

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/ete/bm;->c(ILjava/lang/String;ILcom/byazt/dj/tt;)V

    :goto_1
    return-object v0
.end method

.method private c()Lcom/byazt/lh/tt;
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-static {v0}, Lcom/byazt/ip/n;->c(I)Lcom/byazt/ip/uj;

    move-result-object v0

    check-cast v0, Lcom/byazt/lh/tt;

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/cf/ve;)Lcom/byazt/lh/tt;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/cf/ve;->c()Lcom/byazt/lh/tt;

    move-result-object p0

    return-object p0
.end method

.method public static c(ILcom/byazt/ete/ic;)V
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Lcom/byazt/cf/tt;->c()Lcom/byazt/cf/tt;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/byazt/cf/ve;->c(Lcom/byazt/ete/ic;)V

    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-static {}, Lcom/byazt/cf/sp;->c()Lcom/byazt/cf/sp;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/byazt/cf/ve;->c(Lcom/byazt/ete/ic;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/byazt/dj/tt;I)V
    .locals 2

    const/4 v0, 0x0

    .line 25
    invoke-static {v0}, Lcom/byazt/ip/n;->c(I)Lcom/byazt/ip/uj;

    move-result-object v0

    check-cast v0, Lcom/byazt/lh/tt;

    .line 26
    invoke-virtual {p2}, Lcom/byazt/dj/tt;->or()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/byazt/lh/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v1, Lcom/byazt/ky/ve;

    invoke-direct {v1}, Lcom/byazt/ky/ve;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/a;)V

    .line 28
    invoke-static {}, Lcom/byazt/wi/a;->c()Lcom/byazt/wi/a;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/byazt/wi/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    new-instance v1, Lcom/byazt/wi/ve;

    invoke-direct {v1}, Lcom/byazt/wi/ve;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/a;)V

    .line 30
    :cond_0
    new-instance v1, Lcom/byazt/cf/ve$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/byazt/cf/ve$3;-><init>(Lcom/byazt/cf/ve;Lcom/byazt/dj/tt;I)V

    invoke-virtual {v0, p1, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;I)Lcom/byazt/ete/ic;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/byazt/cf/ve;->tt:Lcom/byazt/iu/uj;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/byazt/iu/tt;->tt()Lcom/byazt/nhd/n;

    move-result-object v0

    int-to-long v1, p2

    invoke-interface {v0, p1, v1, v2}, Lcom/byazt/nhd/n;->c(Ljava/lang/String;J)Lcom/byazt/ete/ic;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 66
    instance-of v0, p1, Lcom/byazt/yi/ve;

    if-eqz v0, :cond_0

    .line 67
    check-cast p1, Lcom/byazt/yi/ve;

    invoke-virtual {p1}, Lcom/byazt/yi/ve;->getLifecycleId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 68
    :cond_0
    instance-of v0, p1, Lcom/byazt/yi/tt;

    if-eqz v0, :cond_1

    .line 69
    check-cast p1, Lcom/byazt/yi/tt;

    invoke-virtual {p1}, Lcom/byazt/yi/tt;->getLifecycleId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lcom/byazt/dj/tt;)V
    .locals 8

    .line 5
    iget-object v0, p0, Lcom/byazt/cf/ve;->tt:Lcom/byazt/iu/uj;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/byazt/cf/ve;->c(ZJLcom/byazt/dj/tt;Lcom/byazt/cjm/ve;Lcom/byazt/rob/uj;)Lcom/byazt/ete/bm;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/cf/ve;->tt:Lcom/byazt/iu/uj;

    invoke-virtual {v1, p1, v0}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/dj/tt;Lcom/byazt/cf/uj;)V
    .locals 11

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 9
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->rl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lcom/byazt/cf/ve;->tt()I

    move-result v2

    invoke-direct {p0, v1, p1, v2}, Lcom/byazt/cf/ve;->c(Ljava/lang/String;Lcom/byazt/dj/tt;I)V

    move-object v8, v1

    goto :goto_0

    :cond_1
    move-object v8, v0

    .line 13
    :goto_0
    invoke-virtual {p0, v8}, Lcom/byazt/cf/ve;->c(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/byazt/ogz/i;->c()Z

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_2

    .line 15
    new-instance p1, Lcom/byazt/lq/ve;

    const/16 v1, 0x3e8

    const-string v2, "\u5e7f\u544a\u8bf7\u6c42\u5f00\u5173\u5df2\u5173\u95ed,\u8bf7\u8054\u7cfb\u7a7f\u5c71\u7532\u7ba1\u7406\u5458"

    invoke-direct {p1, v1, v2}, Lcom/byazt/lq/ve;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v8, v0, v9, p1}, Lcom/byazt/cf/ve;->c(Ljava/lang/String;Ljava/lang/String;ZLcom/byazt/lq/ve;)V

    .line 16
    invoke-virtual {p2, v1, v2}, Lcom/byazt/cf/uj;->c(ILjava/lang/String;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 17
    invoke-static {p1, v1, v7}, Lcom/byazt/iyp/tt;->c(Lcom/byazt/dj/tt;ZLjava/lang/String;)V

    .line 18
    new-instance v10, Lcom/byazt/cf/ve$2;

    const-string v3, "loadRewardVideoAd"

    move-object v1, v10

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/byazt/cf/ve$2;-><init>(Lcom/byazt/cf/ve;Ljava/lang/String;Lcom/byazt/dj/tt;Lcom/byazt/cf/uj;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-boolean v1, Lcom/byazt/omf/rh;->c:Z

    if-nez v1, :cond_3

    const-string p1, "RewardFullLoadManager"

    const-string v1, "please exec TTAdSdk.init and TTAdSdk.start before load ad"

    .line 20
    invoke-static {p1, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance p1, Lcom/byazt/lq/ve;

    const/16 v2, 0x2710

    invoke-direct {p1, v2, v1}, Lcom/byazt/lq/ve;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v8, v0, v9, p1}, Lcom/byazt/cf/ve;->c(Ljava/lang/String;Ljava/lang/String;ZLcom/byazt/lq/ve;)V

    .line 22
    invoke-virtual {p2, v2, v1}, Lcom/byazt/cf/uj;->c(ILjava/lang/String;)V

    return-void

    .line 23
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/cf/ve;->tt()I

    move-result p2

    invoke-static {v10, p2}, Lcom/byazt/omf/h;->execLoadAd(Lcom/byazt/bwm/sp;I)V

    .line 24
    invoke-static {}, Lcom/byazt/ktv/c;->c()Lcom/byazt/ktv/c;

    move-result-object p2

    invoke-virtual {p0}, Lcom/byazt/cf/ve;->tt()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lcom/byazt/ktv/c;->c(ILcom/byazt/dj/tt;)V

    return-void
.end method

.method public c(Lcom/byazt/dj/tt;Lcom/byazt/cf/uj;Lcom/byazt/cjm/ve;Lcom/byazt/rob/uj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    move-object v9, p0

    move-object/from16 v8, p5

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 31
    invoke-virtual {p2}, Lcom/byazt/cf/uj;->c()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    move-object v0, p0

    move-object v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/byazt/cf/ve;->c(ZJLcom/byazt/dj/tt;Lcom/byazt/cjm/ve;Lcom/byazt/rob/uj;)Lcom/byazt/ete/bm;

    move-result-object v10

    move-object/from16 v7, p6

    .line 32
    iput-object v7, v10, Lcom/byazt/ete/bm;->my:Ljava/lang/String;

    .line 33
    iget-object v0, v9, Lcom/byazt/cf/ve;->tt:Lcom/byazt/iu/uj;

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p0, v8}, Lcom/byazt/cf/ve;->tt(Ljava/lang/String;)V

    .line 35
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 36
    iget-object v11, v9, Lcom/byazt/cf/ve;->tt:Lcom/byazt/iu/uj;

    new-instance v12, Lcom/byazt/cf/ve$4;

    move-object v0, v12

    move-object v1, p0

    move-object v3, p1

    move-object v4, v10

    move-object/from16 v5, p4

    move-object v6, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/byazt/cf/ve$4;-><init>(Lcom/byazt/cf/ve;Ljava/util/concurrent/atomic/AtomicReference;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/rob/uj;Lcom/byazt/cf/uj;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    invoke-virtual {v11, p1, v10, v12}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/iu/n;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/dj/tt;Lcom/byazt/rob/uj;Lcom/byazt/cf/uj;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/byazt/cf/ve;->c(Lcom/byazt/dj/tt;Lcom/byazt/cf/uj;Lcom/byazt/cjm/ve;Lcom/byazt/rob/uj;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/byazt/rob/uj;->c()Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-virtual {p2}, Lcom/byazt/rob/uj;->ve()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p1, v0, p2, p3}, Lcom/byazt/rob/ve;->c(Lcom/byazt/ete/ic;ZII)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/byazt/cf/ve;->tt:Lcom/byazt/iu/uj;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/byazt/iu/tt;->tt()Lcom/byazt/nhd/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/nhd/n;->c(Lcom/byazt/ete/ic;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/byazt/cf/ve$1;

    const-string v1, "rewardFull preloadOnDestroy"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/byazt/cf/ve$1;-><init>(Lcom/byazt/cf/ve;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/byazt/cf/ve;->c()Lcom/byazt/lh/tt;

    move-result-object v0

    sget-object v1, Lcom/byazt/hi/tt;->c:Lcom/byazt/hi/tt;

    invoke-virtual {v0, p1, v1}, Lcom/byazt/lh/tt;->c(Ljava/lang/String;Lcom/byazt/hi/tt;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;ZLcom/byazt/lq/ve;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/byazt/cf/ve;->c()Lcom/byazt/lh/tt;

    move-result-object v0

    new-instance v1, Lcom/byazt/cf/ve$6;

    invoke-direct {v1, p0, p3, p4, p2}, Lcom/byazt/cf/ve$6;-><init>(Lcom/byazt/cf/ve;ZLcom/byazt/lq/ve;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 61
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    .line 62
    invoke-static {p3}, Lcom/byazt/ip/n;->c(I)Lcom/byazt/ip/uj;

    move-result-object p3

    check-cast p3, Lcom/byazt/lh/ve;

    .line 63
    new-instance p4, Lcom/byazt/cf/ve$7;

    invoke-direct {p4, p0, p1}, Lcom/byazt/cf/ve$7;-><init>(Lcom/byazt/cf/ve;Ljava/lang/String;)V

    invoke-virtual {p3, p2, p4}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/byazt/cf/ve;->c()Lcom/byazt/lh/tt;

    move-result-object p2

    sget-object p3, Lcom/byazt/hi/tt;->uj:Lcom/byazt/hi/tt;

    invoke-virtual {p2, p1, p3}, Lcom/byazt/lh/tt;->c(Ljava/lang/String;Lcom/byazt/hi/tt;)V

    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/byazt/cf/ve;->c()Lcom/byazt/lh/tt;

    move-result-object v0

    new-instance v1, Lcom/byazt/cf/ve$5;

    invoke-direct {v1, p0, p2}, Lcom/byazt/cf/ve$5;-><init>(Lcom/byazt/cf/ve;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 59
    invoke-direct {p0}, Lcom/byazt/cf/ve;->c()Lcom/byazt/lh/tt;

    move-result-object p2

    sget-object v0, Lcom/byazt/hi/tt;->ve:Lcom/byazt/hi/tt;

    invoke-virtual {p2, p1, v0}, Lcom/byazt/lh/tt;->c(Ljava/lang/String;Lcom/byazt/hi/tt;)V

    return-void
.end method

.method public abstract tt()I
.end method

.method public tt(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/cf/ve;->c()Lcom/byazt/lh/tt;

    move-result-object v0

    sget-object v1, Lcom/byazt/hi/tt;->tt:Lcom/byazt/hi/tt;

    invoke-virtual {v0, p1, v1}, Lcom/byazt/lh/tt;->c(Ljava/lang/String;Lcom/byazt/hi/tt;)V

    return-void
.end method
