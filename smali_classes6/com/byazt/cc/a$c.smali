.class public Lcom/byazt/cc/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x1d0
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/cc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cc/a;

.field public final tt:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/byazt/cc/a$c;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic c(Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/cc/a$c;->c(Lcom/byazt/nc/tt;I)V

    return-void
.end method

.method private c(Lcom/byazt/nc/tt;I)V
    .locals 1

    .line 67
    instance-of v0, p1, Lcom/byazt/uo/c;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Lcom/byazt/uo/c;

    invoke-virtual {p1, p2}, Lcom/byazt/uo/c;->syncCallbackStatus(I)V

    :cond_0
    return-void
.end method

.method private c(Lcom/byazt/nh/c;Lcom/byazt/ete/y;Lcom/byazt/ete/ic;Lcom/byazt/nc/tt;ZZ)V
    .locals 9

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->x(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0, p3}, Lcom/byazt/cc/a;->c(Lcom/byazt/cc/a;Lcom/byazt/ete/ic;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    .line 24
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    if-eqz p5, :cond_2

    invoke-static {v0}, Lcom/byazt/cc/a;->z(Lcom/byazt/cc/a;)Lcom/byazt/ete/y;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/byazt/cc/a;->qy(Lcom/byazt/cc/a;)Lcom/byazt/ete/y;

    move-result-object v0

    :goto_0
    invoke-static {v0, v1}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/y;I)V

    .line 25
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->gt(Lcom/byazt/cc/a;)V

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->gu(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->x(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 29
    invoke-direct {p0, p4, v2}, Lcom/byazt/cc/a$c;->c(Lcom/byazt/nc/tt;I)V

    .line 30
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-virtual {p4}, Lcom/byazt/nc/tt;->getLifecycleId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Lcom/byazt/cc/a;->ve(Lcom/byazt/cc/a;Ljava/lang/String;ZLcom/byazt/lq/ve;)V

    .line 31
    invoke-virtual {p1, p4}, Lcom/byazt/nh/c;->c(Lcom/byazt/nc/tt;)V

    .line 32
    iget-object p1, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {p1}, Lcom/byazt/cc/a;->gr(Lcom/byazt/cc/a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p3, :cond_4

    .line 33
    iget-object p1, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {p1}, Lcom/byazt/cc/a;->gr(Lcom/byazt/cc/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/byazt/ete/ic;->c(Ljava/lang/String;)V

    const-string p1, "splash_ad"

    .line 34
    invoke-static {p3, p1}, Lcom/byazt/iyp/tt;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 35
    :cond_4
    iget-object p1, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {p1}, Lcom/byazt/cc/a;->x(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string p1, "Splash_FullLink"

    const-string v0, "onSplashLoadSuccess() \u5a92\u4f53\u5904\u7406\u5b8c\u6210"

    .line 36
    invoke-static {p1, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 37
    invoke-direct {p0, p5, p1, p4}, Lcom/byazt/cc/a$c;->c(ZZLjava/lang/Object;)V

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v7

    invoke-virtual {p2, v0, v1}, Lcom/byazt/ete/y;->nu(J)V

    if-eqz p6, :cond_5

    .line 39
    iget-object p1, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {p1}, Lcom/byazt/cc/a;->zm(Lcom/byazt/cc/a;)Landroid/content/Context;

    move-result-object v3

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    invoke-static/range {v3 .. v8}, Lcom/byazt/cc/sp;->c(Landroid/content/Context;Lcom/byazt/ete/y;Lcom/byazt/ete/ic;ZJ)V

    :cond_5
    :goto_1
    return-void
.end method

.method private c(ZZLjava/lang/Object;)V
    .locals 8

    .line 69
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/byazt/cc/a;->uj(Lcom/byazt/cc/a;Z)Lcom/byazt/ete/ic;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v1}, Lcom/byazt/cc/a;->h(Lcom/byazt/cc/a;)Lcom/byazt/tdq/c;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v4

    .line 72
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->rl(Lcom/byazt/cc/a;)Lcom/byazt/dj/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v3

    .line 73
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->h(Lcom/byazt/cc/a;)Lcom/byazt/tdq/c;

    move-result-object v2

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/byazt/tdq/c;->c(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private uj(Lcom/byazt/im/sp;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/byazt/cc/a$c$1;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/byazt/cc/a$c$1;-><init>(Lcom/byazt/cc/a$c;Lcom/byazt/im/sp;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/byazt/cc/a;->my(Lcom/byazt/cc/a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public c()V
    .locals 7

    const-string v0, "onTimeOut start"

    const-string v1, "Splash_FullLink"

    .line 47
    invoke-static {v1, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->a(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49
    iget-object v0, p0, Lcom/byazt/cc/a$c;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/a$c;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->x(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0, v2}, Lcom/byazt/cc/a;->sp(Lcom/byazt/cc/a;Z)V

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->yv(Lcom/byazt/cc/a;)Lcom/byazt/gat/n;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->yv(Lcom/byazt/cc/a;)Lcom/byazt/gat/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/gat/n;->c()V

    :cond_2
    const-string v0, "\u5f00\u5c4f\u8d85\u65f6"

    .line 55
    invoke-static {v1, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->rh(Lcom/byazt/cc/a;)Lcom/byazt/nh/c;

    move-result-object v0

    const-string v1, "load splash time out"

    const/16 v3, 0x17

    if-eqz v0, :cond_4

    .line 57
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->x(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v4, 0x0

    if-lez v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->rh(Lcom/byazt/cc/a;)Lcom/byazt/nh/c;

    move-result-object v0

    new-instance v2, Lcom/byazt/lq/ve;

    const/4 v5, 0x3

    const-string v6, "load success but render fail"

    invoke-direct {v2, v5, v6}, Lcom/byazt/lq/ve;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v4, v2}, Lcom/byazt/nh/c;->c(Lcom/byazt/nc/tt;Lcom/byazt/nc/c;)V

    goto :goto_0

    .line 59
    :cond_3
    new-instance v0, Lcom/byazt/lq/ve;

    invoke-direct {v0, v3, v1}, Lcom/byazt/lq/ve;-><init>(ILjava/lang/String;)V

    .line 60
    iget-object v5, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v5, v4, v2, v0}, Lcom/byazt/cc/a;->n(Lcom/byazt/cc/a;Ljava/lang/String;ZLcom/byazt/lq/ve;)V

    .line 61
    iget-object v2, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v2}, Lcom/byazt/cc/a;->rh(Lcom/byazt/cc/a;)Lcom/byazt/nh/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/byazt/nh/c;->c(Lcom/byazt/nc/c;)V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->my(Lcom/byazt/cc/a;)V

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->p(Lcom/byazt/cc/a;)Z

    move-result v0

    iget-object v2, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v2}, Lcom/byazt/cc/a;->p(Lcom/byazt/cc/a;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/byazt/cc/a;->uj(Lcom/byazt/cc/a;Z)Lcom/byazt/ete/ic;

    move-result-object v2

    iget-object v4, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v4}, Lcom/byazt/cc/a;->rl(Lcom/byazt/cc/a;)Lcom/byazt/dj/tt;

    move-result-object v4

    new-instance v5, Lcom/byazt/im/sp;

    iget-object v6, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    .line 64
    invoke-static {v6}, Lcom/byazt/cc/a;->p(Lcom/byazt/cc/a;)Z

    move-result v6

    invoke-direct {v5, v3, v1, v6}, Lcom/byazt/im/sp;-><init>(ILjava/lang/String;Z)V

    .line 65
    invoke-static {v0, v2, v4, v5}, Lcom/byazt/cc/sp;->c(ZLcom/byazt/ete/ic;Lcom/byazt/dj/tt;Lcom/byazt/im/sp;)V

    .line 66
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->p(Lcom/byazt/cc/a;)Z

    move-result v0

    iget-object v1, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v1}, Lcom/byazt/cc/a;->p(Lcom/byazt/cc/a;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/byazt/cc/a;->uj(Lcom/byazt/cc/a;Z)Lcom/byazt/ete/ic;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v2}, Lcom/byazt/cc/a;->rl(Lcom/byazt/cc/a;)Lcom/byazt/dj/tt;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/byazt/cc/sp;->c(ZLcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V

    return-void
.end method

.method public c(Lcom/byazt/im/i;)V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->gt(Lcom/byazt/cc/a;)V

    .line 41
    iget-object v0, p0, Lcom/byazt/cc/a$c;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/a$c;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p1}, Lcom/byazt/im/i;->ve()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0, p1}, Lcom/byazt/cc/a;->c(Lcom/byazt/cc/a;Lcom/byazt/im/i;)V

    .line 45
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/byazt/cc/a;->z(Lcom/byazt/cc/a;)Lcom/byazt/ete/y;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/byazt/cc/a;->qy(Lcom/byazt/cc/a;)Lcom/byazt/ete/y;

    move-result-object v2

    :goto_1
    invoke-static {v0, v1, v2}, Lcom/byazt/cc/a;->c(Lcom/byazt/cc/a;ZLcom/byazt/ete/y;)V

    .line 46
    new-instance v0, Lcom/byazt/cc/a$c$4;

    invoke-direct {v0, p0, p1}, Lcom/byazt/cc/a$c$4;-><init>(Lcom/byazt/cc/a$c;Lcom/byazt/im/i;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/byazt/im/sp;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->gt(Lcom/byazt/cc/a;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/cc/a$c;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->x(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/byazt/cc/a$c;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/byazt/cc/a;->ve(Lcom/byazt/cc/a;Z)V

    .line 7
    new-instance v0, Lcom/byazt/cc/a$c$2;

    invoke-direct {v0, p0, p1}, Lcom/byazt/cc/a$c$2;-><init>(Lcom/byazt/cc/a$c;Lcom/byazt/im/sp;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v2, v1, v0}, Lcom/byazt/cc/a$c;->c(ZZLjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->my(Lcom/byazt/cc/a;)V

    const-string v0, "Splash_FullLink"

    const-string v1, "onLoadSplashAdFail\u56de\u8c03 \u5e7f\u544a\u83b7\u53d6\u5931\u8d25"

    .line 10
    invoke-static {v0, v1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/byazt/im/sp;->x()Z

    move-result v0

    iget-object v1, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-virtual {p1}, Lcom/byazt/im/sp;->x()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/byazt/cc/a;->uj(Lcom/byazt/cc/a;Z)Lcom/byazt/ete/ic;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v2}, Lcom/byazt/cc/a;->rl(Lcom/byazt/cc/a;)Lcom/byazt/dj/tt;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/byazt/cc/sp;->c(ZLcom/byazt/ete/ic;Lcom/byazt/dj/tt;Lcom/byazt/im/sp;)V

    return-void
.end method

.method public c(Lcom/byazt/im/x;)V
    .locals 8

    .line 12
    iget-object v0, p0, Lcom/byazt/cc/a$c;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->x(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/byazt/cc/a;->n(Lcom/byazt/cc/a;Z)V

    :cond_1
    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/byazt/im/x;->sl()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->z(Lcom/byazt/cc/a;)Lcom/byazt/ete/y;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->qy(Lcom/byazt/cc/a;)Lcom/byazt/ete/y;

    move-result-object v0

    :goto_0
    move-object v3, v0

    if-eqz v3, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/byazt/im/x;->c()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/byazt/ete/y;->a(I)V

    .line 17
    invoke-virtual {p1}, Lcom/byazt/im/x;->yp()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/byazt/ete/y;->rh(J)V

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3}, Lcom/byazt/ete/y;->gr()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Lcom/byazt/ete/y;->rl(J)V

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->rh(Lcom/byazt/cc/a;)Lcom/byazt/nh/c;

    move-result-object v2

    .line 20
    invoke-virtual {p1}, Lcom/byazt/im/x;->tt()Lcom/byazt/ete/ic;

    move-result-object v4

    invoke-virtual {p1}, Lcom/byazt/im/x;->t()Lcom/byazt/nc/tt;

    move-result-object v5

    invoke-virtual {p1}, Lcom/byazt/im/x;->sl()Z

    move-result v6

    invoke-virtual {p1}, Lcom/byazt/im/x;->z()Z

    move-result v7

    move-object v1, p0

    .line 21
    invoke-direct/range {v1 .. v7}, Lcom/byazt/cc/a$c;->c(Lcom/byazt/nh/c;Lcom/byazt/ete/y;Lcom/byazt/ete/ic;Lcom/byazt/nc/tt;ZZ)V

    :cond_4
    return-void
.end method

.method public tt()V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/byazt/cc/a$c;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Splash_FullLink"

    const-string v1, "\u89e6\u53d1 buffer_time\u8d85\u65f6 \u5f00\u59cb\u7ed9\u52a0\u8f7d\u6210\u529f\u56de\u8c03\u4ee5\u53ca\u5f00\u59cb\u6e32\u67d3"

    .line 10
    invoke-static {v0, v1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->md(Lcom/byazt/cc/a;)V

    return-void
.end method

.method public tt(Lcom/byazt/im/sp;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->gt(Lcom/byazt/cc/a;)V

    .line 2
    iget-object v0, p0, Lcom/byazt/cc/a$c;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/byazt/cc/a$c;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/byazt/cc/a;->a(Lcom/byazt/cc/a;Z)V

    .line 5
    new-instance v0, Lcom/byazt/cc/a$c$3;

    invoke-direct {v0, p0, p1}, Lcom/byazt/cc/a$c$3;-><init>(Lcom/byazt/cc/a$c;Lcom/byazt/im/sp;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->my(Lcom/byazt/cc/a;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSplashLoadFail \u7d20\u6750\u52a0\u8f7d\u52a0\u8f7d\u5931\u8d25 code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/im/sp;->uj()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Splash_FullLink"

    invoke-static {v1, v0}, Lcom/byazt/dz/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/byazt/im/sp;->x()Z

    move-result v0

    iget-object v1, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-virtual {p1}, Lcom/byazt/im/sp;->x()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/byazt/cc/a;->uj(Lcom/byazt/cc/a;Z)Lcom/byazt/ete/ic;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v2}, Lcom/byazt/cc/a;->rl(Lcom/byazt/cc/a;)Lcom/byazt/dj/tt;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/byazt/cc/sp;->c(ZLcom/byazt/ete/ic;Lcom/byazt/dj/tt;Lcom/byazt/im/sp;)V

    return-void
.end method

.method public ve(Lcom/byazt/im/sp;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v0}, Lcom/byazt/cc/a;->gt(Lcom/byazt/cc/a;)V

    .line 2
    iget-object v0, p0, Lcom/byazt/cc/a$c;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/a$c;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    invoke-virtual {p1}, Lcom/byazt/im/sp;->x()Z

    move-result v0

    iget-object v1, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-virtual {p1}, Lcom/byazt/im/sp;->x()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/byazt/cc/a;->uj(Lcom/byazt/cc/a;Z)Lcom/byazt/ete/ic;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/cc/a$c;->c:Lcom/byazt/cc/a;

    invoke-static {v2}, Lcom/byazt/cc/a;->rl(Lcom/byazt/cc/a;)Lcom/byazt/dj/tt;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/byazt/cc/sp;->c(ZLcom/byazt/ete/ic;Lcom/byazt/dj/tt;Lcom/byazt/im/sp;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/cc/a$c;->uj(Lcom/byazt/im/sp;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6e32\u67d3\u5931\u8d25 code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/im/sp;->uj()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/byazt/im/sp;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplashLoadManager"

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ve()Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/cc/a$c;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
