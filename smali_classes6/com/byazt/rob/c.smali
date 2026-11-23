.class public Lcom/byazt/rob/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4bb,
        0x14
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/ete/ic;

.field public n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public tt:Landroid/content/Context;

.field public uj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public ve:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/rob/c;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/rob/c;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/byazt/rob/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/byazt/rob/c;->c:Lcom/byazt/ete/ic;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/byazt/rob/c;->tt:Landroid/content/Context;

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic c(Lcom/byazt/rob/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/rob/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/rob/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/rob/c;->tt:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 28
    new-instance v0, Lcom/byazt/rob/c$5;

    invoke-direct {v0, p0}, Lcom/byazt/rob/c$5;-><init>(Lcom/byazt/rob/c;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    .line 29
    iget-object v0, p0, Lcom/byazt/rob/c;->c:Lcom/byazt/ete/ic;

    iget-object v1, p0, Lcom/byazt/rob/c;->tt:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/byazt/oit/c;->c(Landroid/view/View;Lcom/byazt/ete/ic;Landroid/content/Context;)V

    return-void
.end method

.method public c(ILcom/byazt/dj/tt;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/rob/c;->c:Lcom/byazt/ete/ic;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/byazt/rob/c;->c()V

    const/4 p2, 0x0

    const/4 v0, 0x2

    .line 4
    invoke-static {p2, v1, p1, v0}, Lcom/byazt/rob/ve;->c(Lcom/byazt/ete/ic;ZII)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/rob/c;->tt:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/byazt/rob/c;->c()V

    .line 7
    iget-object p2, p0, Lcom/byazt/rob/c;->c:Lcom/byazt/ete/ic;

    const/4 v0, 0x3

    invoke-static {p2, v1, p1, v0}, Lcom/byazt/rob/ve;->c(Lcom/byazt/ete/ic;ZII)V

    return-void

    :cond_1
    const/4 v0, 0x7

    if-nez p2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/byazt/rob/c;->c()V

    .line 9
    iget-object p2, p0, Lcom/byazt/rob/c;->c:Lcom/byazt/ete/ic;

    invoke-static {p2, v1, p1, v0}, Lcom/byazt/rob/ve;->c(Lcom/byazt/ete/ic;ZII)V

    return-void

    .line 10
    :cond_2
    iget-object v2, p0, Lcom/byazt/rob/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    iget-object p2, p0, Lcom/byazt/rob/c;->c:Lcom/byazt/ete/ic;

    const/4 v0, 0x4

    invoke-static {p2, v1, p1, v0}, Lcom/byazt/rob/ve;->c(Lcom/byazt/ete/ic;ZII)V

    return-void

    .line 12
    :cond_3
    iget-object v2, p0, Lcom/byazt/rob/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    iget-object v2, p0, Lcom/byazt/rob/c;->c:Lcom/byazt/ete/ic;

    invoke-static {v2}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_7

    if-eq v2, v0, :cond_6

    const/16 v0, 0x8

    if-eq v2, v0, :cond_5

    const/16 v0, 0x9

    if-eq v2, v0, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/byazt/rob/c;->c()V

    .line 15
    iget-object p2, p0, Lcom/byazt/rob/c;->c:Lcom/byazt/ete/ic;

    invoke-static {p2, v1, p1, v3}, Lcom/byazt/rob/ve;->c(Lcom/byazt/ete/ic;ZII)V

    .line 16
    iget-object p1, p0, Lcom/byazt/rob/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/byazt/rob/c;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p0, p1, p2, v0}, Lcom/byazt/rob/c;->tt(ILcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V

    return-void

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/byazt/rob/c;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p0, p1, p2, v0}, Lcom/byazt/rob/c;->uj(ILcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V

    return-void

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/byazt/rob/c;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p0, p1, p2, v0}, Lcom/byazt/rob/c;->ve(ILcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V

    return-void

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/byazt/rob/c;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p0, p1, p2, v0}, Lcom/byazt/rob/c;->c(ILcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public c(ILcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V
    .locals 9

    .line 21
    :try_start_0
    invoke-virtual {p0, p3, p1}, Lcom/byazt/rob/c;->tt(Lcom/byazt/ete/ic;I)Lcom/byazt/rob/uj;

    move-result-object v6

    .line 22
    invoke-virtual {p0}, Lcom/byazt/rob/c;->tt()V

    .line 23
    invoke-static {}, Lcom/byazt/pro/c;->uj()Lcom/byazt/pro/c;

    move-result-object v7

    new-instance v8, Lcom/byazt/rob/c$1;

    const/4 v2, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, v6

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/byazt/rob/c$1;-><init>(Lcom/byazt/rob/c;Ljava/util/function/Function;Lcom/byazt/rob/uj;ILcom/byazt/ete/ic;)V

    invoke-virtual {v7, p2, v6, v8}, Lcom/byazt/vvt/c;->c(Lcom/byazt/dj/tt;Lcom/byazt/rob/uj;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 24
    iget-object v0, p0, Lcom/byazt/rob/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "requestNewFeedAd error"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    .line 25
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v2

    const-string p2, "SecondPageImpl"

    invoke-static {p2, v0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p0}, Lcom/byazt/rob/c;->c()V

    const/4 p2, 0x6

    .line 27
    invoke-static {p3, v1, p1, p2}, Lcom/byazt/rob/ve;->c(Lcom/byazt/ete/ic;ZII)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;I)V
    .locals 11

    .line 30
    invoke-static {p1}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v0

    .line 31
    invoke-static {v0}, Lcom/byazt/aas/nb;->tt(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {p1}, Lcom/byazt/ete/my;->x(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->x()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v9, v1

    .line 35
    new-instance v10, Lcom/byazt/szt/c;

    iget-object v3, p0, Lcom/byazt/rob/c;->tt:Landroid/content/Context;

    invoke-static {v0}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object v8

    move-object v1, v10

    move-object v2, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v8}, Lcom/byazt/szt/c;-><init>(Lcom/byazt/eia/x;Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)V

    .line 36
    invoke-virtual {v10, v9}, Lcom/byazt/szt/c;->c(Ljava/lang/String;)V

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v10, v1}, Lcom/byazt/szt/c;->c(Ljava/util/Map;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;)V

    const/4 v0, 0x1

    .line 39
    invoke-static {p1, v0, p2, v2}, Lcom/byazt/rob/ve;->tt(Lcom/byazt/ete/ic;ZII)V

    return-void

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/rob/c;->c()V

    const/4 v0, 0x4

    .line 41
    invoke-static {p1, v2, p2, v0}, Lcom/byazt/rob/ve;->tt(Lcom/byazt/ete/ic;ZII)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/byazt/rob/c;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public tt(Lcom/byazt/ete/ic;I)Lcom/byazt/rob/uj;
    .locals 2

    .line 10
    invoke-static {p1}, Lcom/byazt/aas/nb;->u(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/byazt/rob/uj;

    invoke-direct {v1}, Lcom/byazt/rob/uj;-><init>()V

    .line 12
    invoke-virtual {v1, p2}, Lcom/byazt/rob/uj;->c(I)V

    .line 13
    invoke-virtual {v1, v0}, Lcom/byazt/rob/uj;->c(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, p1}, Lcom/byazt/rob/uj;->c(Lcom/byazt/ete/ic;)V

    return-object v1
.end method

.method public tt()V
    .locals 1

    .line 9
    new-instance v0, Lcom/byazt/rob/c$6;

    invoke-direct {v0, p0}, Lcom/byazt/rob/c$6;-><init>(Lcom/byazt/rob/c;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public tt(ILcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V
    .locals 9

    .line 2
    :try_start_0
    invoke-virtual {p0, p3, p1}, Lcom/byazt/rob/c;->tt(Lcom/byazt/ete/ic;I)Lcom/byazt/rob/uj;

    move-result-object v6

    .line 3
    invoke-virtual {p0}, Lcom/byazt/rob/c;->tt()V

    .line 4
    invoke-static {}, Lcom/byazt/wb/c;->uj()Lcom/byazt/wb/c;

    move-result-object v7

    new-instance v8, Lcom/byazt/rob/c$2;

    const/4 v2, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, v6

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/byazt/rob/c$2;-><init>(Lcom/byazt/rob/c;Ljava/util/function/Function;Lcom/byazt/rob/uj;ILcom/byazt/ete/ic;)V

    invoke-virtual {v7, p2, v6, v8}, Lcom/byazt/vvt/c;->c(Lcom/byazt/dj/tt;Lcom/byazt/rob/uj;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 5
    iget-object v0, p0, Lcom/byazt/rob/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "requestNewDrawAd error"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    .line 6
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v2

    const-string p2, "SecondPageImpl"

    invoke-static {p2, v0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/byazt/rob/c;->c()V

    const/4 p2, 0x6

    .line 8
    invoke-static {p3, v1, p1, p2}, Lcom/byazt/rob/ve;->c(Lcom/byazt/ete/ic;ZII)V

    return-void
.end method

.method public tt(Z)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/byazt/rob/c;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public uj(ILcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p3, p1}, Lcom/byazt/rob/c;->tt(Lcom/byazt/ete/ic;I)Lcom/byazt/rob/uj;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/byazt/cf/tt;->c()Lcom/byazt/cf/tt;

    move-result-object v1

    new-instance v2, Lcom/byazt/cf/uj;

    new-instance v3, Lcom/byazt/rob/c$4;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p3, p1}, Lcom/byazt/rob/c$4;-><init>(Lcom/byazt/rob/c;Ljava/util/function/Function;Lcom/byazt/ete/ic;I)V

    invoke-direct {v2, v3}, Lcom/byazt/cf/uj;-><init>(Lcom/byazt/nh/uj;)V

    invoke-virtual {v1, p2, v0, v2}, Lcom/byazt/cf/ve;->c(Lcom/byazt/dj/tt;Lcom/byazt/rob/uj;Lcom/byazt/cf/uj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "requestNewAd error"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "SecondPageImpl"

    invoke-static {p2, v0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/byazt/rob/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/byazt/rob/c;->c()V

    const/4 p2, 0x6

    .line 6
    invoke-static {p3, v2, p1, p2}, Lcom/byazt/rob/ve;->c(Lcom/byazt/ete/ic;ZII)V

    return-void
.end method

.method public uj()Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/rob/c;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public ve(ILcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p3, p1}, Lcom/byazt/rob/c;->tt(Lcom/byazt/ete/ic;I)Lcom/byazt/rob/uj;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/byazt/cf/sp;->c()Lcom/byazt/cf/sp;

    move-result-object v1

    new-instance v2, Lcom/byazt/cf/uj;

    new-instance v3, Lcom/byazt/rob/c$3;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p3, p1}, Lcom/byazt/rob/c$3;-><init>(Lcom/byazt/rob/c;Ljava/util/function/Function;Lcom/byazt/ete/ic;I)V

    invoke-direct {v2, v3}, Lcom/byazt/cf/uj;-><init>(Lcom/byazt/nh/sp;)V

    invoke-virtual {v1, p2, v0, v2}, Lcom/byazt/cf/ve;->c(Lcom/byazt/dj/tt;Lcom/byazt/rob/uj;Lcom/byazt/cf/uj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 3
    iget-object v0, p0, Lcom/byazt/rob/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "requestNewAd error"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v2

    const-string p2, "SecondPageImpl"

    invoke-static {p2, v0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/byazt/rob/c;->c()V

    const/4 p2, 0x6

    .line 6
    invoke-static {p3, v1, p1, p2}, Lcom/byazt/rob/ve;->c(Lcom/byazt/ete/ic;ZII)V

    return-void
.end method

.method public ve()Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/rob/c;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
