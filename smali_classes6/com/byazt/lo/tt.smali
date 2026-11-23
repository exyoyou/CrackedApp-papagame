.class public Lcom/byazt/lo/tt;
.super Lcom/byazt/ux/c;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/qp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x291,
        0xd
    }
.end annotation


# instance fields
.field public final gr:Landroid/os/Handler;

.field public gu:Z

.field public md:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public p:Z

.field public qy:Lcom/byazt/qzm/tt;

.field public yv:J

.field public zm:Lcom/byazt/at/uj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ddx/sp;Lcom/byazt/ete/ic;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/byazt/ux/c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ddx/sp;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/lo/tt;->gu:Z

    .line 6
    .line 7
    new-instance p1, Lcom/byazt/nr/d;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-direct {p1, p2, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/byazt/lo/tt;->gr:Landroid/os/Handler;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/byazt/lo/tt;->p:Z

    .line 20
    .line 21
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/byazt/lo/tt;->md:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide p1

    .line 32
    iput-wide p1, p0, Lcom/byazt/lo/tt;->yv:J

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic a(Lcom/byazt/lo/tt;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/ux/c;->rl:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/lo/tt;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/byazt/ux/c;->rl:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/lo/tt;Ljava/util/List;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/byazt/lo/tt;->tt(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/lo/tt;Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/byazt/ux/c;->c(Lorg/json/JSONObject;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic da(Lcom/byazt/lo/tt;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/ux/c;->rl:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/lo/tt;)Lcom/byazt/qj/c;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/ux/c;->a:Lcom/byazt/qj/c;

    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/lo/tt;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/ux/c;->rl:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic sl(Lcom/byazt/lo/tt;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ux/c;->rl:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/lo/tt;)Lcom/byazt/ddx/sp;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/ux/c;->uj:Lcom/byazt/ddx/sp;

    return-object p0
.end method

.method public static synthetic t(Lcom/byazt/lo/tt;)Lcom/byazt/ddx/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ux/c;->uj:Lcom/byazt/ddx/sp;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/lo/tt;)Lcom/byazt/qj/c;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/ux/c;->a:Lcom/byazt/qj/c;

    return-object p0
.end method

.method private tt(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/byazt/ux/c;->m:I

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/byazt/ux/c;->nu:I

    .line 6
    invoke-virtual {p0}, Lcom/byazt/ux/c;->yp()I

    move-result v0

    iput v0, p0, Lcom/byazt/ux/c;->rh:I

    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ete/ic;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->jm()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ux/c;->yp:Lorg/json/JSONObject;

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/byazt/ux/c;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/ux/c;->i:Ljava/util/List;

    .line 10
    iget-object p1, p0, Lcom/byazt/ux/c;->c:Lcom/byazt/seg/c;

    new-instance v0, Lcom/byazt/lo/tt$2;

    invoke-direct {v0, p0}, Lcom/byazt/lo/tt$2;-><init>(Lcom/byazt/lo/tt;)V

    invoke-static {p1, v0}, Lcom/byazt/ux/n;->c(Lcom/byazt/seg/c;Lcom/byazt/ux/n$c;)V

    return-void
.end method

.method public static synthetic u(Lcom/byazt/lo/tt;)Lcom/byazt/qj/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ux/c;->a:Lcom/byazt/qj/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/lo/tt;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/byazt/ux/c;->rl:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/lo/tt;)Lcom/byazt/qj/c;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/ux/c;->a:Lcom/byazt/qj/c;

    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/lo/tt;)Lcom/byazt/qj/c;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/ux/c;->a:Lcom/byazt/qj/c;

    return-object p0
.end method

.method public static synthetic yp(Lcom/byazt/lo/tt;)Lcom/byazt/qj/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ux/c;->a:Lcom/byazt/qj/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(Lcom/byazt/lo/tt;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ux/c;->i:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(I)V
    .locals 3

    const/16 v0, 0x2761

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/byazt/lo/tt;->md:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/byazt/lo/tt;->gr:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/byazt/lo/tt;->md:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/byazt/ux/c;->my:Lcom/byazt/ux/tt;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Lcom/byazt/ux/tt;->tt()V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/byazt/lo/tt;->md:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/byazt/lo/tt;->gr:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object p1, p0, Lcom/byazt/lo/tt;->gr:Landroid/os/Handler;

    const/16 v0, 0x2762

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    return-void
.end method

.method public a(Lcom/byazt/xj/ve;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->da()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "image_mode"

    .line 12
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "video_"

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object p1

    .line 14
    instance-of v0, p1, Lcom/byazt/qzm/tt;

    if-eqz v0, :cond_2

    .line 15
    check-cast p1, Lcom/byazt/qzm/tt;

    invoke-virtual {p1}, Lcom/byazt/qzm/tt;->tx()V

    :cond_2
    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c(F)V
    .locals 0

    .line 2
    return-void
.end method

.method public c(FFFFI)V
    .locals 0

    .line 3
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/byazt/lo/tt;->qy:Lcom/byazt/qzm/tt;

    if-nez v0, :cond_0

    const-string p1, "BasePageInflater"

    const-string v0, "onChangeVideoState,mVideoComponent is null !!!!!!!!!!!!"

    .line 27
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 28
    invoke-virtual {v0}, Lcom/byazt/qzm/tt;->kk()V

    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 29
    invoke-virtual {v0}, Lcom/byazt/qzm/tt;->q()V

    :cond_2
    return-void
.end method

.method public c(II)V
    .locals 0

    if-lez p2, :cond_0

    .line 10
    iget-object p1, p0, Lcom/byazt/ux/c;->da:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 0

    .line 4
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 5
    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView;I)V
    .locals 0

    .line 11
    iget-object p1, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/xs/da;->tt(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0, p2}, Lcom/byazt/lo/tt;->a(I)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/xj/ve;ILandroid/view/View;Lcom/byazt/pj/ve;)V
    .locals 2

    if-eqz p4, :cond_3

    .line 13
    invoke-virtual {p4}, Lcom/byazt/pj/ve;->c()Lorg/json/JSONObject;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p4}, Lcom/byazt/pj/ve;->c()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p3

    .line 15
    iget-object v0, p0, Lcom/byazt/ux/c;->sl:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/ux/c;->sl:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/ux/c;->sl:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    :cond_1
    invoke-virtual {p4}, Lcom/byazt/pj/ve;->c()Lorg/json/JSONObject;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/byazt/ux/c;->c(Lorg/json/JSONObject;)V

    .line 17
    iget p4, p0, Lcom/byazt/ux/c;->rh:I

    if-ne p2, p4, :cond_2

    .line 18
    invoke-virtual {p0, p1}, Lcom/byazt/ux/c;->c(Lcom/byazt/xj/ve;)V

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/byazt/ux/c;->sl:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/4 p2, 0x1

    :try_start_0
    const-string p3, "timestamp"

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p3, "is_slide"

    .line 22
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 23
    invoke-static {p3}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 24
    :goto_0
    iget-object p3, p0, Lcom/byazt/ux/c;->da:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    if-ne p3, p2, :cond_3

    .line 25
    iget-object p2, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    iget-object p3, p0, Lcom/byazt/ux/c;->t:Ljava/lang/String;

    const-string p4, "ugeno_coin_eCommerce_is_slide"

    invoke-static {p2, p3, p4, p1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 7

    .line 30
    iget-object v0, p0, Lcom/byazt/ux/c;->ve:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    const/4 v3, 0x0

    const/16 v4, 0x31

    const/4 v5, 0x0

    const/16 v6, 0x3c

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/byazt/nr/h;->tt(Landroid/content/Context;Ljava/lang/String;IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 6
    return-void
.end method

.method public da()V
    .locals 0

    .line 1
    return-void
.end method

.method public gt()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/xs/da;->tt(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/lo/tt;->gr:Landroid/os/Handler;

    .line 10
    .line 11
    const/16 v1, 0x2761

    .line 12
    .line 13
    const-wide/16 v2, 0x1388

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x2761

    .line 4
    .line 5
    const-wide/16 v1, 0x1770

    .line 6
    .line 7
    const-string v3, "\"\u9700\u8981\u4e0b\u6ed1\u6d4f\u89c8\u66f4\u591a\u624d\u80fd\u9886\u53d6\u5956\u52b1\u54e6\""

    .line 8
    .line 9
    const/16 v4, 0x2762

    .line 10
    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    if-eq p1, v4, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/byazt/lo/tt;->md:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Lcom/byazt/lo/tt;->c(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/byazt/lo/tt;->gr:Landroid/os/Handler;

    .line 28
    .line 29
    invoke-virtual {p1, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/byazt/lo/tt;->gr:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object p1, p0, Lcom/byazt/ux/c;->my:Lcom/byazt/ux/tt;

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-interface {p1}, Lcom/byazt/ux/tt;->c()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/byazt/lo/tt;->md:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v3}, Lcom/byazt/lo/tt;->c(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/byazt/lo/tt;->gr:Landroid/os/Handler;

    .line 56
    .line 57
    invoke-virtual {p1, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_0
    return-void
.end method

.method public i()V
    .locals 0

    .line 1
    return-void
.end method

.method public m()V
    .locals 10

    .line 1
    new-instance v0, Landroid/widget/ScrollView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/widget/LinearLayout;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Landroid/widget/ImageView;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 22
    .line 23
    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 27
    .line 28
    const-string v4, "tt_ecomm_page_backup_img"

    .line 29
    .line 30
    const/16 v5, 0x140

    .line 31
    .line 32
    invoke-static {v3, v4, v2, v5}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 33
    .line 34
    .line 35
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 41
    .line 42
    const/4 v6, -0x1

    .line 43
    const/4 v7, -0x2

    .line 44
    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    iget-object v8, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 48
    .line 49
    const/high16 v9, 0x41200000    # 10.0f

    .line 50
    .line 51
    invoke-static {v8, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 56
    .line 57
    iget-object v8, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {v8, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 64
    .line 65
    iget-object v8, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {v8, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 72
    .line 73
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    new-instance v2, Landroid/widget/ImageView;

    .line 77
    .line 78
    iget-object v3, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 79
    .line 80
    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 86
    .line 87
    .line 88
    iget-object v3, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 89
    .line 90
    invoke-static {v3, v4, v2, v5}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 91
    .line 92
    .line 93
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 94
    .line 95
    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    .line 97
    .line 98
    iget-object v4, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 99
    .line 100
    invoke-static {v4, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 105
    .line 106
    iget-object v4, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 107
    .line 108
    invoke-static {v4, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 113
    .line 114
    iget-object v4, p0, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    .line 115
    .line 116
    invoke-static {v4, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 121
    .line 122
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .line 124
    .line 125
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 126
    .line 127
    invoke-direct {v2, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lcom/byazt/ux/c;->ve:Landroid/view/ViewGroup;

    .line 134
    .line 135
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 136
    .line 137
    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public my()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lo/tt;->gr:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v1, 0x2762

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public n()V
    .locals 0

    .line 1
    return-void
.end method

.method public n(I)V
    .locals 0

    .line 2
    return-void
.end method

.method public n(Lcom/byazt/xj/ve;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->da()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "image_mode"

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "video_"

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object p1

    .line 7
    instance-of v0, p1, Lcom/byazt/qzm/tt;

    if-eqz v0, :cond_2

    .line 8
    check-cast p1, Lcom/byazt/qzm/tt;

    iput-object p1, p0, Lcom/byazt/lo/tt;->qy:Lcom/byazt/qzm/tt;

    .line 9
    iget-boolean v0, p0, Lcom/byazt/lo/tt;->gu:Z

    invoke-virtual {p1, v0}, Lcom/byazt/qzm/tt;->uj(Z)V

    .line 10
    iget-object p1, p0, Lcom/byazt/lo/tt;->qy:Lcom/byazt/qzm/tt;

    invoke-virtual {p1}, Lcom/byazt/qzm/tt;->b()V

    :cond_2
    return-void
.end method

.method public nu()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/byazt/lo/tt;->rh()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/byazt/lo/tt;->p:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/byazt/lo/tt;->p:Z

    .line 10
    .line 11
    new-instance v0, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    const-string v1, "start"

    .line 17
    .line 18
    iget-wide v2, p0, Lcom/byazt/lo/tt;->yv:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    const-string v1, "end"

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v1, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    .line 38
    .line 39
    new-instance v2, Lcom/byazt/lo/tt$3;

    .line 40
    .line 41
    invoke-direct {v2, p0, v0}, Lcom/byazt/lo/tt$3;-><init>(Lcom/byazt/lo/tt;Lorg/json/JSONObject;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "landingpage"

    .line 45
    .line 46
    const-string v3, "agg_stay_page"

    .line 47
    .line 48
    invoke-static {v1, v0, v3, v2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public rh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lo/tt;->gr:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x2761

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/lo/tt;->gr:Landroid/os/Handler;

    .line 11
    .line 12
    const/16 v1, 0x2762

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setPauseFromExpressView(Z)V
    .locals 0

    return-void
.end method

.method public sl()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/pj/ve;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/byazt/ux/c;->i:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object v0

    .line 4
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "platform"

    const-string v3, "android"

    .line 5
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "env_info"

    .line 6
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/byazt/ux/c;->i:Ljava/util/List;

    new-instance v2, Lcom/byazt/pj/ve;

    const v3, -0x7f3a9fd0

    invoke-direct {v2, v0, v3}, Lcom/byazt/pj/ve;-><init>(Lorg/json/JSONObject;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/byazt/ux/c;->i:Ljava/util/List;

    return-object v0
.end method

.method public sp()V
    .locals 0

    .line 1
    return-void
.end method

.method public t()V
    .locals 6

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/xs/da;->c(Lcom/byazt/ete/ic;)I

    move-result v0

    iput v0, p0, Lcom/byazt/ux/c;->z:I

    .line 3
    iget-object v0, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->jm()Lorg/json/JSONObject;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/byazt/lo/tt$1;

    invoke-direct {v1, p0}, Lcom/byazt/lo/tt$1;-><init>(Lcom/byazt/lo/tt;)V

    iput-object v1, p0, Lcom/byazt/lo/tt;->zm:Lcom/byazt/at/uj;

    .line 5
    iget-object v1, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->os()Lcom/byazt/lo/c;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->os()Lcom/byazt/lo/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/lo/c;->ve()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->os()Lcom/byazt/lo/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/lo/c;->ve()Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "use_gnd_prefetch"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 7
    invoke-static {}, Lcom/byazt/ab/tt;->c()Lcom/byazt/ab/tt;

    move-result-object v1

    iget-object v4, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    iget-object v5, p0, Lcom/byazt/lo/tt;->zm:Lcom/byazt/at/uj;

    invoke-virtual {v1, v4, v5}, Lcom/byazt/ab/tt;->c(Lcom/byazt/ete/ic;Lcom/byazt/at/uj;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_3

    .line 8
    iget-object v1, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/lo/tt;->zm:Lcom/byazt/at/uj;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->ij()Lcom/byazt/dj/tt;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/byazt/hy/tt;->c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;Lcom/byazt/at/uj;Lcom/byazt/dj/tt;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    .line 9
    iget-object v1, p0, Lcom/byazt/ux/c;->rl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gtz v1, :cond_4

    .line 10
    iget-object v1, p0, Lcom/byazt/ux/c;->uj:Lcom/byazt/ddx/sp;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x3

    invoke-virtual {v1, v2, v0}, Lcom/byazt/ddx/sp;->c(ILjava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/byazt/ux/c;->a:Lcom/byazt/qj/c;

    if-eqz v0, :cond_5

    .line 12
    invoke-interface {v0, v2}, Lcom/byazt/qj/c;->c(I)V

    return-void

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/byazt/ux/c;->rl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 14
    iget-object v0, p0, Lcom/byazt/ux/c;->rl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 15
    invoke-virtual {p0}, Lcom/byazt/lo/tt;->t()V

    :cond_5
    return-void
.end method

.method public tt()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public tt(I)V
    .locals 0

    .line 2
    return-void
.end method

.method public uj()V
    .locals 0

    .line 1
    return-void
.end method

.method public uj(I)V
    .locals 0

    .line 2
    return-void
.end method

.method public uj(Lcom/byazt/xj/ve;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 3
    return-void
.end method

.method public ve()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public ve(I)V
    .locals 0

    .line 2
    return-void
.end method

.method public ve(Lcom/byazt/xj/ve;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->da()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ugen_sub_meta"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->da()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/ic;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->da()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/ic;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/byazt/ux/c;->c(Lcom/byazt/ete/ic;Lcom/byazt/xj/ve;)V

    :cond_2
    return-void
.end method

.method public ve(Z)V
    .locals 1

    .line 4
    iput-boolean p1, p0, Lcom/byazt/lo/tt;->gu:Z

    .line 5
    iget-object v0, p0, Lcom/byazt/lo/tt;->qy:Lcom/byazt/qzm/tt;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/byazt/qzm/tt;->uj(Z)V

    :cond_0
    return-void
.end method

.method public x()V
    .locals 0

    .line 1
    return-void
.end method

.method public z()V
    .locals 2

    .line 2
    invoke-super {p0}, Lcom/byazt/ux/c;->z()V

    .line 3
    invoke-static {}, Lcom/byazt/ab/tt;->c()Lcom/byazt/ab/tt;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    invoke-virtual {v0, v1}, Lcom/byazt/ab/tt;->tt(Lcom/byazt/ete/ic;)V

    .line 4
    invoke-virtual {p0}, Lcom/byazt/lo/tt;->rh()V

    return-void
.end method
