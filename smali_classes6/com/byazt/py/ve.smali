.class public Lcom/byazt/py/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/py/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x757,
        0x36
    }
.end annotation


# instance fields
.field public c:Landroid/os/Handler;

.field public tt:Lcom/byazt/py/tt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/byazt/py/ve;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/py/ve;->tt:Lcom/byazt/py/tt;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/byazt/py/tt;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/byazt/py/ve;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/byazt/py/ve;->tt:Lcom/byazt/py/tt;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lcom/byazt/py/ve;->tt:Lcom/byazt/py/tt;

    invoke-virtual {v0}, Lcom/byazt/py/tt;->run()V

    :cond_0
    return-void
.end method

.method public c(Landroid/os/Handler;Lcom/byazt/nbs/tt;Lcom/byazt/py/tt;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/byazt/py/ve;->c:Landroid/os/Handler;

    .line 2
    iput-object p3, p0, Lcom/byazt/py/ve;->tt:Lcom/byazt/py/tt;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/byazt/nbs/tt;->x()Ljava/util/Map;

    move-result-object v0

    const-string v1, "serverBidding_timeout"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p2}, Lcom/byazt/nbs/tt;->da()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
