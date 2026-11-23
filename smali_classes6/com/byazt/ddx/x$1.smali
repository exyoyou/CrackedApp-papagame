.class public Lcom/byazt/ddx/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ddx/i$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1e3,
        0x1e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ddx/x;->c(Lcom/byazt/ete/ic;Ljava/lang/String;ZZLcom/byazt/ddx/i$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic c:Lcom/byazt/ddx/i$c;

.field public final synthetic n:Lcom/byazt/ete/ic;

.field public final synthetic sp:Lcom/byazt/ddx/x;

.field public final synthetic tt:Z

.field public final synthetic uj:Z

.field public final synthetic ve:Ljava/lang/String;

.field public x:Z


# direct methods
.method public constructor <init>(Lcom/byazt/ddx/x;Lcom/byazt/ddx/i$c;ZLjava/lang/String;ZLcom/byazt/ete/ic;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ddx/x$1;->sp:Lcom/byazt/ddx/x;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ddx/x$1;->c:Lcom/byazt/ddx/i$c;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/byazt/ddx/x$1;->tt:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/ddx/x$1;->ve:Ljava/lang/String;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/byazt/ddx/x$1;->uj:Z

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/ddx/x$1;->n:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    iput-wide p7, p0, Lcom/byazt/ddx/x$1;->a:J

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/byazt/ddx/x$1;->x:Z

    .line 20
    .line 21
    return-void
.end method

.method private c(Ljava/lang/String;Z)V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/byazt/ddx/x$1;->n:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/byazt/ddx/x$1;->x:Z

    if-nez v1, :cond_3

    .line 25
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->nu()Z

    move-result v0

    .line 26
    iget-object v1, p0, Lcom/byazt/ddx/x$1;->n:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-virtual {v1}, Lcom/byazt/ete/nu;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 28
    :cond_1
    invoke-virtual {v1}, Lcom/byazt/ete/nu;->ve()I

    move-result v1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/byazt/ddx/x$1;->n:Lcom/byazt/ete/ic;

    invoke-static {v0, p1, p2}, Lcom/byazt/omf/or;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Z)Z

    :cond_3
    return-void
.end method

.method private c(ZLjava/lang/String;)V
    .locals 2

    .line 30
    new-instance v0, Lcom/byazt/ddx/x$1$1;

    const-string v1, "EventData"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/byazt/ddx/x$1$1;-><init>(Lcom/byazt/ddx/x$1;Ljava/lang/String;ZLjava/lang/String;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/byazt/bwm/n;->c(Lcom/byazt/bwm/sp;I)V

    return-void
.end method


# virtual methods
.method public c(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/ddx/x$1;->c:Lcom/byazt/ddx/i$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/byazt/ddx/i$c;->c(J)V

    :cond_0
    const/4 v0, 0x0

    const-string v1, "resume"

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/byazt/ddx/x$1;->c(ZLjava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/byazt/ddx/x$1;->tt:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/byazt/ddx/x$1;->ve:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/byazt/ddx/x$1;->uj:Z

    invoke-direct {p0, v0, v1}, Lcom/byazt/ddx/x$1;->c(Ljava/lang/String;Z)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object v0

    const-string v1, "dpl_reject_by_dialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    .line 7
    iget-object v0, p0, Lcom/byazt/ddx/x$1;->n:Lcom/byazt/ete/ic;

    iget-object v1, p0, Lcom/byazt/ddx/x$1;->ve:Ljava/lang/String;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/byazt/ddx/x$1;->a:J

    sub-long/2addr v2, v4

    const-string v4, "dpl_popup"

    .line 9
    invoke-static {v0, v1, v4, v2, v3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;J)V

    .line 10
    invoke-static {}, Lcom/byazt/ete/gu;->tt()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    const/4 p1, 0x2

    .line 11
    invoke-static {p1}, Lcom/byazt/cl/c;->c(I)V

    return-void

    :cond_2
    const/4 p1, 0x3

    .line 12
    invoke-static {p1}, Lcom/byazt/cl/c;->c(I)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/byazt/ddx/x$1;->c:Lcom/byazt/ddx/i$c;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0, p1}, Lcom/byazt/ddx/i$c;->c(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0, p1}, Lcom/byazt/ddx/x$1;->c(ZLjava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/byazt/ddx/x$1;->c:Lcom/byazt/ddx/i$c;

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0, p1}, Lcom/byazt/ddx/i$c;->c(Z)V

    .line 18
    :cond_0
    iput-boolean p1, p0, Lcom/byazt/ddx/x$1;->x:Z

    const-string v0, "stop"

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/byazt/ddx/x$1;->c(ZLjava/lang/String;)V

    .line 20
    iget-boolean p1, p0, Lcom/byazt/ddx/x$1;->x:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/byazt/ddx/x$1;->tt:Z

    if-nez p1, :cond_1

    .line 21
    iget-object p1, p0, Lcom/byazt/ddx/x$1;->ve:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/byazt/ddx/x$1;->uj:Z

    invoke-direct {p0, p1, v0}, Lcom/byazt/ddx/x$1;->c(Ljava/lang/String;Z)V

    .line 22
    :cond_1
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object p1

    const-string v0, "dpl_reject_by_dialog"

    const/4 v1, 0x0

    .line 23
    invoke-interface {p1, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    return-void
.end method
