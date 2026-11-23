.class public Lcom/byazt/nhd/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nhd/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x153,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/nhd/ve$c;
    }
.end annotation


# static fields
.field public static tt:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/byazt/nhd/ve$c;",
            ">;"
        }
    .end annotation
.end field

.field public final ve:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/nhd/ve;->tt:Ljava/lang/ref/ReferenceQueue;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/nhd/ve;->c:Ljava/util/Map;

    .line 10
    .line 11
    iput p1, p0, Lcom/byazt/nhd/ve;->ve:I

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic c(Lcom/byazt/nhd/ve;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/byazt/nhd/ve;->ve:I

    return p0
.end method


# virtual methods
.method public c(Ljava/lang/String;J)Lcom/byazt/ete/ic;
    .locals 3

    .line 21
    iget v0, p0, Lcom/byazt/nhd/ve;->ve:I

    invoke-static {v0}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object v0

    .line 22
    iget v1, p0, Lcom/byazt/nhd/ve;->ve:I

    invoke-static {v1}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/byazt/eti/n;->c(Ljava/lang/String;ZJ)Lcom/byazt/ete/ic;

    move-result-object p2

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 23
    :try_start_0
    new-instance p3, Lcom/byazt/ete/x$tt$c;

    invoke-direct {p3}, Lcom/byazt/ete/x$tt$c;-><init>()V

    .line 24
    invoke-virtual {p3, p2}, Lcom/byazt/ete/x$tt$c;->c(Lcom/byazt/ete/ic;)Lcom/byazt/ete/x$tt$c;

    move-result-object p3

    .line 25
    invoke-virtual {p3}, Lcom/byazt/ete/x$tt$c;->c()Lcom/byazt/ete/x$tt;

    move-result-object p3

    const-string v1, "delete_on_load"

    .line 26
    invoke-virtual {v0, v1, p3}, Lcom/byazt/ete/x$ve;->c(Ljava/lang/String;Lcom/byazt/ete/x$tt;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 27
    iget p3, p0, Lcom/byazt/nhd/ve;->ve:I

    invoke-static {p3}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    move-result-object p3

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->sf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/byazt/eti/n;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "PreloadStrategyRecovery"

    const-string p3, "deleteCacheMeta error"

    .line 28
    invoke-static {p1, p3}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object p2
.end method

.method public c(Ljava/lang/String;JID)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JID)",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 29
    iget v1, v0, Lcom/byazt/nhd/ve;->ve:I

    invoke-static {v1}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object v1

    .line 30
    iget v2, v0, Lcom/byazt/nhd/ve;->ve:I

    invoke-static {v2}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    move-result-object v3

    const/4 v5, 0x1

    move-object v4, p1

    move-wide v6, p2

    move v8, p4

    move-wide/from16 v9, p5

    invoke-virtual/range {v3 .. v10}, Lcom/byazt/eti/n;->c(Ljava/lang/String;ZJID)Ljava/util/List;

    move-result-object v2

    .line 31
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/ete/ic;

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 32
    :try_start_0
    new-instance v5, Lcom/byazt/ete/x$tt$c;

    invoke-direct {v5}, Lcom/byazt/ete/x$tt$c;-><init>()V

    .line 33
    invoke-virtual {v5, v4}, Lcom/byazt/ete/x$tt$c;->c(Lcom/byazt/ete/ic;)Lcom/byazt/ete/x$tt$c;

    move-result-object v5

    .line 34
    invoke-virtual {v5}, Lcom/byazt/ete/x$tt$c;->c()Lcom/byazt/ete/x$tt;

    move-result-object v5

    const-string v6, "delete_on_load"

    .line 35
    invoke-virtual {v1, v6, v5}, Lcom/byazt/ete/x$ve;->c(Ljava/lang/String;Lcom/byazt/ete/x$tt;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 36
    iget v5, v0, Lcom/byazt/nhd/ve;->ve:I

    invoke-static {v5}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    move-result-object v5

    invoke-virtual {v4}, Lcom/byazt/ete/ic;->sf()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, p1

    :try_start_1
    invoke-virtual {v5, p1, v4}, Lcom/byazt/eti/n;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v6, p1

    :catch_1
    const-string v4, "PreloadStrategyRecovery"

    const-string v5, "deleteCacheMeta error"

    .line 37
    invoke-static {v4, v5}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v6, p1

    goto :goto_0

    .line 38
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    return-object v2
.end method

.method public c(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V
    .locals 5

    .line 3
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->rl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->uv()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xa037a0

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/byazt/ete/ic;->n(J)V

    .line 6
    :cond_1
    new-instance v0, Lcom/byazt/nhd/ve$1;

    const-string v1, "PreloadStrategyRecovery-onNetworkResponse"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/byazt/nhd/ve$1;-><init>(Lcom/byazt/nhd/ve;Ljava/lang/String;Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;Ljava/lang/Object;Z)V
    .locals 7

    .line 39
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v5

    .line 40
    iget v0, p0, Lcom/byazt/nhd/ve;->ve:I

    invoke-static {v0}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->da()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p4, :cond_2

    .line 42
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->xg()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 43
    new-instance p1, Ljava/lang/ref/PhantomReference;

    sget-object p4, Lcom/byazt/nhd/ve;->tt:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1, p3, p4}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 44
    iget-object p3, p0, Lcom/byazt/nhd/ve;->c:Ljava/util/Map;

    new-instance p4, Lcom/byazt/nhd/ve$c;

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->sf()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, v5, p2}, Lcom/byazt/nhd/ve$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    const/4 p4, 0x2

    and-int/2addr v1, p4

    if-eq v1, p4, :cond_3

    return-void

    .line 45
    :cond_3
    :try_start_0
    new-instance p4, Lcom/byazt/ete/x$tt$c;

    invoke-direct {p4}, Lcom/byazt/ete/x$tt$c;-><init>()V

    .line 46
    invoke-virtual {p4, p1}, Lcom/byazt/ete/x$tt$c;->c(Lcom/byazt/dj/tt;)Lcom/byazt/ete/x$tt$c;

    move-result-object p4

    .line 47
    invoke-virtual {p4, p2}, Lcom/byazt/ete/x$tt$c;->c(Lcom/byazt/ete/ic;)Lcom/byazt/ete/x$tt$c;

    move-result-object p4

    .line 48
    invoke-virtual {p4}, Lcom/byazt/ete/x$tt$c;->c()Lcom/byazt/ete/x$tt;

    move-result-object p4

    const-string v1, "disable_trans_cache"

    .line 49
    invoke-virtual {v0, v1, p4}, Lcom/byazt/ete/x$ve;->c(Ljava/lang/String;Lcom/byazt/ete/x$tt;)Z

    move-result p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p4, :cond_4

    return-void

    :catch_0
    const-string p4, "PreloadStrategyRecovery"

    const-string v0, "isDisableSdkBidding error"

    .line 50
    invoke-static {p4, v0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_4
    new-instance p4, Lcom/byazt/nhd/ve$4;

    const-string v2, "PreloadStrategyRecovery-onLoad"

    move-object v0, p4

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/byazt/nhd/ve$4;-><init>(Lcom/byazt/nhd/ve;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/Object;Ljava/lang/String;Lcom/byazt/dj/tt;)V

    invoke-static {p4}, Lcom/byazt/bzd/x;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/byazt/dj/tt;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->rl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 9
    iget v0, p0, Lcom/byazt/nhd/ve;->ve:I

    invoke-static {v0}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->da()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_2

    return-void

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 12
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ete/ic;

    if-eqz v1, :cond_3

    .line 13
    :try_start_0
    new-instance v2, Lcom/byazt/ete/x$tt$c;

    invoke-direct {v2}, Lcom/byazt/ete/x$tt$c;-><init>()V

    .line 14
    invoke-virtual {v2, p1}, Lcom/byazt/ete/x$tt$c;->c(Lcom/byazt/dj/tt;)Lcom/byazt/ete/x$tt$c;

    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Lcom/byazt/ete/x$tt$c;->c(Lcom/byazt/ete/ic;)Lcom/byazt/ete/x$tt$c;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/byazt/ete/x$tt$c;->c()Lcom/byazt/ete/x$tt;

    move-result-object v1

    const-string v2, "disable_trans_cache"

    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/byazt/ete/x$ve;->c(Ljava/lang/String;Lcom/byazt/ete/x$tt;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "PreloadStrategyRecovery"

    const-string v1, "onNetMetaTimeoutNotUse error"

    .line 19
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_3
    new-instance v0, Lcom/byazt/nhd/ve$2;

    const-string v1, "PreloadStrategyRecovery-onNetworkResponse"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/byazt/nhd/ve$2;-><init>(Lcom/byazt/nhd/ve;Ljava/lang/String;Ljava/util/List;Lcom/byazt/dj/tt;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 3

    .line 52
    invoke-static {p1}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result v0

    .line 53
    new-instance v1, Lcom/byazt/nhd/ve$5;

    const-string v2, "PreloadStrategyRecovery-onShow"

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/byazt/nhd/ve$5;-><init>(Lcom/byazt/nhd/ve;Ljava/lang/String;ILcom/byazt/ete/ic;)V

    invoke-static {v1}, Lcom/byazt/bzd/x;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/ete/ic;)V
    .locals 1

    .line 54
    iget v0, p0, Lcom/byazt/nhd/ve;->ve:I

    invoke-static {v0}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    move-result-object v0

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->sf()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/byazt/eti/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public tt(Lcom/byazt/dj/tt;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->rl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/byazt/nhd/ve$3;

    const-string v1, "PreloadStrategyRecovery-onNetworkResponse"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/byazt/nhd/ve$3;-><init>(Lcom/byazt/nhd/ve;Ljava/lang/String;Ljava/util/List;Lcom/byazt/dj/tt;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 4

    .line 3
    sget-object v0, Lcom/byazt/nhd/ve;->tt:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/byazt/nhd/ve;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/nhd/ve$c;

    if-eqz v0, :cond_0

    .line 5
    iget v1, p0, Lcom/byazt/nhd/ve;->ve:I

    invoke-static {v1}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    move-result-object v1

    iget-object v2, v0, Lcom/byazt/nhd/ve$c;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/byazt/nhd/ve$c;->tt:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/byazt/eti/n;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    :cond_0
    sget-object v0, Lcom/byazt/nhd/ve;->tt:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lcom/byazt/nhd/ve;->ve:I

    invoke-static {v0}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/eti/n;->tt(Ljava/lang/String;)V

    .line 8
    iget v0, p0, Lcom/byazt/nhd/ve;->ve:I

    invoke-static {v0}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/eti/n;->ve(Ljava/lang/String;)V

    return-void
.end method
