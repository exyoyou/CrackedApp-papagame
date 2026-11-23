.class public Lcom/byazt/re/c;
.super Lcom/byazt/uph/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x539,
        0x14
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/ete/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/uph/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(JJ)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/byazt/re/c;->c:Lcom/byazt/ete/y;

    invoke-virtual {v0, p3, p4}, Lcom/byazt/ete/y;->yp(J)V

    .line 5
    iget-object v0, p0, Lcom/byazt/re/c;->c:Lcom/byazt/ete/y;

    invoke-virtual {v0}, Lcom/byazt/ete/y;->rl()J

    move-result-wide v1

    sub-long v1, p3, v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/ete/y;->i(J)V

    .line 6
    iget-object v0, p0, Lcom/byazt/re/c;->c:Lcom/byazt/ete/y;

    sub-long/2addr p3, p1

    invoke-virtual {v0, p3, p4}, Lcom/byazt/ete/y;->my(J)V

    return-void
.end method

.method private c(Lcom/byazt/yj/m;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/byazt/yj/m;->getHttpTime()Lcom/byazt/yj/x;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/byazt/re/c;->uj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/byazt/yj/x;->getStartRequestTime()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/byazt/yj/x;->getFirstFrameTime()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/byazt/re/c;->c(JJ)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/byazt/re/c;->uj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-object v2, p0, Lcom/byazt/re/c;->c:Lcom/byazt/ete/y;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/byazt/ete/y;->my()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    sub-long v3, v0, v3

    .line 18
    .line 19
    invoke-virtual {v2, v3, v4}, Lcom/byazt/ete/y;->x(J)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/byazt/re/c;->c:Lcom/byazt/ete/y;

    .line 23
    .line 24
    invoke-virtual {v2, v0, v1}, Lcom/byazt/ete/y;->u(J)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private uj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/re/c;->c:Lcom/byazt/ete/y;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/y;->qy()Z

    .line 6
    .line 7
    .line 8
    move-result v0

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


# virtual methods
.method public c()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/byazt/re/c;->n()V

    return-void
.end method

.method public c(Lcom/byazt/ete/y;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/re/c;->c:Lcom/byazt/ete/y;

    return-void
.end method

.method public c(Lcom/byazt/yj/m;Lcom/byazt/uph/c$tt;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/byazt/re/c;->c(Lcom/byazt/yj/m;)V

    .line 9
    invoke-super {p0, p1, p2}, Lcom/byazt/uph/c;->c(Lcom/byazt/yj/m;Lcom/byazt/uph/c$tt;)V

    return-void
.end method

.method public ve()Lcom/byazt/ete/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/re/c;->c:Lcom/byazt/ete/y;

    .line 2
    .line 3
    return-object v0
.end method
