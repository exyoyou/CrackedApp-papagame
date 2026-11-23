.class public Lcom/byazt/zu/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/me/x;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x397,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zu/tt;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zu/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/zu/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    invoke-static {v0}, Lcom/byazt/zu/tt;->c(Lcom/byazt/zu/tt;)Lcom/byazt/bf/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    invoke-static {v0}, Lcom/byazt/zu/tt;->c(Lcom/byazt/zu/tt;)Lcom/byazt/bf/c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    invoke-virtual {v0, v1}, Lcom/byazt/bf/c;->c(Lcom/byazt/nc/da;)V

    :cond_0
    return-void
.end method

.method public c(JJ)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    invoke-static {v0}, Lcom/byazt/zu/tt;->c(Lcom/byazt/zu/tt;)Lcom/byazt/bf/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    invoke-static {v0}, Lcom/byazt/zu/tt;->c(Lcom/byazt/zu/tt;)Lcom/byazt/bf/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/bf/c;->c(JJ)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/pp/c;)V
    .locals 13

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    invoke-static {v2}, Lcom/byazt/zu/tt;->tt(Lcom/byazt/zu/tt;)Lcom/byazt/yl/ve;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    move-result-object v2

    .line 6
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

    .line 7
    iget-object v0, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    invoke-static {v0}, Lcom/byazt/zu/tt;->tt(Lcom/byazt/zu/tt;)Lcom/byazt/yl/ve;

    move-result-object v5

    iget-object v0, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    invoke-static {v0}, Lcom/byazt/zu/tt;->ve(Lcom/byazt/zu/tt;)Lcom/byazt/ll/tt;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v5 .. v12}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/pp/c;IILjava/lang/String;J)V

    if-eqz p1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    invoke-static {v0}, Lcom/byazt/zu/tt;->c(Lcom/byazt/zu/tt;)Lcom/byazt/bf/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    invoke-static {v0}, Lcom/byazt/zu/tt;->c(Lcom/byazt/zu/tt;)Lcom/byazt/bf/c;

    move-result-object v0

    iget p1, p1, Lcom/byazt/pp/c;->c:I

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/byazt/bf/c;->c(II)V

    :cond_1
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/zu/tt;->c(Lcom/byazt/zu/tt;)Lcom/byazt/bf/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/zu/tt;->c(Lcom/byazt/zu/tt;)Lcom/byazt/bf/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/bf/c;->n(Lcom/byazt/nc/da;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public tt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/zu/tt;->c(Lcom/byazt/zu/tt;)Lcom/byazt/bf/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/zu/tt;->c(Lcom/byazt/zu/tt;)Lcom/byazt/bf/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/bf/c;->tt(Lcom/byazt/nc/da;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public uj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/zu/tt;->c(Lcom/byazt/zu/tt;)Lcom/byazt/bf/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/zu/tt;->c(Lcom/byazt/zu/tt;)Lcom/byazt/bf/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/bf/c;->uj(Lcom/byazt/nc/da;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public ve()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/zu/tt;->c(Lcom/byazt/zu/tt;)Lcom/byazt/bf/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/zu/tt;->c(Lcom/byazt/zu/tt;)Lcom/byazt/bf/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/zu/tt$1;->c:Lcom/byazt/zu/tt;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/bf/c;->ve(Lcom/byazt/nc/da;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
