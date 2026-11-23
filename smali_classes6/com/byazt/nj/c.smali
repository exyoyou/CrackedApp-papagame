.class public abstract Lcom/byazt/nj/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dh/ve;
.implements Lcom/byazt/dna/qp$c;
.implements Lcom/byazt/ua/c$c;
.implements Lcom/byazt/un/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6ef,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/nj/c$c;
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/ete/ic;

.field public final c:Lcom/byazt/nr/d;

.field public da:Z

.field public volatile gr:Ljava/lang/String;

.field public gt:Z

.field public gu:Lcom/byazt/nj/c$c;

.field public i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public m:J

.field public my:Z

.field public n:Lcom/byazt/un/a;

.field public nu:Z

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public qy:Lcom/byazt/jzl/a;

.field public volatile rh:Z

.field public rl:Lcom/byazt/sw/c;

.field public sl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public sp:J

.field public t:Z

.field public tt:Landroid/view/SurfaceHolder;

.field public u:J

.field public uj:Lcom/byazt/fk/sp;

.field public ve:Landroid/graphics/SurfaceTexture;

.field public x:J

.field public yp:Z

.field public yv:Ljava/lang/Runnable;

.field public z:Z

.field public zm:Lcom/byazt/jzl/tt;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/nr/d;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/byazt/nj/c;->sp:J

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/byazt/nj/c;->x:J

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    iput-boolean v2, p0, Lcom/byazt/nj/c;->da:Z

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    iput-boolean v3, p0, Lcom/byazt/nj/c;->t:Z

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/byazt/nj/c;->u:J

    .line 28
    .line 29
    iput-boolean v2, p0, Lcom/byazt/nj/c;->yp:Z

    .line 30
    .line 31
    iput-boolean v2, p0, Lcom/byazt/nj/c;->z:Z

    .line 32
    .line 33
    iput-boolean v2, p0, Lcom/byazt/nj/c;->nu:Z

    .line 34
    .line 35
    iput-boolean v2, p0, Lcom/byazt/nj/c;->rh:Z

    .line 36
    .line 37
    iput-boolean v2, p0, Lcom/byazt/nj/c;->my:Z

    .line 38
    .line 39
    iput-boolean v2, p0, Lcom/byazt/nj/c;->gt:Z

    .line 40
    .line 41
    new-instance v0, Lcom/byazt/sw/c;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/byazt/sw/c;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    .line 47
    .line 48
    new-instance v0, Lcom/byazt/nj/c$1;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/byazt/nj/c$1;-><init>(Lcom/byazt/nj/c;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/byazt/nj/c;->yv:Ljava/lang/Runnable;

    .line 54
    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/byazt/nj/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/tt;
    .locals 4

    .line 25
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->qy()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    .line 26
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "video_source"

    const-string v2, "assist"

    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    new-instance v1, Lcom/byazt/jzl/n$c;

    invoke-direct {v1}, Lcom/byazt/jzl/n$c;-><init>()V

    const-string v2, "video_life"

    .line 29
    invoke-virtual {v1, v2}, Lcom/byazt/jzl/n$c;->c(Ljava/lang/String;)Lcom/byazt/jzl/n$c;

    move-result-object v1

    .line 30
    invoke-static {p0}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/jzl/n$c;->c(I)Lcom/byazt/jzl/n$c;

    move-result-object v1

    const-string v2, ""

    .line 31
    invoke-static {p0, v2}, Lcom/byazt/aas/nb;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/jzl/n$c;->uj(Ljava/lang/String;)Lcom/byazt/jzl/n$c;

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/jzl/n$c;->ve(Ljava/lang/String;)Lcom/byazt/jzl/n$c;

    move-result-object v1

    .line 33
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/jzl/n$c;->tt(Ljava/lang/String;)Lcom/byazt/jzl/n$c;

    move-result-object v1

    .line 34
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->xx()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/jzl/n$c;->tt(I)Lcom/byazt/jzl/n$c;

    move-result-object v1

    const/4 v2, -0x1

    .line 35
    invoke-virtual {v1, v2}, Lcom/byazt/jzl/n$c;->ve(I)Lcom/byazt/jzl/n$c;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 36
    invoke-virtual {v1, v2, v3}, Lcom/byazt/jzl/n$c;->c(J)Lcom/byazt/jzl/n$c;

    move-result-object v1

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/byazt/jzl/n$c;->c(D)Lcom/byazt/jzl/n$c;

    move-result-object v1

    .line 38
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->il()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/byazt/jzl/n$c;->uj(I)Lcom/byazt/jzl/n$c;

    move-result-object p0

    .line 39
    invoke-virtual {p0, v0}, Lcom/byazt/jzl/n$c;->c(Lorg/json/JSONObject;)Lcom/byazt/jzl/n$c;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lcom/byazt/jzl/n$c;->c()Lcom/byazt/jzl/n;

    move-result-object p0

    return-object p0
.end method

.method private c(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lcom/byazt/sw/c;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "endcard_skip"

    goto :goto_0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/byazt/sw/c;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "feed_continue"

    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/byazt/sw/c;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "feed_pause"

    goto :goto_0

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/byazt/sw/c;->c(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "feed_play"

    goto :goto_0

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Lcom/byazt/sw/c;->c(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "feed_over"

    goto :goto_0

    .line 73
    :cond_4
    iget-object v1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/byazt/sw/c;->c(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "feed_break"

    goto :goto_0

    :cond_5
    move-object v1, v0

    .line 74
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 75
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "tag"

    .line 76
    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "label"

    .line 77
    invoke-virtual {v2, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "time"

    .line 78
    iget-object v1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    invoke-virtual {v1, p1}, Lcom/byazt/sw/c;->tt(I)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_6
    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/nj/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/nj/c;->gr()V

    return-void
.end method

.method private gr()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/nj/c;->sl:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Runnable;

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->sl:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private gu()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/un/a;->nu()Lcom/byazt/jr/tt;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v2, v0, Lcom/byazt/jr/SSRenderTextureView;

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    instance-of v0, v0, Lcom/byazt/kft/UpieVideoView;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return v1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_2
    return v1
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lcom/byazt/jzl/tt;
    .locals 8

    .line 2
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->qy()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    if-nez v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->xx()I

    move-result v0

    .line 5
    invoke-static {v0}, Lcom/byazt/bzd/sl;->c(I)Lcom/byazt/fk/c;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    invoke-interface {v0, v1}, Lcom/byazt/fk/c;->getCachedSize(Lcom/byazt/fk/u;)J

    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    iget-object v3, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    invoke-static {v2, v3, v0, v1}, Lcom/byazt/sw/uj;->c(Lcom/byazt/ete/ic;Lcom/byazt/jzl/a;J)I

    move-result v2

    .line 8
    iget-object v3, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    invoke-virtual {v3}, Lcom/byazt/jzl/a;->getCurrentVideoInfo()Lcom/byazt/fk/n;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 9
    invoke-interface {v3}, Lcom/byazt/fk/n;->getVideo_duration()D

    move-result-wide v3

    goto :goto_0

    :cond_2
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 10
    :goto_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v6, "video_source"

    .line 11
    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    new-instance p1, Lcom/byazt/jzl/n$c;

    invoke-direct {p1}, Lcom/byazt/jzl/n$c;-><init>()V

    const-string v6, "video_life"

    .line 13
    invoke-virtual {p1, v6}, Lcom/byazt/jzl/n$c;->c(Ljava/lang/String;)Lcom/byazt/jzl/n$c;

    move-result-object p1

    iget-object v6, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 14
    invoke-static {v6}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/byazt/jzl/n$c;->c(I)Lcom/byazt/jzl/n$c;

    move-result-object p1

    iget-object v6, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    const-string v7, ""

    .line 15
    invoke-static {v6, v7}, Lcom/byazt/aas/nb;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/byazt/jzl/n$c;->uj(Ljava/lang/String;)Lcom/byazt/jzl/n$c;

    move-result-object p1

    iget-object v6, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 16
    invoke-virtual {v6}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/byazt/jzl/n$c;->ve(Ljava/lang/String;)Lcom/byazt/jzl/n$c;

    move-result-object p1

    iget-object v6, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 17
    invoke-virtual {v6}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/byazt/jzl/n$c;->tt(Ljava/lang/String;)Lcom/byazt/jzl/n$c;

    move-result-object p1

    iget-object v6, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 18
    invoke-virtual {v6}, Lcom/byazt/ete/ic;->xx()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/byazt/jzl/n$c;->tt(I)Lcom/byazt/jzl/n$c;

    move-result-object p1

    .line 19
    invoke-virtual {p1, v2}, Lcom/byazt/jzl/n$c;->ve(I)Lcom/byazt/jzl/n$c;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/byazt/jzl/n$c;->c(J)Lcom/byazt/jzl/n$c;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v3, v4}, Lcom/byazt/jzl/n$c;->c(D)Lcom/byazt/jzl/n$c;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 22
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->il()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/jzl/n$c;->uj(I)Lcom/byazt/jzl/n$c;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v5}, Lcom/byazt/jzl/n$c;->c(Lorg/json/JSONObject;)Lcom/byazt/jzl/n$c;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/byazt/jzl/n$c;->c()Lcom/byazt/jzl/n;

    move-result-object p1

    return-object p1
.end method

.method public c(IILjava/lang/String;Lorg/json/JSONArray;)V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    new-instance v0, Lcom/byazt/afw/nu$c;

    invoke-direct {v0}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 58
    invoke-virtual {p0}, Lcom/byazt/nj/c;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->tt(J)V

    .line 59
    invoke-virtual {p0}, Lcom/byazt/nj/c;->yp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->ve(J)V

    .line 60
    invoke-virtual {p0}, Lcom/byazt/nj/c;->sl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->c(J)V

    .line 61
    invoke-virtual {v0, p1}, Lcom/byazt/afw/nu$c;->c(I)V

    .line 62
    invoke-virtual {v0, p2}, Lcom/byazt/afw/nu$c;->tt(I)V

    .line 63
    invoke-virtual {v0, p4}, Lcom/byazt/afw/nu$c;->c(Lorg/json/JSONArray;)V

    .line 64
    iget-object p1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 p2, 0x100

    invoke-virtual {p1, p2}, Lcom/byazt/sw/c;->c(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    invoke-virtual {p1, p2}, Lcom/byazt/sw/c;->ve(I)V

    .line 66
    iget-object p1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/byazt/sw/c;->c(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 67
    invoke-virtual {p0}, Lcom/byazt/nj/c;->zb()Lcom/byazt/un/a;

    move-result-object p2

    iget-object p4, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v1, 0x80

    invoke-virtual {p4, v1}, Lcom/byazt/sw/c;->c(I)Z

    move-result p4

    invoke-static {p2, v0, p3, p1, p4}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;Ljava/lang/String;IZ)V

    :cond_1
    return-void
.end method

.method public c(JJ)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/byazt/nj/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->ri()Z

    move-result v0

    if-eqz v0, :cond_1

    long-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double p1, p1, v0

    long-to-double p3, p3

    div-double/2addr p1, p3

    const-wide p3, 0x3fd3333333333333L    # 0.3

    cmpl-double v0, p1, p3

    if-lez v0, :cond_1

    .line 85
    iget-object p1, p0, Lcom/byazt/nj/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 86
    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    move-result-object p1

    const-string p2, "videoPercent30"

    iget-object p3, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-virtual {p1, p2, p3}, Lcom/byazt/qw/ve;->c(Ljava/lang/String;Lcom/byazt/ete/ic;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/dh/tt;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/byazt/nj/c;->da:Z

    .line 47
    iput-object p2, p0, Lcom/byazt/nj/c;->ve:Landroid/graphics/SurfaceTexture;

    .line 48
    iget-object p1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz p1, :cond_0

    .line 49
    invoke-interface {p1, p2}, Lcom/byazt/fk/sp;->setSurface(Landroid/graphics/SurfaceTexture;)V

    .line 50
    iget-object p1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    iget-boolean p2, p0, Lcom/byazt/nj/c;->da:Z

    invoke-interface {p1, p2}, Lcom/byazt/fk/sp;->setSurfaceValid(Z)V

    :cond_0
    const-string p1, "BaseController"

    const-string p2, "surfaceTextureCreated: "

    .line 51
    invoke-static {p1, p2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/byazt/nj/c;->d()V

    return-void
.end method

.method public c(Lcom/byazt/nj/c$c;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/byazt/nj/c;->gu:Lcom/byazt/nj/c$c;

    return-void
.end method

.method public c(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/byazt/sw/c;->ve(I)V

    .line 80
    iget-object p1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/byazt/sw/c;->c(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 81
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-static {v0, p2, p1}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;I)V

    return-void
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_4

    .line 41
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    if-nez v0, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {v0}, Lcom/byazt/un/a;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/byazt/nj/c;->da:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 43
    invoke-static {v0}, Lcom/byazt/ic/c;->tt(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0, p1}, Lcom/byazt/nj/c;->tt(Ljava/lang/Runnable;)V

    return-void

    .line 45
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_4
    :goto_1
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 53
    iput-boolean p1, p0, Lcom/byazt/nj/c;->t:Z

    .line 54
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, p1}, Lcom/byazt/un/a;->uj(Z)V

    :cond_0
    return-void
.end method

.method public cu()V
    .locals 4

    .line 1
    new-instance v0, Lcom/byazt/afw/nu$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/byazt/nj/c;->sl()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->c(J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/byazt/nj/c;->yp()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->ve(J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/byazt/nj/c;->t()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->tt(J)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0}, Lcom/byazt/dh/ve;->u()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/byazt/afw/nu$c;->a(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/byazt/sw/uj;->tt(Lcom/byazt/oce/c;)Lcom/byazt/jzl/a;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    const-string v2, "EXTRA_PLAY_ACTION"

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/byazt/nj/c;->pf()Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v1, v2, v3}, Lcom/byazt/jzl/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 52
    .line 53
    invoke-static {v1, v0}, Lcom/byazt/sw/uj;->uj(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    const-string v0, "execPendingActions: before "

    .line 2
    .line 3
    const-string v1, "BaseController"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/nj/c;->sl:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/nj/c;->rh:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    const-string v0, "execPendingActions:  exec"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/byazt/nj/c$2;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/byazt/nj/c$2;-><init>(Lcom/byazt/nj/c;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method public da(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/afw/nu$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/afw/nu$c;->tt(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/byazt/afw/nu$c;->ve(Z)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/byazt/sw/uj;->tt(Lcom/byazt/oce/c;)Lcom/byazt/jzl/a;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const-string v1, "EXTRA_PLAY_START"

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/byazt/nj/c;->pf()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p1, v1, v2}, Lcom/byazt/jzl/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 31
    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/byazt/nj/c;->ve(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public eo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    .line 2
    .line 3
    new-instance v1, Lcom/byazt/nj/c$3;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/byazt/nj/c$3;-><init>(Lcom/byazt/nj/c;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getHasUseCustomizeVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoModel()Lcom/byazt/ua/c;
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/ua/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/ua/c;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/byazt/nj/c;->sp:J

    .line 7
    .line 8
    iput-wide v1, v0, Lcom/byazt/ua/c;->sp:J

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/byazt/nj/c;->gt()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput-boolean v1, v0, Lcom/byazt/ua/c;->c:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/byazt/nj/c;->my()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput-boolean v1, v0, Lcom/byazt/ua/c;->x:Z

    .line 21
    .line 22
    invoke-interface {p0}, Lcom/byazt/dh/ve;->rl()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput-boolean v1, v0, Lcom/byazt/ua/c;->uj:Z

    .line 27
    .line 28
    return-object v0
.end method

.method public gt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/nj/c;->my:Z

    .line 2
    .line 3
    return v0
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/un/a;->u()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/byazt/nj/c;->da:Z

    .line 11
    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/byazt/ic/c;->tt(Lcom/byazt/ete/ic;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v0, "not exec pending"

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/byazt/nj/c;->tt(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/byazt/nj/c;->x(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/byazt/nj/c;->d()V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    return v0
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/nj/c;->gt:Z

    .line 2
    .line 3
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/nj/c;->z:Z

    .line 2
    .line 3
    return v0
.end method

.method public md()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

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
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public my()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/nj/c;->nu:Z

    .line 2
    .line 3
    return v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nb()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/byazt/sw/uj;->c()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/byazt/nj/c;->gr:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/nj/c;->zm:Lcom/byazt/jzl/tt;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/byazt/nj/c;->gr:Ljava/lang/String;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/byazt/jzl/tt;->tt(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->ve(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    .line 28
    .line 29
    const-string v2, "EXTRA_PLAY_START"

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/byazt/nj/c;->pf()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v0, v2, v3}, Lcom/byazt/jzl/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/byazt/nj/c;->gr:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v0, v2, v3, v1, v4}, Lcom/byazt/sw/uj;->c(Lcom/byazt/ete/ic;Lcom/byazt/oce/c;Lcom/byazt/jzl/a;ZLjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public nu()Lcom/byazt/fk/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    return-object v0
.end method

.method public or()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/nj/c;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public pf()Ljava/util/Map;
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

.method public qp()V
    .locals 4

    .line 1
    new-instance v0, Lcom/byazt/afw/nu$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/byazt/nj/c;->sl()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->c(J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/byazt/nj/c;->yp()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->ve(J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/byazt/nj/c;->t()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->tt(J)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/byazt/sw/uj;->tt(Lcom/byazt/oce/c;)Lcom/byazt/jzl/a;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const-string v2, "EXTRA_PLAY_ACTION"

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/byazt/nj/c;->pf()Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1, v2, v3}, Lcom/byazt/jzl/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/nj/c;->zb()Lcom/byazt/un/a;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p0, v1, v0}, Lcom/byazt/nj/c;->tt(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public synthetic rh()Lcom/byazt/dh/tt;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/nj/c;->zb()Lcom/byazt/un/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public sl()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nj/c;->sp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public t()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/nj/c;->nu()Lcom/byazt/fk/sp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/nj/c;->nu()Lcom/byazt/fk/sp;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Lcom/byazt/fk/sp;->getTotalBufferTime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    return-wide v0
.end method

.method public tt(I)V
    .locals 4

    .line 18
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->uj(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    iget-boolean v0, p0, Lcom/byazt/nj/c;->t:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0xa

    :goto_0
    const-string v0, "only play start"

    const/4 v2, 0x0

    const v3, -0xdbba1

    invoke-virtual {p0, v3, p1, v0, v2}, Lcom/byazt/nj/c;->c(IILjava/lang/String;Lorg/json/JSONArray;)V

    .line 20
    :cond_1
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 21
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->c(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 22
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 23
    invoke-direct {p0, v1, v0}, Lcom/byazt/nj/c;->c(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    const/4 v1, 0x2

    .line 25
    invoke-direct {p0, v1, v0}, Lcom/byazt/nj/c;->c(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 26
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    const/16 v1, 0x8

    .line 27
    invoke-direct {p0, v1, v0}, Lcom/byazt/nj/c;->c(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 28
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    const/16 v1, 0x20

    .line 29
    invoke-direct {p0, v1, v0}, Lcom/byazt/nj/c;->c(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 30
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_5
    const/16 v1, 0x40

    .line 31
    invoke-direct {p0, v1, v0}, Lcom/byazt/nj/c;->c(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 32
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_6
    const/16 v1, 0x80

    .line 33
    invoke-direct {p0, v1, v0}, Lcom/byazt/nj/c;->c(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_7
    const/16 v0, -0x2bd

    const-string v1, "lack play start"

    const v2, -0xdbba2

    .line 35
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/byazt/nj/c;->c(IILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_8
    return-void
.end method

.method public tt(J)V
    .locals 3

    .line 1
    iput-wide p1, p0, Lcom/byazt/nj/c;->sp:J

    .line 2
    iget-wide v0, p0, Lcom/byazt/nj/c;->x:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/byazt/nj/c;->x:J

    return-void
.end method

.method public tt(Lcom/byazt/dh/tt;Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/byazt/nj/c;->da:Z

    const-string p2, "BaseController"

    const-string v0, "surfaceTextureDestroyed: "

    .line 7
    invoke-static {p2, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz p2, :cond_0

    .line 9
    invoke-interface {p2, p1}, Lcom/byazt/fk/sp;->setSurfaceValid(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/byazt/nj/c;->ve:Landroid/graphics/SurfaceTexture;

    .line 11
    invoke-virtual {p0}, Lcom/byazt/nj/c;->d()V

    return-void
.end method

.method public tt(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V
    .locals 1

    .line 36
    iget-object p1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/byazt/sw/c;->ve(I)V

    .line 37
    invoke-virtual {p0}, Lcom/byazt/nj/c;->zb()Lcom/byazt/un/a;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/byazt/sw/uj;->tt(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    return-void
.end method

.method public tt(Ljava/lang/Runnable;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/nj/c;->sl:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/byazt/nj/c;->sl:Ljava/util/List;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->sl:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 3

    .line 15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "error"

    .line 16
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :catch_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    const-string v1, "video"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    return-void
.end method

.method public tt(Z)V
    .locals 1

    .line 12
    iput-boolean p1, p0, Lcom/byazt/nj/c;->nu:Z

    .line 13
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0, p1}, Lcom/byazt/fk/sp;->setQuietPlay(Z)V

    :cond_0
    return-void
.end method

.method public uj(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/nj/c;->m:J

    return-void
.end method

.method public uj()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public ve(I)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0, p1}, Lcom/byazt/fk/sp;->setUpdateProgressInterval(I)V

    :cond_0
    return-void
.end method

.method public ve(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/nj/c;->u:J

    return-void
.end method

.method public ve(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->ve(I)V

    .line 12
    invoke-static {p1, p2}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    return-void
.end method

.method public ve(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/byazt/afw/nu$c;

    invoke-direct {v0}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/byazt/nj/c;->sl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->c(J)V

    .line 5
    invoke-virtual {p0}, Lcom/byazt/nj/c;->yp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->ve(J)V

    .line 6
    invoke-virtual {p0}, Lcom/byazt/nj/c;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->tt(J)V

    .line 7
    iget-object v1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-static {v1}, Lcom/byazt/sw/uj;->tt(Lcom/byazt/oce/c;)Lcom/byazt/jzl/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "EXTRA_PLAY_ACTION"

    .line 8
    invoke-virtual {p0}, Lcom/byazt/nj/c;->pf()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/byazt/jzl/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {v0, p1}, Lcom/byazt/afw/nu$c;->c(Ljava/util/Map;)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p0, p1, v0}, Lcom/byazt/nj/c;->c(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    return-void
.end method

.method public ve(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/nj/c;->my:Z

    return-void
.end method

.method public x(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/nj/c;->rh:Z

    .line 2
    .line 3
    return-void
.end method

.method public yp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/byazt/fk/sp;->getVideoDuration()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public yv()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/byazt/nj/c;->gu()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/nj/c;->ve:Landroid/graphics/SurfaceTexture;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/byazt/fk/sp;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/byazt/nj/c;->ve:Landroid/graphics/SurfaceTexture;

    .line 27
    .line 28
    invoke-interface {v0, v1}, Lcom/byazt/fk/sp;->setSurface(Landroid/graphics/SurfaceTexture;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/byazt/nj/c;->tt:Landroid/view/SurfaceHolder;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    .line 37
    .line 38
    invoke-interface {v1}, Lcom/byazt/fk/sp;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eq v0, v1, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/byazt/nj/c;->tt:Landroid/view/SurfaceHolder;

    .line 47
    .line 48
    invoke-interface {v0, v1}, Lcom/byazt/fk/sp;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public zb()Lcom/byazt/un/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    return-object v0
.end method
