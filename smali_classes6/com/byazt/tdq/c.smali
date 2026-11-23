.class public abstract Lcom/byazt/tdq/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c4,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/tdq/c$c;
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/tdq/n;

.field public c:J

.field public n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public tt:J

.field public uj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public ve:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/byazt/tdq/c;->c:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/byazt/tdq/c;->tt:J

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/tdq/c;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/byazt/tdq/c;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/byazt/tdq/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    return-void
.end method

.method public static c()Lcom/byazt/tdq/c;
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/by/n;->c()Lcom/byazt/by/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/by/n;->sl()I

    move-result v0

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/byazt/tdq/ve;

    invoke-direct {v0}, Lcom/byazt/tdq/ve;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/byazt/tdq/uj;

    invoke-direct {v0}, Lcom/byazt/tdq/uj;-><init>()V

    return-object v0
.end method

.method public static c(I)Z
    .locals 4

    .line 11
    invoke-static {}, Lcom/byazt/by/n;->c()Lcom/byazt/by/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/by/n;->sl()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p0, v3, :cond_1

    and-int/lit8 p0, v0, 0x2

    if-ne p0, v3, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    const/4 v3, 0x3

    if-eq p0, v3, :cond_3

    if-ne p0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/16 p0, 0x20

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_4

    return v2

    :cond_4
    return v1
.end method


# virtual methods
.method public c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/byazt/tdq/c;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "lqmt"

    if-eqz v0, :cond_0

    const-string p1, "\u5df2\u7ecf\u5b58\u50a8\u4e86\u4e00\u4e2a\u5b9e\u65f6\u5e7f\u544a"

    .line 13
    invoke-static {v1, p1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/tdq/c;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u5df2\u5728\u9884\u52a0\u8f7d\u5f00\u5c4f\u5e7f\u544a....\u4e0d\u518d\u53d1\u51fa"

    .line 15
    invoke-static {v1, p1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ogz/sl;->da(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    .line 17
    iput v0, p2, Lcom/byazt/ete/bm;->sp:I

    .line 18
    :cond_2
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    move-result-object v0

    new-instance v1, Lcom/byazt/tdq/c$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/tdq/c$1;-><init>(Lcom/byazt/tdq/c;Lcom/byazt/dj/tt;)V

    const/4 v2, 0x4

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/byazt/omf/gu;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;ILcom/byazt/omf/gu$tt;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/c;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V
    .locals 10

    .line 19
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-gtz p3, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/byazt/ete/zb;

    .line 21
    invoke-virtual {p3}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {p3}, Lcom/byazt/ete/zb;->tt()I

    move-result v3

    .line 23
    invoke-virtual {p3}, Lcom/byazt/ete/zb;->ve()I

    move-result v4

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/byazt/tdq/c;->c:J

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/byazt/tdq/c;->tt:J

    .line 26
    invoke-static {}, Lcom/byazt/hy/n;->c()Lcom/byazt/hy/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/hy/n;->ve()Lcom/byazt/re/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/re/c;->ve()Lcom/byazt/ete/y;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 27
    invoke-virtual {v2, v0}, Lcom/byazt/ete/y;->c(Z)V

    .line 28
    :cond_1
    invoke-static {p2}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 29
    :cond_2
    new-instance v2, Lcom/byazt/sml/tt;

    invoke-virtual {p3}, Lcom/byazt/ete/zb;->sp()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, v1, p3}, Lcom/byazt/sml/tt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v5, Lcom/byazt/tdq/c$2;

    invoke-direct {v5, p0, p1, v0, p2}, Lcom/byazt/tdq/c$2;-><init>(Lcom/byazt/tdq/c;Lcom/byazt/ete/c;ZLcom/byazt/ete/ic;)V

    .line 31
    invoke-static {}, Lcom/byazt/bzd/sl;->n()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 32
    invoke-static/range {v2 .. v9}, Lcom/byazt/aas/m;->c(Lcom/byazt/sml/tt;IILcom/byazt/aas/m$c;Ljava/lang/String;ILcom/byazt/yj/gt;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public abstract c(Lcom/byazt/ete/os;Lcom/byazt/dj/tt;Z)V
.end method

.method public abstract c(Lcom/byazt/gat/uj;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/gat/uj<",
            "Lcom/byazt/im/i;",
            "Lcom/byazt/im/sp;",
            ">;",
            "Lcom/byazt/ete/ic;",
            "Lcom/byazt/dj/tt;",
            "Z)V"
        }
    .end annotation
.end method

.method public c(Lcom/byazt/im/a;Lcom/byazt/dj/tt;ZI)V
    .locals 4

    .line 3
    invoke-static {p4}, Lcom/byazt/tdq/c;->c(I)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object p4

    invoke-static {p4}, Lcom/byazt/eti/n;->c(Lcom/byazt/ete/ic;)Z

    move-result p4

    if-nez p4, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p4, p0, Lcom/byazt/tdq/c;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p4

    if-eqz p4, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object p4, p0, Lcom/byazt/tdq/c;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p4, "cacheRealTimeAdWhenTimeout start"

    const-string v0, "Splash_FullLink"

    .line 7
    invoke-static {v0, p4}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p4, Lcom/byazt/ete/os;

    invoke-virtual {p1}, Lcom/byazt/im/a;->uj()Lcom/byazt/ete/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p4, v1, v2, v3}, Lcom/byazt/ete/os;-><init>(Lcom/byazt/ete/c;Lcom/byazt/ete/ic;[B)V

    const/4 v1, 0x0

    invoke-virtual {p0, p4, p2, v1}, Lcom/byazt/tdq/c;->c(Lcom/byazt/ete/os;Lcom/byazt/dj/tt;Z)V

    if-eqz p3, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/byazt/im/a;->uj()Lcom/byazt/ete/c;

    move-result-object p3

    invoke-virtual {p1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-virtual {p0, p3, p1, p2}, Lcom/byazt/tdq/c;->c(Lcom/byazt/ete/c;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V

    :cond_3
    const-string p1, "cacheRealTimeAdWhenTimeout end"

    .line 10
    invoke-static {v0, p1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract c(Lcom/byazt/im/sp;Ljava/lang/String;Lcom/byazt/tdq/c$c;Lcom/byazt/tdq/n;)V
.end method

.method public abstract c(Ljava/lang/String;Lcom/byazt/ete/ic;)V
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Object;)V
.end method

.method public abstract tt()V
.end method

.method public tt(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-static {p1}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/dj/tt;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/ogz/sl;->tt(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->rl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "lqmt"

    const-string v1, "preLoadSplashAd... "

    .line 3
    invoke-static {v0, v1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Lcom/byazt/ete/bm;

    invoke-direct {p2}, Lcom/byazt/ete/bm;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/byazt/ete/bm;->c()Lcom/byazt/ete/bm;

    move-result-object p2

    .line 5
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/byazt/ete/bm;->x:J

    const/4 v0, 0x2

    .line 6
    iput v0, p2, Lcom/byazt/ete/bm;->sp:I

    .line 7
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/omf/x;->kp()I

    move-result v1

    iput v1, p2, Lcom/byazt/ete/bm;->yp:I

    .line 8
    iput v0, p2, Lcom/byazt/ete/bm;->tt:I

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/byazt/tdq/c;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;)V

    :cond_1
    return-void
.end method

.method public abstract ve()V
.end method
