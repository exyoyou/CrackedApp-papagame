.class public Lcom/byazt/hz/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zq/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x62
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/hz/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/hz/c;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/byazt/hz/c;->c(Lcom/byazt/hz/c;Z)Z

    .line 2
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    invoke-virtual {v0}, Lcom/byazt/hz/uj;->qy()V

    .line 3
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    invoke-static {v0}, Lcom/byazt/hz/c;->c(Lcom/byazt/hz/c;)Lcom/byazt/bi/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    invoke-static {v0}, Lcom/byazt/hz/c;->c(Lcom/byazt/hz/c;)Lcom/byazt/bi/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/bi/c;->c()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    iget-object v2, v2, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/hr/u;->sp(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    iget-object v0, v0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    iget-object v1, v1, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    const-string v2, "show_listen"

    invoke-static {v1, v2}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "adSlotId\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    iget-object v1, v1, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 8
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    iget-object v1, v1, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    move-result v1

    invoke-static {v1}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    .line 9
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/byazt/hr/sl;->c()Lcom/byazt/hr/sl;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    iget-object v2, v1, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v1, v1, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/byazt/hr/sl;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    iget-object v1, v0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v0, v1}, Lcom/byazt/hz/da;->c(Lcom/byazt/iz/tt;)V

    .line 12
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    iget-object v1, v0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v0, v1}, Lcom/byazt/hz/da;->ve(Lcom/byazt/yl/ve;)V

    .line 13
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    iget-object v0, v0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdnName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    iget-object v2, v1, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v1, v1, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/byazt/xx/ve;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 16
    iget-object v2, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    iget-object v2, v2, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-static {v2}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    :goto_0
    move-object v8, v2

    move-wide v9, v3

    .line 19
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    iget-object v5, v0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    iget-object v6, v0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v0}, Lcom/byazt/hz/uj;->rl()Z

    move-result v7

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    .line 20
    invoke-virtual {v0}, Lcom/byazt/hz/tt;->gt()I

    move-result v12

    .line 21
    invoke-static/range {v5 .. v12}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JZI)V

    .line 22
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    iget-object v1, v0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v0, v0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-static {v1, v0}, Lcom/byazt/oi/ve;->c(Ljava/lang/String;Lcom/byazt/yl/ve;)V

    return-void
.end method

.method public c(Lcom/byazt/pp/c;)V
    .locals 13
    .param p1    # Lcom/byazt/pp/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 24
    iget-object v2, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    iget-object v2, v2, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-static {v2}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    :goto_0
    move-object v10, v2

    move-wide v11, v3

    .line 27
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    iget-object v5, v0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    iget-object v6, v0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    const/4 v8, 0x1

    .line 28
    invoke-virtual {v0}, Lcom/byazt/hz/uj;->rl()Z

    move-result v9

    move-object v7, p1

    .line 29
    invoke-static/range {v5 .. v12}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/pp/c;IILjava/lang/String;J)V

    .line 30
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    invoke-static {v0, p1}, Lcom/byazt/hz/c;->c(Lcom/byazt/hz/c;Lcom/byazt/pp/c;)V

    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/hz/c;->c(Lcom/byazt/hz/c;)Lcom/byazt/bi/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/hz/c;->c(Lcom/byazt/hz/c;)Lcom/byazt/bi/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/byazt/bi/c;->x()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public tt()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/hz/uj;->gr()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/byazt/hz/c;->c(Lcom/byazt/hz/c;)Lcom/byazt/bi/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/hz/c;->c(Lcom/byazt/hz/c;)Lcom/byazt/bi/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/byazt/bi/c;->tt()V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iget-object v2, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    sub-long/2addr v3, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v2, 0x0

    .line 48
    const-wide/16 v3, -0x1

    .line 49
    .line 50
    :goto_0
    move-object v8, v2

    .line 51
    move-wide v9, v3

    .line 52
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    .line 53
    .line 54
    iget-object v5, v0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 55
    .line 56
    iget-object v6, v0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/byazt/hz/uj;->rl()Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isClickListenRepeatOnce()Z

    .line 67
    .line 68
    .line 69
    move-result v11

    .line 70
    invoke-static/range {v5 .. v11}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JZ)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public uj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/hz/c;->c(Lcom/byazt/hz/c;)Lcom/byazt/bi/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/hz/c;->c(Lcom/byazt/hz/c;)Lcom/byazt/bi/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/byazt/bi/c;->sp()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public ve()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/hz/uj;->gu()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/byazt/hz/uj;->m:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/hz/da;->yv()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/byazt/hz/c;->c(Lcom/byazt/hz/c;)Lcom/byazt/bi/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/hz/c$4;->c:Lcom/byazt/hz/c;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/byazt/hz/c;->c(Lcom/byazt/hz/c;)Lcom/byazt/bi/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Lcom/byazt/bi/c;->ve()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method
