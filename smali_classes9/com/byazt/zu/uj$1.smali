.class public Lcom/byazt/zu/uj$1;
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
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zu/uj;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zu/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/zu/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zu/uj$1;->c:Lcom/byazt/zu/uj;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/uj$1;->c:Lcom/byazt/zu/uj;

    invoke-static {v0}, Lcom/byazt/zu/uj;->c(Lcom/byazt/zu/uj;)Lcom/byazt/ft/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/zu/uj$1;->c:Lcom/byazt/zu/uj;

    invoke-static {v0}, Lcom/byazt/zu/uj;->c(Lcom/byazt/zu/uj;)Lcom/byazt/ft/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ft/ve;->c()V

    :cond_0
    return-void
.end method

.method public c(JJ)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/zu/uj$1;->c:Lcom/byazt/zu/uj;

    invoke-static {v0}, Lcom/byazt/zu/uj;->c(Lcom/byazt/zu/uj;)Lcom/byazt/ft/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/byazt/zu/uj$1;->c:Lcom/byazt/zu/uj;

    invoke-static {v0}, Lcom/byazt/zu/uj;->c(Lcom/byazt/zu/uj;)Lcom/byazt/ft/ve;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/ft/ve;->c(JJ)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/pp/c;)V
    .locals 13

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcom/byazt/zu/uj$1;->c:Lcom/byazt/zu/uj;

    invoke-static {v2}, Lcom/byazt/zu/uj;->tt(Lcom/byazt/zu/uj;)Lcom/byazt/yl/ve;

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
    iget-object v0, p0, Lcom/byazt/zu/uj$1;->c:Lcom/byazt/zu/uj;

    invoke-static {v0}, Lcom/byazt/zu/uj;->tt(Lcom/byazt/zu/uj;)Lcom/byazt/yl/ve;

    move-result-object v5

    iget-object v0, p0, Lcom/byazt/zu/uj$1;->c:Lcom/byazt/zu/uj;

    invoke-static {v0}, Lcom/byazt/zu/uj;->ve(Lcom/byazt/zu/uj;)Lcom/byazt/ll/tt;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v5 .. v12}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/pp/c;IILjava/lang/String;J)V

    if-eqz p1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/byazt/zu/uj$1;->c:Lcom/byazt/zu/uj;

    invoke-static {v0}, Lcom/byazt/zu/uj;->c(Lcom/byazt/zu/uj;)Lcom/byazt/ft/ve;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/byazt/zu/uj$1;->c:Lcom/byazt/zu/uj;

    invoke-static {v0}, Lcom/byazt/zu/uj;->c(Lcom/byazt/zu/uj;)Lcom/byazt/ft/ve;

    move-result-object v0

    iget p1, p1, Lcom/byazt/pp/c;->c:I

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/byazt/ft/ve;->c(II)V

    :cond_1
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/uj$1;->c:Lcom/byazt/zu/uj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/zu/uj;->c(Lcom/byazt/zu/uj;)Lcom/byazt/ft/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/zu/uj$1;->c:Lcom/byazt/zu/uj;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/zu/uj;->c(Lcom/byazt/zu/uj;)Lcom/byazt/ft/ve;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/ft/ve;->n()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/uj$1;->c:Lcom/byazt/zu/uj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/zu/uj;->c(Lcom/byazt/zu/uj;)Lcom/byazt/ft/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/zu/uj$1;->c:Lcom/byazt/zu/uj;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/zu/uj;->c(Lcom/byazt/zu/uj;)Lcom/byazt/ft/ve;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/ft/ve;->tt()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public uj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/uj$1;->c:Lcom/byazt/zu/uj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/zu/uj;->c(Lcom/byazt/zu/uj;)Lcom/byazt/ft/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/zu/uj$1;->c:Lcom/byazt/zu/uj;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/zu/uj;->c(Lcom/byazt/zu/uj;)Lcom/byazt/ft/ve;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/ft/ve;->uj()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/uj$1;->c:Lcom/byazt/zu/uj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/zu/uj;->c(Lcom/byazt/zu/uj;)Lcom/byazt/ft/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/zu/uj$1;->c:Lcom/byazt/zu/uj;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/zu/uj;->c(Lcom/byazt/zu/uj;)Lcom/byazt/ft/ve;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/ft/ve;->ve()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
