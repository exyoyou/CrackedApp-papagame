.class public Lcom/byazt/gk/ve;
.super Lcom/byazt/nh/c;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gk/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x94,
        0x36
    }
.end annotation


# instance fields
.field public c:J


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/nh/c;-><init>(Ljava/util/function/Function;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/byazt/gk/ve;->c:J

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic c(Lcom/byazt/gk/ve;Lcom/byazt/nc/c;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/nh/c;->c(Lcom/byazt/nc/c;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/gk/ve;Lcom/byazt/nc/tt;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/byazt/nh/c;->c(Lcom/byazt/nc/tt;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/gk/ve;Lcom/byazt/nc/tt;Lcom/byazt/nc/c;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/byazt/nh/c;->c(Lcom/byazt/nc/tt;Lcom/byazt/nc/c;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/gk/ve;Lcom/byazt/nc/tt;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/nh/c;->tt(Lcom/byazt/nc/tt;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/nc/c;)V
    .locals 2

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 8
    invoke-super {p0, p1}, Lcom/byazt/nh/c;->c(Lcom/byazt/nc/c;)V

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/byazt/omf/rh;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/gk/ve$2;

    invoke-direct {v1, p0, p1}, Lcom/byazt/gk/ve$2;-><init>(Lcom/byazt/gk/ve;Lcom/byazt/nc/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Lcom/byazt/nc/tt;)V
    .locals 1

    .line 4
    invoke-static {}, Lcom/byazt/cc/a;->ve()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lcom/byazt/nh/c;->c(Lcom/byazt/nc/tt;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/byazt/gk/ve$1;

    invoke-direct {v0, p0, p1}, Lcom/byazt/gk/ve$1;-><init>(Lcom/byazt/gk/ve;Lcom/byazt/nc/tt;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/byazt/nc/tt;Lcom/byazt/nc/c;)V
    .locals 2

    .line 10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 11
    invoke-super {p0, p1, p2}, Lcom/byazt/nh/c;->c(Lcom/byazt/nc/tt;Lcom/byazt/nc/c;)V

    return-void

    .line 12
    :cond_0
    invoke-static {}, Lcom/byazt/omf/rh;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/gk/ve$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/gk/ve$4;-><init>(Lcom/byazt/gk/ve;Lcom/byazt/nc/tt;Lcom/byazt/nc/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public tt()J
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/byazt/gk/ve;->c:J

    return-wide v0
.end method

.method public tt(Lcom/byazt/nc/tt;)V
    .locals 2

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-super {p0, p1}, Lcom/byazt/nh/c;->tt(Lcom/byazt/nc/tt;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/byazt/omf/rh;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/gk/ve$3;

    invoke-direct {v1, p0, p1}, Lcom/byazt/gk/ve$3;-><init>(Lcom/byazt/gk/ve;Lcom/byazt/nc/tt;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
